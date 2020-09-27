import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql_typed/src/utils/common_builder.dart';
import 'package:gql_typed/src/utils/libs_urls.dart';
import 'package:gql_typed/src/utils/reserved.dart';
import 'package:gql_typed/src/utils/utils.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:gql_code_builder/source.dart';
import 'package:meta/meta.dart';
import 'package:strings/strings.dart';

import 'package:gql_typed/src/utils/scaler_mappings.dart';

Library buildTypesLibrary(SourceNode docSource, String fileName,
    {bool singleFile = false}) {
  try {
    return getTypesLibrary(docSource.flatDocument, fileName,
        singleFile: singleFile);
  } catch (e, stk) {
    print(e);
    print(stk);
  }
  return null;
}

Library getTypesLibrary(DocumentNode doc, String fileName,
    {bool singleFile = false}) {
  final objMemb = Map.fromEntries(doc.definitions
      .map((e) => e.accept(ObjectFiller()))
      .where((e) => e != null));

  doc.definitions.forEach((element) {
    element.accept(MembFiller(objMemb));
  });

  var unions = <UnionTypeDefinitionNode, List<ObjectTypeDefinitionNode>>{};

  objMemb.entries
      .where((element) => element.value.unions.isEmpty)
      .map((e) => e.key)
      .toList()
      .forEach((k) {
    objMemb.remove(k);
  });

  objMemb.forEach((key, value) {
    value.unions.forEach((u) {
      unions.putIfAbsent(u, () => []);
      unions[u].add(value.object);
    });
  });

  final unionsTypes = unions.entries
      .map((ent) => genUnionType(
            union: ent.key.name.value,
            members: ent.value.map((e) => e.name.value).toList(),
          ))
      .toList();

  final v = MyVis();
  final classes = doc.definitions
      .map((e) => e.accept(v))
      .where((e) => e != null)
      .expand((e) => e)
      .where((e) => e != null)
      .toList();

  if (classes.isEmpty && unionsTypes.isEmpty) return Library();

  return Library((b) => b.body
    ..addAll(singleFile
        ? []
        : [
            if (classes.isNotEmpty)
              Code("import 'package:json_annotation/json_annotation.dart';"),
            Code("import 'package:meta/meta.dart';"),
            if (classes.isNotEmpty)
              Code("import 'package:equatable/equatable.dart';"),
            // Code("part '${fileName}.freezed.dart';"),
            Code("part '${fileName}.g.dart';"),
          ])
    ..addAll([
      ...unionsTypes,
      ...classes,
    ]));
}

class Wrapper<T> {
  final T v;
  Wrapper(this.v);
}

class FieldArguments {
  final ObjectTypeDefinitionNode parent;
  final FieldDefinitionNode field;
  final List<InputValueDefinitionNode> args;
  FieldArguments({
    this.parent,
    this.field,
    this.args,
  });
}

class ObjectUnionMembership {
  final ObjectTypeDefinitionNode object;
  final List<UnionTypeDefinitionNode> unions;

  ObjectUnionMembership({
    @required this.object,
    @required this.unions,
  });
}

class ObjectFiller
    extends SimpleVisitor<MapEntry<String, ObjectUnionMembership>> {
  @override
  MapEntry<String, ObjectUnionMembership> visitObjectTypeDefinitionNode(
      ObjectTypeDefinitionNode node) {
    return MapEntry(
      node.name.value,
      ObjectUnionMembership(object: node, unions: []),
    );
  }
}

class MembFiller extends SimpleVisitor<void> {
  final Map<String, ObjectUnionMembership> objMemb;

  MembFiller(this.objMemb);
  @override
  void visitUnionTypeDefinitionNode(UnionTypeDefinitionNode node) {
    node.types.forEach((type) {
      objMemb[type.name.value].unions.add(node);
    });
  }
}

class MyVis extends SimpleVisitor<List<Spec>> {
  @override
  List<Spec> visitObjectTypeDefinitionNode(ObjectTypeDefinitionNode node) {
    final argClasses = <Spec>[];
    node.fields.forEach((element) {
      if (element.args != null && element.args.isNotEmpty) {
        argClasses.add(buildDataclass(
          name: node.name.value + capitalize(element.name.value) + "Args",
          fieldTypePairs: element.args
              .map((e) => FieldTypeAndNamePair(
                    getFieldType(e.type),
                    e.name.value,
                    e.type.isNonNull,
                  ))
              .toList(),
        ));
      }
    });
    return argClasses
        .followedBy(buildDataclass(
          name: node.name.value,
          interfaces: node.interfaces.map((e) => refer(e.name.value)).toList(),
          fieldTypePairs: node.fields
              .map((e) => FieldTypeAndNamePair(
                    getFieldType(e.type),
                    e.name.value,
                    e.type.isNonNull,
                  ))
              .toList(),
        ).toList())
        .toList();
    // return Class(
    //   (b) => b
    //     ..name = node.name.value
    //     ..abstract = true
    //     ..implements = ListBuilder([
    //       ...node.interfaces.map((e) => refer(e.name.value)),
    //     ])
    //     ..fields = ListBuilder(node.fields.map((e) => Field((b) {
    //           b.type = refer(getFieldType(e.type));
    //           b.name = e.name.value;
    //         }))),
    // );
  }

  @override
  List<Spec> visitInterfaceTypeDefinitionNode(
      InterfaceTypeDefinitionNode node) {
    return buildInterface(
      name: node.name.value,
      fieldTypePairs: node.fields
          .map((e) => FieldTypeAndNamePair(
                getFieldType(e.type),
                e.name.value,
                e.type.isNonNull,
              ))
          .toList(),
    ).toList();
  }

  // @override
  // Spec visitUnionTypeDefinitionNode(UnionTypeDefinitionNode node) {
  //   return Class(
  //     (b) => b
  //       ..abstract = true
  //       ..name = node.name.value + "Union",
  //   );
  // }

  @override
  List<Spec> visitEnumTypeDefinitionNode(EnumTypeDefinitionNode node) {
    return Enum((b) => b
      ..name = node.name.value
      ..values.addAll(node.values.map((e) => EnumValue(
            (b) => b
              ..annotations.add(refer("JsonValue", LibsUrls.jsonAnnotaion)
                  .call([literalString(e.name.value)]))
              ..name = e.name.value,
          )))).toList();
  }

  @override
  List<Spec> visitInputObjectTypeDefinitionNode(
      InputObjectTypeDefinitionNode node) {
    return buildDataclass(
      name: node.name.value,
      fieldTypePairs: node.fields
          .map((e) => FieldTypeAndNamePair(
                getFieldType(e.type),
                e.name.value,
                e.type.isNonNull,
              ))
          .toList(),
    ).toList();
  }
}

String switchCaseFromEnumValues(List<EnumValueDefinitionNode> values) {
  String s = "";
  values.forEach((element) {
    s += "case \'${element.name.value}\': return ${element.name.value};\n";
  });
  return s;
}

/**
@freezed
abstract class Person with _$Person {
  factory Person({ String name, int age }) = _Person;
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
 */

/*

@JsonSerializable()
class TEST {

  TEST();

  factory TEST.fromJson(Map<String, dynamic> json) => _$TESTFromJson(json);
  Map<String, dynamic> toJson() => _$TESTToJson(this);
}
*/

Spec genUnionType({
  String union,
  List<String> members,
}) {
  final typeCheckingMethods = members.map((member) => Method(
        (b) => b
          ..name = "is${member}"
          ..returns = refer("bool")
          ..type = MethodType.getter
          ..lambda = true
          ..body = Code("value is ${member}"),
      ));

  final typeCastMethods = members.map((member) => Method(
        (b) => b
          ..name = "as${member}"
          ..returns = refer(member)
          ..type = MethodType.getter
          ..lambda = true
          ..body = Code("value as ${member}"),
      ));

  final typeOrMethods = members.map((member) => Method(
        (b) => b
          ..name = "${camelize(member, true)}Or"
          ..returns = refer(member)
          ..requiredParameters = [
            Parameter((b) => b
              ..type = refer(member)
              ..name = "or")
          ].toListBuilder()
          ..lambda = true
          ..body = Code("is${member} ? as${member} : or"),
      ));

  return Class(
    (b) => b
      ..name = union
      ..fields.add(Field((b) => b
        ..name = "value"
        ..modifier = FieldModifier.final$
        ..type = refer("dynamic")))
      ..constructors.addAll([
        Constructor((b) => b
          ..requiredParameters.add(Parameter(
            (b) => b
              ..name = "value"
              ..toThis = true,
          ))),
        Constructor(
          (b) => b
            ..name = "fromJson"
            ..factory = true
            ..requiredParameters.add(Parameter(
              (b) => b
                ..name = "json"
                ..type = refer("Map<String, dynamic>"),
            ))
            ..body = Block.of([
              ...members.map((e) => Code(
                  'if (json["__typename"] == "${e}") return ${union}(${e}.fromJson(json));')),
              Code("return null;"),
            ]),
        ),
      ])
      ..methods.addAll([
        ...typeCheckingMethods,
        ...typeCastMethods,
        ...typeOrMethods,
        Method(
          (b) => b
            ..name = "toJson"
            ..returns = refer("Map<String, dynamic>")
            ..lambda = true
            ..body = Code("""when(
        ${members.map((e) => '${camelize(e, true)}: (${camelize(e, true)}) => ${camelize(e, true)}.toJson(),').join("\n")}
      )"""),
        ),
        Method(
          (b) => b
            ..name = "when"
            ..types.add(refer("T"))
            ..returns = refer("T")
            ..optionalParameters.addAll(members.map((e) => Parameter(
                  (b) => b
                    ..annotations.add(refer("required", LibsUrls.meta))
                    ..named = true
                    ..name = camelize(e, true)
                    ..type = refer("T Function(${e} ${camelize(e, true)})"),
                )))
            ..body = Block.of([
              ...members.map((e) =>
                  Code('if (is${e}) return ${camelize(e, true)}(as${e});')),
              Code("throw \"\${value.runtimeType} not mapped in when\";")
            ]),
        )
      ]),
  );
}
