import 'package:build/build.dart';
import 'package:gql_typed/src/types_builder/types_code_builder.dart';
import "package:gql_build/src/config.dart";
import "package:gql_build/src/utils/reader.dart";
import "package:gql_build/src/utils/writer.dart";

String typesExtension = ".types.gql.dart";

Builder typesBuilder(BuilderOptions options) => TypesBuilder(options);

class TypesBuilder implements Builder {
  final BuilderOptions options;

  TypesBuilder(this.options);

  @override
  Map<String, List<String>> get buildExtensions => {
        sourceExtension: [typesExtension],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    final configPath = AssetId.parse(options.config["config"]);
    final config = await buildStep.readAsString(configPath);
    final doc = await readDocument(buildStep);

    final library = buildTypesLibrary(
      doc,
      buildStep.inputId.path.split("/").last.split(".").first +
          typesExtension.replaceAll(".dart", ""),
    );

    return writeDocument(
      library,
      buildStep,
      typesExtension,
    );
  }
}
