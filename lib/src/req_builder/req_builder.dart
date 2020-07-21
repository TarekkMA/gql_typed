import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:gql_typed/src/req_builder/req_code_builder.dart';
import 'package:gql_typed/src/types_builder/types_code_builder.dart';
import "package:gql_build/src/config.dart";
import "package:gql_build/src/utils/reader.dart";
import "package:gql_build/src/utils/writer.dart";

String reqExtension = ".reqt.gql.dart";

Builder reqBuilder(BuilderOptions options) => RequestBuilder();

class RequestBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        sourceExtension: [reqExtension],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    try {
      final doc = await readDocument(buildStep);

      final library = buildReqLibrary(
        doc,
        buildStep.inputId.path.split("/").last.split(".").first +
            reqExtension.replaceAll(".dart", ""),
      );
      if (library == null) return;

      return writeDocument(
        library,
        buildStep,
        reqExtension,
      );
    } catch (e, stk) {
      print(e);
      print(stk);
    }
  }
}
