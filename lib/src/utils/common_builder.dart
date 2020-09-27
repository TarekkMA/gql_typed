import 'dart:developer';

import 'package:code_builder/code_builder.dart';
import 'package:gql_typed/src/utils/libs_urls.dart';
import 'package:gql_typed/src/utils/reserved.dart';
import 'package:gql_typed/src/utils/utils.dart';

Class buildDataclass({
  String name,
  List<FieldTypeAndNamePair> fieldTypePairs,
  List<Reference> interfaces,
}) =>
    dataclassBuilder(
      name: name,
      fieldTypePairs: fieldTypePairs,
      interfaces: interfaces,
    ).build();

ClassBuilder dataclassBuilder({
  String name,
  List<FieldTypeAndNamePair> fieldTypePairs,
  List<Reference> interfaces,
}) {
  List<Expression> jsonConverters = [];

  final fields = fieldTypePairs
      .map((f) {
        final firstConfig = f.type.scalerConfig.firstOrNull;
        final stringType = f.type.type;
        jsonConverters.addAll(
            f.type.scalerConfig.where((e) => e.converterImport != null).map(
                  (e) =>
                      refer("\$${e.dartName}JsonConverter", e.converterImport),
                ));

        return Field(
          (b) => b
            ..modifier = FieldModifier.final$
            ..name = escapeReserved(f.name)
            ..type = refer(stringType, firstConfig?.typeImport)
            ..annotations = <Expression>[
              refer('JsonKey', LibsUrls.jsonAnnotaion).call([], {
                if (isReserved(f.name)) "name": literalString(f.name),
                if (firstConfig?.parserImport != null) ...{
                  "fromJson": refer("\$${firstConfig.dartName}FromJson",
                      firstConfig.parserImport),
                  "toJson": refer("\$${firstConfig.dartName}ToJson",
                      firstConfig.parserImport),
                }
              }),
            ].toListBuilder(),
        );
      })
      .toList()
      .toListBuilder();

  final parameters = fieldTypePairs
      .map((f) => Parameter(
            (b) => b
              ..name = escapeReserved(f.name)
              //..type = refer(f.type)
              ..toThis = true
              ..named = true
              ..annotations = <Expression>[
                if (f.required) refer("required", LibsUrls.meta)
              ].toListBuilder(),
          ))
      .toList()
      .toListBuilder();

  /*
        @override
  List<Object> get props => throw UnimplementedError();
  */

  final propsMethod = Method(
    (b) => b
      ..annotations = [refer("override")].toListBuilder()
      ..name = "props"
      ..type = MethodType.getter
      ..lambda = true
      ..returns = refer("List<Object>")
      ..body = Code("[" +
          fieldTypePairs.map((e) => escapeReserved(e.name)).join(",") +
          "]"),
  );

//@override
//  bool get stringify => true;
  final stringify = Method((b) => b
    ..annotations = [refer("override")].toListBuilder()
    ..name = "stringify"
    ..type = MethodType.getter
    ..lambda = true
    ..returns = refer("bool")
    ..body = Code("true"));

  final copyWithMehtod = Method(
    (b) => b
      ..name = "copyWith"
      ..returns = refer(name)
      ..optionalParameters.addAll(fieldTypePairs.map((e) => Parameter((b) => b
        ..named = true
        ..name = escapeReserved(e.name)
        ..type = refer(e.type.type))))
      ..lambda = true
      ..body = refer(name).call(
          [],
          Map.fromEntries(fieldTypePairs.map((e) => MapEntry(
              escapeReserved(e.name),
              refer(escapeReserved(e.name))
                  .ifNullThen(refer("this.${escapeReserved(e.name)}")))))).code,
  );

  return ClassBuilder()
    ..name = name
    ..annotations = [
      refer("JsonSerializable", LibsUrls.jsonAnnotaion).call(
          [], {"includeIfNull": literalFalse, "explicitToJson": literalTrue}),
      ...jsonConverters,
    ].toListBuilder()
    ..extend = refer("Equatable", LibsUrls.equatable)
    ..fields = fields
    ..implements = interfaces?.toListBuilder()
    ..constructors = [
      Constructor(
        (b) => b
          ..constant = true
          ..optionalParameters = parameters,
      ),
      Constructor(
        (b) => b
          ..factory = true
          ..lambda = true
          ..name = "fromJson"
          ..body = Code("_\$${name}FromJson(json)")
          ..requiredParameters = [
            Parameter((b) => b
              ..name = "json"
              ..type = refer("Map<String, dynamic>"))
          ].toListBuilder(),
      )
    ].toListBuilder()
    ..methods = [
      Method(
        (b) => b
          ..name = "toJson"
          ..lambda = true
          ..returns = refer("Map<String, dynamic>")
          ..body = Code("_\$${name}ToJson(this)"),
      ),
      copyWithMehtod,
      propsMethod,
      stringify,
    ].toListBuilder();
}

Class buildInterface({
  String name,
  List<FieldTypeAndNamePair> fieldTypePairs,
}) {
  final fields = fieldTypePairs
      .map((f) {
        final firstConfig = f.type.scalerConfig.firstOrNull;
        final stringType = f.type.type;

        return Field((b) => b
          ..modifier = FieldModifier.final$
          ..name = escapeReserved(f.name)
          ..type = refer(stringType, firstConfig?.typeImport));
      })
      .toList()
      .toListBuilder();

  final parameters = fieldTypePairs
      .map((f) => Parameter(
            (b) => b
              ..name = escapeReserved(f.name)
              //..type = refer(f.type)
              ..toThis = true
              ..named = true
              ..annotations = <Expression>[
                if (f.required) refer("required", LibsUrls.meta)
              ].toListBuilder(),
          ))
      .toList()
      .toListBuilder();

  return (ClassBuilder()
        ..name = name
        ..fields = fields
        ..abstract = true
        ..constructors = [
          Constructor(
            (b) => b
              ..constant = true
              ..optionalParameters = parameters,
          ),
        ].toListBuilder())
      .build();
}
