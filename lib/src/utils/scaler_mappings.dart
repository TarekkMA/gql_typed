import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:yaml/yaml.dart';

class ScalerConfig {
  final String dartName;
  final String typeImport;
  final String parserImport;
  final String converterImport;
  ScalerConfig(
    this.dartName, {
    this.typeImport,
    this.parserImport,
    this.converterImport,
  }) : assert(!(parserImport != null && converterImport != null),
            "only define a parser or a converter per type");

  static ScalerConfig fromMap(YamlMap map) => ScalerConfig(
        map['dart_name'],
        typeImport: map['type_import'],
        parserImport: map['parser_import'],
        converterImport: map['converter_import'],
      );
}

final Map<String, ScalerConfig> scalerTypesMapping = {
  "Int": ScalerConfig("int"),
  "Float": ScalerConfig("double"),
  "String": ScalerConfig("String"),
  "Boolean": ScalerConfig("bool"),
  "ID": ScalerConfig("String"),
};
