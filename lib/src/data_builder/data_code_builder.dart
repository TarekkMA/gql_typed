import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql_typed/src/types_builder/types_code_builder.dart';
import 'package:gql_typed/src/utils/common_builder.dart';
import 'package:gql_typed/src/utils/reserved.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:gql_code_builder/source.dart';
import 'package:meta/meta.dart';
import 'package:strings/strings.dart';
import 'package:gql_typed/src/utils/utils.dart';

import 'package:gql_typed/src/utils/scaler_mappings.dart';

Library buildDataLibrary(SourceNode docSource, SourceNode schemaSource,
    String fileName, String schemaTypesFiles,
    {bool singleFile = false}) {
  try {
    return getDataLibrary(docSource.flatDocument, schemaSource.flatDocument,
        fileName, schemaTypesFiles,
        singleFile: singleFile);
  } catch (e, stk) {
    print(e);
    print(stk);
  }
  return null;
}

Library getDataLibrary(DocumentNode doc, DocumentNode schema, String fileName,
    String schemaTypesFiles,
    {bool singleFile = false}) {
  final dataClasses = doc.definitions
      .whereType<OperationDefinitionNode>()
      .map(
        (op) => _buildOperationDataClass(
          op,
          schema,
        ),
      )
      .where((c) => c.fields.isNotEmpty)
      .toList();
  if (dataClasses.isEmpty) return Library();
  return Library((b) => b.body
    ..addAll((singleFile)
        ? []
        : [
            Code("""
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import '${schemaTypesFiles}';
"""),
            Code("part '${fileName}.g.dart';"),
          ])
    ..addAll(dataClasses));
}

Class _buildOperationDataClass(
  OperationDefinitionNode node,
  DocumentNode schema,
) {
  final b = dataclassBuilder(
      name: "${node.name.value}Response",
      fieldTypePairs: node.selectionSet.selections
          .map((s) => getFieldInfoFromSelection(node, s, schema))
          .toList());

  b.methods.add(Method(
    (b) => b
      ..name = "data"
      ..type = MethodType.getter
      ..returns = refer("Map<String, dynamic>")
      ..lambda = true
      ..body = Code("toJson()"),
  ));

  return b.build();
}

FieldTypeAndNamePair getFieldInfoFromSelection(
    OperationDefinitionNode op, SelectionNode s, DocumentNode schema) {
  if (s is FieldNode) {
    final type = schema.definitions
        .whereType<ObjectTypeDefinitionNode>()
        .where(
            (element) => element.name.value == capitalize(op.type.stringValue))
        .first
        .fields
        .where((element) => element.name.value == s.name.value)
        .first
        .type;
    return FieldTypeAndNamePair(
      getFieldType(type),
      s.name.value,
      type.isNonNull,
    );
  }
  return null;
}
