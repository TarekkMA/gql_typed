import 'dart:developer';

import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql_typed/ferry_types_generator.dart';
import 'package:gql_typed/src/data_builder/data_code_builder.dart';
import 'package:gql_typed/src/ferry_types_generator/ferry_ast.dart';
import 'package:gql_typed/src/ferry_types_generator/ferry_op.dart';
import 'package:gql_typed/src/ferry_types_generator/ferry_writer.dart';
import 'package:gql_typed/src/req_builder/req_code_builder.dart';
import 'package:gql_typed/src/types_builder/types_code_builder.dart';
import 'package:gql_typed/src/utils/scaler_mappings.dart';
import 'package:gql_typed/src/var_builder/var_code_builder.dart';
import 'package:gql/ast.dart';
import "package:gql_build/src/config.dart";
import "package:gql_build/src/utils/reader.dart";
import 'package:gql_code_builder/source.dart';

const ferryTypesGeneratorExtension = ".all.gql.dart";

Builder ferryTypesGeneratorBuilder(BuilderOptions options) {
  try {
    if (options.config.containsKey("scalers")) {
      (options.config["scalers"] as List).forEach((s) {
        scalerTypesMapping[s["gql_name"]] = ScalerConfig.fromMap(s.value);
      });
    }
    return FerryTypesBuilder(
      AssetId.parse(options.config["schema"] as String),
      options.config["output"],
    );
  } catch (e, stk) {
    print(e);
    print(stk);
  }
  return null;
}

class FerryTypesBuilder implements Builder {
  final AssetId schemaId;
  final String outDir;

  FerryTypesBuilder(this.schemaId, this.outDir);

  @override
  Map<String, List<String>> get buildExtensions => {
        sourceExtension: [ferryTypesGeneratorExtension],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    try {
      final doc = (await readDocument(buildStep));
      final schema = await readDocument(buildStep, schemaId);

      final fileName = buildStep.inputId.path.split("/").last.split(".").first +
          ferryTypesGeneratorExtension.replaceAll(".dart", "");
      final schemaName =
          schemaId.changeExtension(ferryTypesGeneratorExtension).uri.toString();

      final typesLibrary = buildTypesLibrary(
        doc,
        fileName,
        singleFile: true,
      );
      final dataLibrary = buildDataLibrary(
        doc,
        schema,
        fileName,
        schemaName,
        singleFile: true,
      );
      final varsLibrary = buildVarsLibrary(
        doc,
        schema,
        fileName,
        schemaName,
        singleFile: true,
      );
      final astLibrary = buildAstLibrary(doc);

      final opLibrary = buildOpLibrary(doc);
      final reqLibrary = buildReqLibrary(
        doc,
        fileName,
        opPrefix: "\$op_",
        singleFile: true,
      );

      var shouldHavePart;
      try {
        shouldHavePart = typesLibrary.body.isNotEmpty ||
            varsLibrary.body.isNotEmpty ||
            dataLibrary.body.isNotEmpty;
      } catch (a) {
        debugger();
      }
      try {
        final parsersConverters = scalerTypesMapping.entries
            .where((e) =>
                e.value.parserImport != null || e.value.converterImport != null)
            .map((e) => e.value.parserImport ?? e.value.converterImport)
            .toList();

        return writeDocument(
          Library((b) => b
            ..body.addAll([
              Code("""
import '${schemaName}';
"""),
              if (shouldHavePart) Code("part '${fileName}.g.dart';"),
              ...typesLibrary.body,
              ...astLibrary.body,
              ...opLibrary.body,
              ...dataLibrary.body,
              ...varsLibrary.body,
              ...reqLibrary.body,
            ])),
          buildStep,
          ferryTypesGeneratorExtension,
          doNotPrefix: parsersConverters,
        );
      } catch (e, stk) {
        print(e);
        print(stk);
      }
    } catch (e, stk) {
      print(e);
      print(stk);
    }
  }
}
