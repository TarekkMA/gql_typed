import 'package:build/build.dart';
import 'package:gql_typed/ferry_types_generator.dart';
import 'package:gql_typed/src/types_builder/types_code_builder.dart';
import 'package:gql_typed/src/var_builder/var_code_builder.dart';
import "package:gql_build/src/config.dart";
import "package:gql_build/src/utils/reader.dart";
import "package:gql_build/src/utils/writer.dart";

const vartExtension = ".vart.gql.dart";

Builder varsBuilder(BuilderOptions options) => VarsBuilder(AssetId.parse(
      options.config["schema"] as String,
    ));

class VarsBuilder implements Builder {
  final AssetId schemaId;

  VarsBuilder(this.schemaId);

  @override
  Map<String, List<String>> get buildExtensions => {
        sourceExtension: [vartExtension],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    final doc = await readDocument(buildStep);
    final schema = await readDocument(buildStep, schemaId);

    final library = buildVarsLibrary(
      doc,
      schema,
      buildStep.inputId.path.split("/").last.split(".").first +
          vartExtension.replaceAll(".dart", ""),
      schemaId.changeExtension(typesExtension).uri.toString(),
    );

    return writeDocument(library, buildStep, vartExtension);
  }
}
