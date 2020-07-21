import 'package:build/build.dart';
import 'package:gql_typed/ferry_types_generator.dart';
import 'package:gql_typed/src/data_builder/data_code_builder.dart';
import 'package:gql_typed/src/types_builder/types_code_builder.dart';
import 'package:gql_typed/src/var_builder/var_code_builder.dart';
import "package:gql_build/src/config.dart";
import "package:gql_build/src/utils/reader.dart";
import "package:gql_build/src/utils/writer.dart";

const datatExtension = ".datat.gql.dart";

Builder dataBuilder(BuilderOptions options) {
  try {
    return DataBuilder(AssetId.parse(
      options.config["schema"] as String,
    ));
  } catch (e, stk) {
    print(e);
    print(stk);
  }
  return null;
}

class DataBuilder implements Builder {
  final AssetId schemaId;

  DataBuilder(this.schemaId);

  @override
  Map<String, List<String>> get buildExtensions => {
        sourceExtension: [datatExtension],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    final doc = await readDocument(buildStep);
    final schema = await readDocument(buildStep, schemaId);

    final library = buildDataLibrary(
      doc,
      schema,
      buildStep.inputId.path.split("/").last.split(".").first +
          datatExtension.replaceAll(".dart", ""),
      schemaId.changeExtension(typesExtension).uri.toString(),
    );

    return writeDocument(library, buildStep, datatExtension);
  }
}
