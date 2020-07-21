import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:gql_code_builder/source.dart';
import 'package:meta/meta.dart';
import 'package:strings/strings.dart';

import 'package:gql_typed/src/utils/scaler_mappings.dart';
import 'package:gql_typed/src/utils/utils.dart';

Library buildReqLibrary(
  SourceNode docSource,
  String fileName, {
  String astPrefix = "",
  String opPrefix = "",
  bool singleFile = false,
}) {
  final reqB = _ReqBuilder(
    astPrefix: astPrefix,
    opPrefix: opPrefix,
    singleFile: singleFile,
  );

  try {
    return Library(
      (b) => b.body
        ..addAll(
          reqB._buildOperationReqClasses(docSource.flatDocument),
        ),
    );
  } catch (e, stk) {
    print(e);
    print(stk);
  }
  return null;
}

class _ReqBuilder {
  final String astPrefix;
  final String opPrefix;
  final bool singleFile;
  _ReqBuilder({
    this.astPrefix = "",
    this.opPrefix = "",
    this.singleFile = false,
  });

  List<Class> _buildOperationReqClasses(DocumentNode doc) => doc.definitions
      .whereType<OperationDefinitionNode>()
      .map(_buildOperationReqClass)
      .toList();

  Class _buildOperationReqClass(OperationDefinitionNode node) {
    final name =
        "${node.name.value}${capitalize(node.type.stringValue)}Request";
    final dataTypeRef =
        refer("${node.name.value}Response", singleFile ? null : "#datat");
    final gqlClientUrl = "package:ferry/ferry.dart";

    return Class(
      (b) => b
        ..name = name
        ..extend = TypeReference(
          (b) => b
            ..symbol = "QueryRequest"
            ..url = gqlClientUrl
            ..types.add(dataTypeRef),
        )
        ..constructors = ListBuilder<Constructor>([
          _buildFactoryConstructor(node),
          _buildPrivateConstructor(node),
        ])
        ..methods = ListBuilder<Method>(
          <Method>[
            _buildParse(node),
            _buildCopyWith(node),
          ],
        ),
    );
  }

  Constructor _buildFactoryConstructor(OperationDefinitionNode node) {
    final name = nameOfRequest(node);
    final haveVars = node.variableDefinitions.isNotEmpty;
    final varType =
        refer("${node.name.value}Vars", singleFile ? null : "#vart");
    final dataTypeRef =
        refer("${node.name.value}Response", singleFile ? null : "#datat");
    final gqlClientUrl = "package:ferry/ferry.dart";

    return Constructor(
      (b) => b
        ..factory = true
        ..optionalParameters = ListBuilder<Parameter>([
          if (haveVars)
            Parameter((b) => b
              ..named = true
              ..name = "variables"
              ..type = varType),
          Parameter(
            (b) => b
              ..named = true
              ..name = "queryId"
              ..type = refer("String"),
          ),
          Parameter(
            (b) => b
              ..named = true
              ..name = "updateResult"
              ..type = FunctionType(
                (b) => b
                  ..returnType = dataTypeRef
                  ..requiredParameters = ListBuilder<Reference>([
                    dataTypeRef,
                    dataTypeRef,
                  ]),
              ),
          ),
          Parameter(
            (b) => b
              ..named = true
              ..name = "optimisticResponse"
              ..type = refer("Map<String, dynamic>"),
          ),
          Parameter(
            (b) => b
              ..named = true
              ..name = "updateCacheHandlerKey",
          ),
          Parameter(
            (b) => b
              ..named = true
              ..name = "context"
              ..type = refer("Context", "package:gql_exec/gql_exec.dart"),
          ),
          Parameter(
            (b) => b
              ..named = true
              ..name = "fetchPolicy"
              ..type = refer("FetchPolicy", gqlClientUrl),
          ),
        ])
        ..lambda = true
        ..body = refer(name).property("_").call(
          [],
          {
            "operation":
                refer(opPrefix + node.name.value, singleFile ? null : "#op"),
            if (haveVars) "variables": refer("variables.toJson()"),
            "context": refer("context").notEqualTo(
              refer("null").conditional(
                refer("context"),
                refer("Context", "package:gql_exec/gql_exec.dart")
                    .constInstance([]),
              ),
            ),
            "queryId": refer("queryId"),
            "updateResult": refer("updateResult"),
            "optimisticResponse": refer("optimisticResponse"),
            "updateCacheHandlerKey": refer("updateCacheHandlerKey"),
            "fetchPolicy": refer("fetchPolicy"),
          },
        ).code,
    );
  }

  List<Parameter> _buildParams(OperationDefinitionNode node) {
    final dataTypeRef =
        refer("${node.name.value}Response", singleFile ? null : "#datat");
    final gqlClientUrl = "package:ferry/ferry.dart";

    return [
      Parameter(
        (b) => b
          ..named = true
          ..name = "operation"
          ..type = refer("Operation", "package:gql_exec/gql_exec.dart"),
      ),
      Parameter(
        (b) => b
          ..named = true
          ..name = "variables"
          ..type = refer("Map<String, dynamic>"),
      ),
      Parameter(
        (b) => b
          ..named = true
          ..name = "context"
          ..type = refer("Context", "package:gql_exec/gql_exec.dart"),
      ),
      Parameter(
        (b) => b
          ..named = true
          ..name = "queryId"
          ..type = refer("String"),
      ),
      Parameter(
        (b) => b
          ..named = true
          ..name = "updateResult"
          ..type = FunctionType(
            (b) => b
              ..returnType = dataTypeRef
              ..requiredParameters = ListBuilder<Reference>([
                dataTypeRef,
                dataTypeRef,
              ]),
          ),
      ),
      Parameter(
        (b) => b
          ..named = true
          ..name = "optimisticResponse"
          ..type = refer("Map<String, dynamic>"),
      ),
      Parameter(
        (b) => b
          ..named = true
          ..name = "updateCacheHandlerKey"
          ..type = refer("String"),
      ),
      Parameter(
        (b) => b
          ..named = true
          ..name = "fetchPolicy"
          ..type = refer("FetchPolicy", gqlClientUrl),
      ),
    ];
  }

  Constructor _buildPrivateConstructor(OperationDefinitionNode node) {
    return Constructor(
      (b) => b
        ..name = "_"
        ..optionalParameters = ListBuilder<Parameter>(_buildParams(node))
        ..lambda = true
        ..initializers = ListBuilder<Code>([
          refer("super").call(
            [],
            {
              "operation": refer("operation"),
              "variables": refer("variables"),
              "context": refer("context"),
              "queryId": refer("queryId"),
              "updateResult": refer("updateResult"),
              "optimisticResponse": refer("optimisticResponse"),
              "updateCacheHandlerKey": refer("updateCacheHandlerKey"),
              "fetchPolicy": refer("fetchPolicy"),
            },
          ).code
        ]),
    );
  }

  Method _buildCopyWith(OperationDefinitionNode node) => Method(
        (b) => b
          ..annotations.add(refer("override"))
          ..returns = refer(nameOfRequest(node))
          ..name = "copyWith"
          ..optionalParameters = ListBuilder<Parameter>(_buildParams(node))
          ..lambda = true
          ..body = refer(nameOfRequest(node)).property("_").call(
            [],
            {
              "operation": CodeExpression(Code("operation ?? this.operation")),
              "variables": CodeExpression(Code("variables ?? this.variables")),
              "context": CodeExpression(Code("context ?? this.context")),
              "queryId": CodeExpression(Code("queryId ?? this.queryId")),
              "updateResult":
                  CodeExpression(Code("updateResult ?? this.updateResult")),
              "optimisticResponse": CodeExpression(
                  Code("optimisticResponse ?? this.optimisticResponse")),
              "updateCacheHandlerKey": CodeExpression(
                  Code("updateCacheHandlerKey ?? this.updateCacheHandlerKey")),
              "fetchPolicy":
                  CodeExpression(Code("fetchPolicy ?? this.fetchPolicy")),
            },
          ).code,
      );

  Method _buildParse(OperationDefinitionNode node) => Method(
        (b) => b
          ..annotations.add(refer("override"))
          ..returns =
              refer("${node.name.value}Response", singleFile ? null : "#datat")
          ..name = "parseData"
          ..requiredParameters.add(
            Parameter(
              (b) => b
                ..type = refer("Map<String, dynamic>")
                ..name = "json",
            ),
          )
          ..lambda = true
          ..body = refer(
            "${node.name.value}Response",
            singleFile ? null : "#datat",
          ).newInstanceNamed("fromJson", [refer("json")]).code,
      );

  String nameOfRequest(OperationDefinitionNode node) =>
      "${node.name.value}${capitalize(node.type.stringValue)}Request";
}
