import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql_typed/src/types_builder/types_code_builder.dart';
import 'package:gql_typed/src/utils/common_builder.dart';
import 'package:gql_typed/src/utils/reserved.dart';
import 'package:gql_typed/src/utils/utils.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:gql_code_builder/source.dart';
import 'package:meta/meta.dart';
import 'package:strings/strings.dart';

import 'package:gql_typed/src/utils/scaler_mappings.dart';

Library buildVarsLibrary(SourceNode docSource, SourceNode schemaSource,
    String fileName, String schemaTypesFiles,
    {bool singleFile = false}) {
  try {
    return getVarsLibrary(docSource.flatDocument, schemaSource.flatDocument,
        fileName, schemaTypesFiles,
        singleFile: singleFile);
  } catch (e, stk) {
    print(e);
    print(stk);
  }
  return null;
}

Library getVarsLibrary(DocumentNode doc, DocumentNode schema, String fileName,
    String schemaTypesFiles,
    {bool singleFile = false}) {
  final varClasses = doc.definitions
      .whereType<OperationDefinitionNode>()
      .map(
        (op) => _buildOperationVarClass(
          op,
          schema,
        ),
      )
      .where((c) => c.fields.isNotEmpty)
      .toList();
  if (varClasses.isEmpty) return Library();
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
    ..addAll(varClasses));
}

Class _buildOperationVarClass(
  OperationDefinitionNode node,
  DocumentNode schema,
) {
  final b = dataclassBuilder(
      name: "${node.name.value}Vars",
      fieldTypePairs: node.variableDefinitions
          .map((e) => FieldTypeAndNamePair(
                getFieldType(e.type),
                e.variable.name.value,
                false,
              ))
          .toList());

  return b.build();
}
