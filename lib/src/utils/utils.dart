import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';

import 'package:gql_typed/src/utils/scaler_mappings.dart';

extension ListExt<T> on List<T> {
  ListBuilder<T> toListBuilder() => ListBuilder(this);
  T get firstOrNull => (this != null && length >= 1) ? first : null;
}

extension SpecUtils on Spec {
  List<Spec> toList() => [this];
}

class FieldTypeAndNamePair {
  final TypeConfig type;
  final String name;
  final bool required;
  final String defValue;

  FieldTypeAndNamePair([this.type, this.name, this.required, this.defValue]);
}

class TypeConfig {
  final String type;
  final List<ScalerConfig> scalerConfig;

  TypeConfig(this.type, this.scalerConfig);
}

TypeConfig getFieldType(TypeNode typeNode) {
  String typeStr;
  if (typeNode is NamedTypeNode) {
    typeStr = typeNode.name.value;
    if (scalerTypesMapping.containsKey(typeStr)) {
      final s = scalerTypesMapping[typeStr];
      return TypeConfig(s.dartName, [s]);
    }
    return TypeConfig(typeStr, []);
  } else if (typeNode is ListTypeNode) {
    final itype = getFieldType(typeNode.type);
    typeStr = "List<${itype.type}>";
    return TypeConfig(typeStr, [...itype.scalerConfig]);
  }
}

extension OpTyExt on OperationType {
  String get stringValue {
    switch (this) {
      case OperationType.query:
        return "Query";
        break;
      case OperationType.mutation:
        return "mutation";
        break;
      case OperationType.subscription:
        return "Subscription";
        break;
      default:
        return "";
    }
  }
}
