// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:equatable/equatable.dart' as _i2;
import 'package:meta/meta.dart' as _i3;
import 'package:example/gql_scalers.dart';
import 'package:gql/ast.dart' as _i4;
import 'package:example/schema.all.gql.dart';
part 'schema.all.gql.g.dart';

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddAttackInput extends _i2.Equatable {
  const AddAttackInput({this.name, this.type, this.damage});

  factory AddAttackInput.fromJson(Map<String, dynamic> json) =>
      _$AddAttackInputFromJson(json);

  @_i1.JsonKey()
  final String name;

  @_i1.JsonKey()
  final String type;

  @_i1.JsonKey()
  final int damage;

  Map<String, dynamic> toJson() => _$AddAttackInputToJson(this);
  AddAttackInput copyWith({String name, String type, int damage}) =>
      AddAttackInput(
          name: name ?? this.name,
          type: type ?? this.type,
          damage: damage ?? this.damage);
  @override
  List<Object> get props => [name, type, damage];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddAttackPayloadAttackArgs extends _i2.Equatable {
  const AddAttackPayloadAttackArgs({this.order, this.first, this.offset});

  factory AddAttackPayloadAttackArgs.fromJson(Map<String, dynamic> json) =>
      _$AddAttackPayloadAttackArgsFromJson(json);

  @_i1.JsonKey()
  final AttackOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$AddAttackPayloadAttackArgsToJson(this);
  AddAttackPayloadAttackArgs copyWith(
          {AttackOrder order, int first, int offset}) =>
      AddAttackPayloadAttackArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddAttackPayload extends _i2.Equatable {
  const AddAttackPayload({this.attack, this.numUids});

  factory AddAttackPayload.fromJson(Map<String, dynamic> json) =>
      _$AddAttackPayloadFromJson(json);

  @_i1.JsonKey()
  final List<Attack> attack;

  @_i1.JsonKey()
  final int numUids;

  Map<String, dynamic> toJson() => _$AddAttackPayloadToJson(this);
  AddAttackPayload copyWith({List<Attack> attack, int numUids}) =>
      AddAttackPayload(
          attack: attack ?? this.attack, numUids: numUids ?? this.numUids);
  @override
  List<Object> get props => [attack, numUids];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonAttackInput extends _i2.Equatable {
  const AddPokemonAttackInput({this.fast, this.special});

  factory AddPokemonAttackInput.fromJson(Map<String, dynamic> json) =>
      _$AddPokemonAttackInputFromJson(json);

  @_i1.JsonKey()
  final List<AttackRef> fast;

  @_i1.JsonKey()
  final List<AttackRef> special;

  Map<String, dynamic> toJson() => _$AddPokemonAttackInputToJson(this);
  AddPokemonAttackInput copyWith(
          {List<AttackRef> fast, List<AttackRef> special}) =>
      AddPokemonAttackInput(
          fast: fast ?? this.fast, special: special ?? this.special);
  @override
  List<Object> get props => [fast, special];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonAttackPayloadPokemonAttackArgs extends _i2.Equatable {
  const AddPokemonAttackPayloadPokemonAttackArgs({this.first, this.offset});

  factory AddPokemonAttackPayloadPokemonAttackArgs.fromJson(
          Map<String, dynamic> json) =>
      _$AddPokemonAttackPayloadPokemonAttackArgsFromJson(json);

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() =>
      _$AddPokemonAttackPayloadPokemonAttackArgsToJson(this);
  AddPokemonAttackPayloadPokemonAttackArgs copyWith({int first, int offset}) =>
      AddPokemonAttackPayloadPokemonAttackArgs(
          first: first ?? this.first, offset: offset ?? this.offset);
  @override
  List<Object> get props => [first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonAttackPayload extends _i2.Equatable {
  const AddPokemonAttackPayload({this.pokemonAttack, this.numUids});

  factory AddPokemonAttackPayload.fromJson(Map<String, dynamic> json) =>
      _$AddPokemonAttackPayloadFromJson(json);

  @_i1.JsonKey()
  final List<PokemonAttack> pokemonAttack;

  @_i1.JsonKey()
  final int numUids;

  Map<String, dynamic> toJson() => _$AddPokemonAttackPayloadToJson(this);
  AddPokemonAttackPayload copyWith(
          {List<PokemonAttack> pokemonAttack, int numUids}) =>
      AddPokemonAttackPayload(
          pokemonAttack: pokemonAttack ?? this.pokemonAttack,
          numUids: numUids ?? this.numUids);
  @override
  List<Object> get props => [pokemonAttack, numUids];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonDimensionInput extends _i2.Equatable {
  const AddPokemonDimensionInput({this.minimum, this.maximum});

  factory AddPokemonDimensionInput.fromJson(Map<String, dynamic> json) =>
      _$AddPokemonDimensionInputFromJson(json);

  @_i1.JsonKey()
  final String minimum;

  @_i1.JsonKey()
  final String maximum;

  Map<String, dynamic> toJson() => _$AddPokemonDimensionInputToJson(this);
  AddPokemonDimensionInput copyWith({String minimum, String maximum}) =>
      AddPokemonDimensionInput(
          minimum: minimum ?? this.minimum, maximum: maximum ?? this.maximum);
  @override
  List<Object> get props => [minimum, maximum];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonDimensionPayloadPokemonDimensionArgs extends _i2.Equatable {
  const AddPokemonDimensionPayloadPokemonDimensionArgs(
      {this.order, this.first, this.offset});

  factory AddPokemonDimensionPayloadPokemonDimensionArgs.fromJson(
          Map<String, dynamic> json) =>
      _$AddPokemonDimensionPayloadPokemonDimensionArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonDimensionOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() =>
      _$AddPokemonDimensionPayloadPokemonDimensionArgsToJson(this);
  AddPokemonDimensionPayloadPokemonDimensionArgs copyWith(
          {PokemonDimensionOrder order, int first, int offset}) =>
      AddPokemonDimensionPayloadPokemonDimensionArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonDimensionPayload extends _i2.Equatable {
  const AddPokemonDimensionPayload({this.pokemonDimension, this.numUids});

  factory AddPokemonDimensionPayload.fromJson(Map<String, dynamic> json) =>
      _$AddPokemonDimensionPayloadFromJson(json);

  @_i1.JsonKey()
  final List<PokemonDimension> pokemonDimension;

  @_i1.JsonKey()
  final int numUids;

  Map<String, dynamic> toJson() => _$AddPokemonDimensionPayloadToJson(this);
  AddPokemonDimensionPayload copyWith(
          {List<PokemonDimension> pokemonDimension, int numUids}) =>
      AddPokemonDimensionPayload(
          pokemonDimension: pokemonDimension ?? this.pokemonDimension,
          numUids: numUids ?? this.numUids);
  @override
  List<Object> get props => [pokemonDimension, numUids];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonEvolutionRequirementInput extends _i2.Equatable {
  const AddPokemonEvolutionRequirementInput({this.amount, this.name});

  factory AddPokemonEvolutionRequirementInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddPokemonEvolutionRequirementInputFromJson(json);

  @_i1.JsonKey()
  final int amount;

  @_i1.JsonKey()
  final String name;

  Map<String, dynamic> toJson() =>
      _$AddPokemonEvolutionRequirementInputToJson(this);
  AddPokemonEvolutionRequirementInput copyWith({int amount, String name}) =>
      AddPokemonEvolutionRequirementInput(
          amount: amount ?? this.amount, name: name ?? this.name);
  @override
  List<Object> get props => [amount, name];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs
    extends _i2.Equatable {
  const AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs(
      {this.order, this.first, this.offset});

  factory AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs.fromJson(
          Map<String, dynamic> json) =>
      _$AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgsFromJson(
          json);

  @_i1.JsonKey()
  final PokemonEvolutionRequirementOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() =>
      _$AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgsToJson(
          this);
  AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs copyWith(
          {PokemonEvolutionRequirementOrder order, int first, int offset}) =>
      AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonEvolutionRequirementPayload extends _i2.Equatable {
  const AddPokemonEvolutionRequirementPayload(
      {this.pokemonEvolutionRequirement, this.numUids});

  factory AddPokemonEvolutionRequirementPayload.fromJson(
          Map<String, dynamic> json) =>
      _$AddPokemonEvolutionRequirementPayloadFromJson(json);

  @_i1.JsonKey()
  final List<PokemonEvolutionRequirement> pokemonEvolutionRequirement;

  @_i1.JsonKey()
  final int numUids;

  Map<String, dynamic> toJson() =>
      _$AddPokemonEvolutionRequirementPayloadToJson(this);
  AddPokemonEvolutionRequirementPayload copyWith(
          {List<PokemonEvolutionRequirement> pokemonEvolutionRequirement,
          int numUids}) =>
      AddPokemonEvolutionRequirementPayload(
          pokemonEvolutionRequirement:
              pokemonEvolutionRequirement ?? this.pokemonEvolutionRequirement,
          numUids: numUids ?? this.numUids);
  @override
  List<Object> get props => [pokemonEvolutionRequirement, numUids];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonInput extends _i2.Equatable {
  const AddPokemonInput(
      {this.number,
      this.name,
      this.weight,
      this.height,
      this.classification,
      this.types,
      this.resistant,
      this.attacks,
      this.weaknesses,
      this.fleeRate,
      this.maxCP,
      this.evolutions,
      this.evolutionRequirements,
      this.maxHP,
      this.image});

  factory AddPokemonInput.fromJson(Map<String, dynamic> json) =>
      _$AddPokemonInputFromJson(json);

  @_i1.JsonKey()
  final String number;

  @_i1.JsonKey()
  final String name;

  @_i1.JsonKey()
  final PokemonDimensionRef weight;

  @_i1.JsonKey()
  final PokemonDimensionRef height;

  @_i1.JsonKey()
  final String classification;

  @_i1.JsonKey()
  final List<String> types;

  @_i1.JsonKey()
  final List<String> resistant;

  @_i1.JsonKey()
  final PokemonAttackRef attacks;

  @_i1.JsonKey()
  final List<String> weaknesses;

  @_i1.JsonKey()
  final double fleeRate;

  @_i1.JsonKey()
  final int maxCP;

  @_i1.JsonKey()
  final List<PokemonRef> evolutions;

  @_i1.JsonKey()
  final PokemonEvolutionRequirementRef evolutionRequirements;

  @_i1.JsonKey()
  final int maxHP;

  @_i1.JsonKey()
  final String image;

  Map<String, dynamic> toJson() => _$AddPokemonInputToJson(this);
  AddPokemonInput copyWith(
          {String number,
          String name,
          PokemonDimensionRef weight,
          PokemonDimensionRef height,
          String classification,
          List<String> types,
          List<String> resistant,
          PokemonAttackRef attacks,
          List<String> weaknesses,
          double fleeRate,
          int maxCP,
          List<PokemonRef> evolutions,
          PokemonEvolutionRequirementRef evolutionRequirements,
          int maxHP,
          String image}) =>
      AddPokemonInput(
          number: number ?? this.number,
          name: name ?? this.name,
          weight: weight ?? this.weight,
          height: height ?? this.height,
          classification: classification ?? this.classification,
          types: types ?? this.types,
          resistant: resistant ?? this.resistant,
          attacks: attacks ?? this.attacks,
          weaknesses: weaknesses ?? this.weaknesses,
          fleeRate: fleeRate ?? this.fleeRate,
          maxCP: maxCP ?? this.maxCP,
          evolutions: evolutions ?? this.evolutions,
          evolutionRequirements:
              evolutionRequirements ?? this.evolutionRequirements,
          maxHP: maxHP ?? this.maxHP,
          image: image ?? this.image);
  @override
  List<Object> get props => [
        number,
        name,
        weight,
        height,
        classification,
        types,
        resistant,
        attacks,
        weaknesses,
        fleeRate,
        maxCP,
        evolutions,
        evolutionRequirements,
        maxHP,
        image
      ];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonPayloadPokemonArgs extends _i2.Equatable {
  const AddPokemonPayloadPokemonArgs(
      {this.filter, this.order, this.first, this.offset});

  factory AddPokemonPayloadPokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$AddPokemonPayloadPokemonArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonFilter filter;

  @_i1.JsonKey()
  final PokemonOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$AddPokemonPayloadPokemonArgsToJson(this);
  AddPokemonPayloadPokemonArgs copyWith(
          {PokemonFilter filter, PokemonOrder order, int first, int offset}) =>
      AddPokemonPayloadPokemonArgs(
          filter: filter ?? this.filter,
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [filter, order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AddPokemonPayload extends _i2.Equatable {
  const AddPokemonPayload({this.pokemon, this.numUids});

  factory AddPokemonPayload.fromJson(Map<String, dynamic> json) =>
      _$AddPokemonPayloadFromJson(json);

  @_i1.JsonKey()
  final List<Pokemon> pokemon;

  @_i1.JsonKey()
  final int numUids;

  Map<String, dynamic> toJson() => _$AddPokemonPayloadToJson(this);
  AddPokemonPayload copyWith({List<Pokemon> pokemon, int numUids}) =>
      AddPokemonPayload(
          pokemon: pokemon ?? this.pokemon, numUids: numUids ?? this.numUids);
  @override
  List<Object> get props => [pokemon, numUids];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class Attack extends _i2.Equatable {
  const Attack({this.name, this.type, this.damage});

  factory Attack.fromJson(Map<String, dynamic> json) => _$AttackFromJson(json);

  @_i1.JsonKey()
  final String name;

  @_i1.JsonKey()
  final String type;

  @_i1.JsonKey()
  final int damage;

  Map<String, dynamic> toJson() => _$AttackToJson(this);
  Attack copyWith({String name, String type, int damage}) => Attack(
      name: name ?? this.name,
      type: type ?? this.type,
      damage: damage ?? this.damage);
  @override
  List<Object> get props => [name, type, damage];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AttackOrder extends _i2.Equatable {
  const AttackOrder({this.asc, this.desc, this.then});

  factory AttackOrder.fromJson(Map<String, dynamic> json) =>
      _$AttackOrderFromJson(json);

  @_i1.JsonKey()
  final AttackOrderable asc;

  @_i1.JsonKey()
  final AttackOrderable desc;

  @_i1.JsonKey()
  final AttackOrder then;

  Map<String, dynamic> toJson() => _$AttackOrderToJson(this);
  AttackOrder copyWith(
          {AttackOrderable asc, AttackOrderable desc, AttackOrder then}) =>
      AttackOrder(
          asc: asc ?? this.asc,
          desc: desc ?? this.desc,
          then: then ?? this.then);
  @override
  List<Object> get props => [asc, desc, then];
  @override
  bool get stringify => true;
}

enum AttackOrderable {
  @_i1.JsonValue('name')
  name,
  @_i1.JsonValue('type')
  type,
  @_i1.JsonValue('damage')
  damage
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AttackRef extends _i2.Equatable {
  const AttackRef({this.name, this.type, this.damage});

  factory AttackRef.fromJson(Map<String, dynamic> json) =>
      _$AttackRefFromJson(json);

  @_i1.JsonKey()
  final String name;

  @_i1.JsonKey()
  final String type;

  @_i1.JsonKey()
  final int damage;

  Map<String, dynamic> toJson() => _$AttackRefToJson(this);
  AttackRef copyWith({String name, String type, int damage}) => AttackRef(
      name: name ?? this.name,
      type: type ?? this.type,
      damage: damage ?? this.damage);
  @override
  List<Object> get props => [name, type, damage];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AuthRule extends _i2.Equatable {
  const AuthRule({this.and, this.or, this.not, this.rule});

  factory AuthRule.fromJson(Map<String, dynamic> json) =>
      _$AuthRuleFromJson(json);

  @_i1.JsonKey()
  final List<AuthRule> and;

  @_i1.JsonKey()
  final List<AuthRule> or;

  @_i1.JsonKey()
  final AuthRule not;

  @_i1.JsonKey()
  final String rule;

  Map<String, dynamic> toJson() => _$AuthRuleToJson(this);
  AuthRule copyWith(
          {List<AuthRule> and, List<AuthRule> or, AuthRule not, String rule}) =>
      AuthRule(
          and: and ?? this.and,
          or: or ?? this.or,
          not: not ?? this.not,
          rule: rule ?? this.rule);
  @override
  List<Object> get props => [and, or, not, rule];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class CustomHTTP extends _i2.Equatable {
  const CustomHTTP(
      {@_i3.required this.url,
      @_i3.required this.method,
      this.body,
      this.graphql,
      this.mode,
      this.forwardHeaders,
      this.secretHeaders,
      this.introspectionHeaders,
      this.skipIntrospection});

  factory CustomHTTP.fromJson(Map<String, dynamic> json) =>
      _$CustomHTTPFromJson(json);

  @_i1.JsonKey()
  final String url;

  @_i1.JsonKey()
  final HTTPMethod method;

  @_i1.JsonKey()
  final String body;

  @_i1.JsonKey()
  final String graphql;

  @_i1.JsonKey()
  final Mode mode;

  @_i1.JsonKey()
  final List<String> forwardHeaders;

  @_i1.JsonKey()
  final List<String> secretHeaders;

  @_i1.JsonKey()
  final List<String> introspectionHeaders;

  @_i1.JsonKey()
  final bool skipIntrospection;

  Map<String, dynamic> toJson() => _$CustomHTTPToJson(this);
  CustomHTTP copyWith(
          {String url,
          HTTPMethod method,
          String body,
          String graphql,
          Mode mode,
          List<String> forwardHeaders,
          List<String> secretHeaders,
          List<String> introspectionHeaders,
          bool skipIntrospection}) =>
      CustomHTTP(
          url: url ?? this.url,
          method: method ?? this.method,
          body: body ?? this.body,
          graphql: graphql ?? this.graphql,
          mode: mode ?? this.mode,
          forwardHeaders: forwardHeaders ?? this.forwardHeaders,
          secretHeaders: secretHeaders ?? this.secretHeaders,
          introspectionHeaders:
              introspectionHeaders ?? this.introspectionHeaders,
          skipIntrospection: skipIntrospection ?? this.skipIntrospection);
  @override
  List<Object> get props => [
        url,
        method,
        body,
        graphql,
        mode,
        forwardHeaders,
        secretHeaders,
        introspectionHeaders,
        skipIntrospection
      ];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class DateTimeFilter extends _i2.Equatable {
  const DateTimeFilter({this.eq, this.le, this.lt, this.ge, this.gt});

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  @_i1.JsonKey(fromJson: $DateTimeFromJson, toJson: $DateTimeToJson)
  final DateTime eq;

  @_i1.JsonKey(fromJson: $DateTimeFromJson, toJson: $DateTimeToJson)
  final DateTime le;

  @_i1.JsonKey(fromJson: $DateTimeFromJson, toJson: $DateTimeToJson)
  final DateTime lt;

  @_i1.JsonKey(fromJson: $DateTimeFromJson, toJson: $DateTimeToJson)
  final DateTime ge;

  @_i1.JsonKey(fromJson: $DateTimeFromJson, toJson: $DateTimeToJson)
  final DateTime gt;

  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
  DateTimeFilter copyWith(
          {DateTime eq, DateTime le, DateTime lt, DateTime ge, DateTime gt}) =>
      DateTimeFilter(
          eq: eq ?? this.eq,
          le: le ?? this.le,
          lt: lt ?? this.lt,
          ge: ge ?? this.ge,
          gt: gt ?? this.gt);
  @override
  List<Object> get props => [eq, le, lt, ge, gt];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeletePokemonPayloadPokemonArgs extends _i2.Equatable {
  const DeletePokemonPayloadPokemonArgs(
      {this.filter, this.order, this.first, this.offset});

  factory DeletePokemonPayloadPokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$DeletePokemonPayloadPokemonArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonFilter filter;

  @_i1.JsonKey()
  final PokemonOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() =>
      _$DeletePokemonPayloadPokemonArgsToJson(this);
  DeletePokemonPayloadPokemonArgs copyWith(
          {PokemonFilter filter, PokemonOrder order, int first, int offset}) =>
      DeletePokemonPayloadPokemonArgs(
          filter: filter ?? this.filter,
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [filter, order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeletePokemonPayload extends _i2.Equatable {
  const DeletePokemonPayload({this.pokemon, this.msg, this.numUids});

  factory DeletePokemonPayload.fromJson(Map<String, dynamic> json) =>
      _$DeletePokemonPayloadFromJson(json);

  @_i1.JsonKey()
  final List<Pokemon> pokemon;

  @_i1.JsonKey()
  final String msg;

  @_i1.JsonKey()
  final int numUids;

  Map<String, dynamic> toJson() => _$DeletePokemonPayloadToJson(this);
  DeletePokemonPayload copyWith(
          {List<Pokemon> pokemon, String msg, int numUids}) =>
      DeletePokemonPayload(
          pokemon: pokemon ?? this.pokemon,
          msg: msg ?? this.msg,
          numUids: numUids ?? this.numUids);
  @override
  List<Object> get props => [pokemon, msg, numUids];
  @override
  bool get stringify => true;
}

enum DgraphIndex {
  @_i1.JsonValue('int')
  int,
  @_i1.JsonValue('float')
  float,
  @_i1.JsonValue('bool')
  bool,
  @_i1.JsonValue('hash')
  hash,
  @_i1.JsonValue('exact')
  exact,
  @_i1.JsonValue('term')
  term,
  @_i1.JsonValue('fulltext')
  fulltext,
  @_i1.JsonValue('trigram')
  trigram,
  @_i1.JsonValue('regexp')
  regexp,
  @_i1.JsonValue('year')
  year,
  @_i1.JsonValue('month')
  month,
  @_i1.JsonValue('day')
  day,
  @_i1.JsonValue('hour')
  hour
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class FloatFilter extends _i2.Equatable {
  const FloatFilter({this.eq, this.le, this.lt, this.ge, this.gt});

  factory FloatFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatFilterFromJson(json);

  @_i1.JsonKey()
  final double eq;

  @_i1.JsonKey()
  final double le;

  @_i1.JsonKey()
  final double lt;

  @_i1.JsonKey()
  final double ge;

  @_i1.JsonKey()
  final double gt;

  Map<String, dynamic> toJson() => _$FloatFilterToJson(this);
  FloatFilter copyWith(
          {double eq, double le, double lt, double ge, double gt}) =>
      FloatFilter(
          eq: eq ?? this.eq,
          le: le ?? this.le,
          lt: lt ?? this.lt,
          ge: ge ?? this.ge,
          gt: gt ?? this.gt);
  @override
  List<Object> get props => [eq, le, lt, ge, gt];
  @override
  bool get stringify => true;
}

enum HTTPMethod {
  @_i1.JsonValue('GET')
  GET,
  @_i1.JsonValue('POST')
  POST,
  @_i1.JsonValue('PUT')
  PUT,
  @_i1.JsonValue('PATCH')
  PATCH,
  @_i1.JsonValue('DELETE')
  DELETE
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class IntFilter extends _i2.Equatable {
  const IntFilter({this.eq, this.le, this.lt, this.ge, this.gt});

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  @_i1.JsonKey()
  final int eq;

  @_i1.JsonKey()
  final int le;

  @_i1.JsonKey()
  final int lt;

  @_i1.JsonKey()
  final int ge;

  @_i1.JsonKey()
  final int gt;

  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
  IntFilter copyWith({int eq, int le, int lt, int ge, int gt}) => IntFilter(
      eq: eq ?? this.eq,
      le: le ?? this.le,
      lt: lt ?? this.lt,
      ge: ge ?? this.ge,
      gt: gt ?? this.gt);
  @override
  List<Object> get props => [eq, le, lt, ge, gt];
  @override
  bool get stringify => true;
}

enum Mode {
  @_i1.JsonValue('BATCH')
  BATCH,
  @_i1.JsonValue('SINGLE')
  SINGLE
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class MutationAddAttackArgs extends _i2.Equatable {
  const MutationAddAttackArgs({@_i3.required this.input});

  factory MutationAddAttackArgs.fromJson(Map<String, dynamic> json) =>
      _$MutationAddAttackArgsFromJson(json);

  @_i1.JsonKey()
  final List<AddAttackInput> input;

  Map<String, dynamic> toJson() => _$MutationAddAttackArgsToJson(this);
  MutationAddAttackArgs copyWith({List<AddAttackInput> input}) =>
      MutationAddAttackArgs(input: input ?? this.input);
  @override
  List<Object> get props => [input];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class MutationAddPokemonArgs extends _i2.Equatable {
  const MutationAddPokemonArgs({@_i3.required this.input});

  factory MutationAddPokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$MutationAddPokemonArgsFromJson(json);

  @_i1.JsonKey()
  final List<AddPokemonInput> input;

  Map<String, dynamic> toJson() => _$MutationAddPokemonArgsToJson(this);
  MutationAddPokemonArgs copyWith({List<AddPokemonInput> input}) =>
      MutationAddPokemonArgs(input: input ?? this.input);
  @override
  List<Object> get props => [input];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class MutationUpdatePokemonArgs extends _i2.Equatable {
  const MutationUpdatePokemonArgs({@_i3.required this.input});

  factory MutationUpdatePokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdatePokemonArgsFromJson(json);

  @_i1.JsonKey()
  final UpdatePokemonInput input;

  Map<String, dynamic> toJson() => _$MutationUpdatePokemonArgsToJson(this);
  MutationUpdatePokemonArgs copyWith({UpdatePokemonInput input}) =>
      MutationUpdatePokemonArgs(input: input ?? this.input);
  @override
  List<Object> get props => [input];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class MutationDeletePokemonArgs extends _i2.Equatable {
  const MutationDeletePokemonArgs({@_i3.required this.filter});

  factory MutationDeletePokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$MutationDeletePokemonArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonFilter filter;

  Map<String, dynamic> toJson() => _$MutationDeletePokemonArgsToJson(this);
  MutationDeletePokemonArgs copyWith({PokemonFilter filter}) =>
      MutationDeletePokemonArgs(filter: filter ?? this.filter);
  @override
  List<Object> get props => [filter];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class MutationAddPokemonAttackArgs extends _i2.Equatable {
  const MutationAddPokemonAttackArgs({@_i3.required this.input});

  factory MutationAddPokemonAttackArgs.fromJson(Map<String, dynamic> json) =>
      _$MutationAddPokemonAttackArgsFromJson(json);

  @_i1.JsonKey()
  final List<AddPokemonAttackInput> input;

  Map<String, dynamic> toJson() => _$MutationAddPokemonAttackArgsToJson(this);
  MutationAddPokemonAttackArgs copyWith({List<AddPokemonAttackInput> input}) =>
      MutationAddPokemonAttackArgs(input: input ?? this.input);
  @override
  List<Object> get props => [input];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class MutationAddPokemonDimensionArgs extends _i2.Equatable {
  const MutationAddPokemonDimensionArgs({@_i3.required this.input});

  factory MutationAddPokemonDimensionArgs.fromJson(Map<String, dynamic> json) =>
      _$MutationAddPokemonDimensionArgsFromJson(json);

  @_i1.JsonKey()
  final List<AddPokemonDimensionInput> input;

  Map<String, dynamic> toJson() =>
      _$MutationAddPokemonDimensionArgsToJson(this);
  MutationAddPokemonDimensionArgs copyWith(
          {List<AddPokemonDimensionInput> input}) =>
      MutationAddPokemonDimensionArgs(input: input ?? this.input);
  @override
  List<Object> get props => [input];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class MutationAddPokemonEvolutionRequirementArgs extends _i2.Equatable {
  const MutationAddPokemonEvolutionRequirementArgs({@_i3.required this.input});

  factory MutationAddPokemonEvolutionRequirementArgs.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddPokemonEvolutionRequirementArgsFromJson(json);

  @_i1.JsonKey()
  final List<AddPokemonEvolutionRequirementInput> input;

  Map<String, dynamic> toJson() =>
      _$MutationAddPokemonEvolutionRequirementArgsToJson(this);
  MutationAddPokemonEvolutionRequirementArgs copyWith(
          {List<AddPokemonEvolutionRequirementInput> input}) =>
      MutationAddPokemonEvolutionRequirementArgs(input: input ?? this.input);
  @override
  List<Object> get props => [input];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class Mutation extends _i2.Equatable {
  const Mutation(
      {this.addAttack,
      this.addPokemon,
      this.updatePokemon,
      this.deletePokemon,
      this.addPokemonAttack,
      this.addPokemonDimension,
      this.addPokemonEvolutionRequirement});

  factory Mutation.fromJson(Map<String, dynamic> json) =>
      _$MutationFromJson(json);

  @_i1.JsonKey()
  final AddAttackPayload addAttack;

  @_i1.JsonKey()
  final AddPokemonPayload addPokemon;

  @_i1.JsonKey()
  final UpdatePokemonPayload updatePokemon;

  @_i1.JsonKey()
  final DeletePokemonPayload deletePokemon;

  @_i1.JsonKey()
  final AddPokemonAttackPayload addPokemonAttack;

  @_i1.JsonKey()
  final AddPokemonDimensionPayload addPokemonDimension;

  @_i1.JsonKey()
  final AddPokemonEvolutionRequirementPayload addPokemonEvolutionRequirement;

  Map<String, dynamic> toJson() => _$MutationToJson(this);
  Mutation copyWith(
          {AddAttackPayload addAttack,
          AddPokemonPayload addPokemon,
          UpdatePokemonPayload updatePokemon,
          DeletePokemonPayload deletePokemon,
          AddPokemonAttackPayload addPokemonAttack,
          AddPokemonDimensionPayload addPokemonDimension,
          AddPokemonEvolutionRequirementPayload
              addPokemonEvolutionRequirement}) =>
      Mutation(
          addAttack: addAttack ?? this.addAttack,
          addPokemon: addPokemon ?? this.addPokemon,
          updatePokemon: updatePokemon ?? this.updatePokemon,
          deletePokemon: deletePokemon ?? this.deletePokemon,
          addPokemonAttack: addPokemonAttack ?? this.addPokemonAttack,
          addPokemonDimension: addPokemonDimension ?? this.addPokemonDimension,
          addPokemonEvolutionRequirement: addPokemonEvolutionRequirement ??
              this.addPokemonEvolutionRequirement);
  @override
  List<Object> get props => [
        addAttack,
        addPokemon,
        updatePokemon,
        deletePokemon,
        addPokemonAttack,
        addPokemonDimension,
        addPokemonEvolutionRequirement
      ];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonEvolutionsArgs extends _i2.Equatable {
  const PokemonEvolutionsArgs(
      {this.filter, this.order, this.first, this.offset});

  factory PokemonEvolutionsArgs.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionsArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonFilter filter;

  @_i1.JsonKey()
  final PokemonOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$PokemonEvolutionsArgsToJson(this);
  PokemonEvolutionsArgs copyWith(
          {PokemonFilter filter, PokemonOrder order, int first, int offset}) =>
      PokemonEvolutionsArgs(
          filter: filter ?? this.filter,
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [filter, order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class Pokemon extends _i2.Equatable {
  const Pokemon(
      {@_i3.required this.id,
      this.number,
      this.name,
      this.weight,
      this.height,
      this.classification,
      this.types,
      this.resistant,
      this.attacks,
      this.weaknesses,
      this.fleeRate,
      this.maxCP,
      this.evolutions,
      this.evolutionRequirements,
      this.maxHP,
      this.image});

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  @_i1.JsonKey()
  final String id;

  @_i1.JsonKey()
  final String number;

  @_i1.JsonKey()
  final String name;

  @_i1.JsonKey()
  final PokemonDimension weight;

  @_i1.JsonKey()
  final PokemonDimension height;

  @_i1.JsonKey()
  final String classification;

  @_i1.JsonKey()
  final List<String> types;

  @_i1.JsonKey()
  final List<String> resistant;

  @_i1.JsonKey()
  final PokemonAttack attacks;

  @_i1.JsonKey()
  final List<String> weaknesses;

  @_i1.JsonKey()
  final double fleeRate;

  @_i1.JsonKey()
  final int maxCP;

  @_i1.JsonKey()
  final List<Pokemon> evolutions;

  @_i1.JsonKey()
  final PokemonEvolutionRequirement evolutionRequirements;

  @_i1.JsonKey()
  final int maxHP;

  @_i1.JsonKey()
  final String image;

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
  Pokemon copyWith(
          {String id,
          String number,
          String name,
          PokemonDimension weight,
          PokemonDimension height,
          String classification,
          List<String> types,
          List<String> resistant,
          PokemonAttack attacks,
          List<String> weaknesses,
          double fleeRate,
          int maxCP,
          List<Pokemon> evolutions,
          PokemonEvolutionRequirement evolutionRequirements,
          int maxHP,
          String image}) =>
      Pokemon(
          id: id ?? this.id,
          number: number ?? this.number,
          name: name ?? this.name,
          weight: weight ?? this.weight,
          height: height ?? this.height,
          classification: classification ?? this.classification,
          types: types ?? this.types,
          resistant: resistant ?? this.resistant,
          attacks: attacks ?? this.attacks,
          weaknesses: weaknesses ?? this.weaknesses,
          fleeRate: fleeRate ?? this.fleeRate,
          maxCP: maxCP ?? this.maxCP,
          evolutions: evolutions ?? this.evolutions,
          evolutionRequirements:
              evolutionRequirements ?? this.evolutionRequirements,
          maxHP: maxHP ?? this.maxHP,
          image: image ?? this.image);
  @override
  List<Object> get props => [
        id,
        number,
        name,
        weight,
        height,
        classification,
        types,
        resistant,
        attacks,
        weaknesses,
        fleeRate,
        maxCP,
        evolutions,
        evolutionRequirements,
        maxHP,
        image
      ];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonAttackFastArgs extends _i2.Equatable {
  const PokemonAttackFastArgs({this.order, this.first, this.offset});

  factory PokemonAttackFastArgs.fromJson(Map<String, dynamic> json) =>
      _$PokemonAttackFastArgsFromJson(json);

  @_i1.JsonKey()
  final AttackOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$PokemonAttackFastArgsToJson(this);
  PokemonAttackFastArgs copyWith({AttackOrder order, int first, int offset}) =>
      PokemonAttackFastArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonAttackSpecialArgs extends _i2.Equatable {
  const PokemonAttackSpecialArgs({this.order, this.first, this.offset});

  factory PokemonAttackSpecialArgs.fromJson(Map<String, dynamic> json) =>
      _$PokemonAttackSpecialArgsFromJson(json);

  @_i1.JsonKey()
  final AttackOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$PokemonAttackSpecialArgsToJson(this);
  PokemonAttackSpecialArgs copyWith(
          {AttackOrder order, int first, int offset}) =>
      PokemonAttackSpecialArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonAttack extends _i2.Equatable {
  const PokemonAttack({this.fast, this.special});

  factory PokemonAttack.fromJson(Map<String, dynamic> json) =>
      _$PokemonAttackFromJson(json);

  @_i1.JsonKey()
  final List<Attack> fast;

  @_i1.JsonKey()
  final List<Attack> special;

  Map<String, dynamic> toJson() => _$PokemonAttackToJson(this);
  PokemonAttack copyWith({List<Attack> fast, List<Attack> special}) =>
      PokemonAttack(fast: fast ?? this.fast, special: special ?? this.special);
  @override
  List<Object> get props => [fast, special];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonAttackRef extends _i2.Equatable {
  const PokemonAttackRef({this.fast, this.special});

  factory PokemonAttackRef.fromJson(Map<String, dynamic> json) =>
      _$PokemonAttackRefFromJson(json);

  @_i1.JsonKey()
  final List<AttackRef> fast;

  @_i1.JsonKey()
  final List<AttackRef> special;

  Map<String, dynamic> toJson() => _$PokemonAttackRefToJson(this);
  PokemonAttackRef copyWith({List<AttackRef> fast, List<AttackRef> special}) =>
      PokemonAttackRef(
          fast: fast ?? this.fast, special: special ?? this.special);
  @override
  List<Object> get props => [fast, special];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonDimension extends _i2.Equatable {
  const PokemonDimension({this.minimum, this.maximum});

  factory PokemonDimension.fromJson(Map<String, dynamic> json) =>
      _$PokemonDimensionFromJson(json);

  @_i1.JsonKey()
  final String minimum;

  @_i1.JsonKey()
  final String maximum;

  Map<String, dynamic> toJson() => _$PokemonDimensionToJson(this);
  PokemonDimension copyWith({String minimum, String maximum}) =>
      PokemonDimension(
          minimum: minimum ?? this.minimum, maximum: maximum ?? this.maximum);
  @override
  List<Object> get props => [minimum, maximum];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonDimensionOrder extends _i2.Equatable {
  const PokemonDimensionOrder({this.asc, this.desc, this.then});

  factory PokemonDimensionOrder.fromJson(Map<String, dynamic> json) =>
      _$PokemonDimensionOrderFromJson(json);

  @_i1.JsonKey()
  final PokemonDimensionOrderable asc;

  @_i1.JsonKey()
  final PokemonDimensionOrderable desc;

  @_i1.JsonKey()
  final PokemonDimensionOrder then;

  Map<String, dynamic> toJson() => _$PokemonDimensionOrderToJson(this);
  PokemonDimensionOrder copyWith(
          {PokemonDimensionOrderable asc,
          PokemonDimensionOrderable desc,
          PokemonDimensionOrder then}) =>
      PokemonDimensionOrder(
          asc: asc ?? this.asc,
          desc: desc ?? this.desc,
          then: then ?? this.then);
  @override
  List<Object> get props => [asc, desc, then];
  @override
  bool get stringify => true;
}

enum PokemonDimensionOrderable {
  @_i1.JsonValue('minimum')
  minimum,
  @_i1.JsonValue('maximum')
  maximum
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonDimensionRef extends _i2.Equatable {
  const PokemonDimensionRef({this.minimum, this.maximum});

  factory PokemonDimensionRef.fromJson(Map<String, dynamic> json) =>
      _$PokemonDimensionRefFromJson(json);

  @_i1.JsonKey()
  final String minimum;

  @_i1.JsonKey()
  final String maximum;

  Map<String, dynamic> toJson() => _$PokemonDimensionRefToJson(this);
  PokemonDimensionRef copyWith({String minimum, String maximum}) =>
      PokemonDimensionRef(
          minimum: minimum ?? this.minimum, maximum: maximum ?? this.maximum);
  @override
  List<Object> get props => [minimum, maximum];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonEvolutionRequirement extends _i2.Equatable {
  const PokemonEvolutionRequirement({this.amount, this.name});

  factory PokemonEvolutionRequirement.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionRequirementFromJson(json);

  @_i1.JsonKey()
  final int amount;

  @_i1.JsonKey()
  final String name;

  Map<String, dynamic> toJson() => _$PokemonEvolutionRequirementToJson(this);
  PokemonEvolutionRequirement copyWith({int amount, String name}) =>
      PokemonEvolutionRequirement(
          amount: amount ?? this.amount, name: name ?? this.name);
  @override
  List<Object> get props => [amount, name];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonEvolutionRequirementOrder extends _i2.Equatable {
  const PokemonEvolutionRequirementOrder({this.asc, this.desc, this.then});

  factory PokemonEvolutionRequirementOrder.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonEvolutionRequirementOrderFromJson(json);

  @_i1.JsonKey()
  final PokemonEvolutionRequirementOrderable asc;

  @_i1.JsonKey()
  final PokemonEvolutionRequirementOrderable desc;

  @_i1.JsonKey()
  final PokemonEvolutionRequirementOrder then;

  Map<String, dynamic> toJson() =>
      _$PokemonEvolutionRequirementOrderToJson(this);
  PokemonEvolutionRequirementOrder copyWith(
          {PokemonEvolutionRequirementOrderable asc,
          PokemonEvolutionRequirementOrderable desc,
          PokemonEvolutionRequirementOrder then}) =>
      PokemonEvolutionRequirementOrder(
          asc: asc ?? this.asc,
          desc: desc ?? this.desc,
          then: then ?? this.then);
  @override
  List<Object> get props => [asc, desc, then];
  @override
  bool get stringify => true;
}

enum PokemonEvolutionRequirementOrderable {
  @_i1.JsonValue('amount')
  amount,
  @_i1.JsonValue('name')
  name
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonEvolutionRequirementRef extends _i2.Equatable {
  const PokemonEvolutionRequirementRef({this.amount, this.name});

  factory PokemonEvolutionRequirementRef.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionRequirementRefFromJson(json);

  @_i1.JsonKey()
  final int amount;

  @_i1.JsonKey()
  final String name;

  Map<String, dynamic> toJson() => _$PokemonEvolutionRequirementRefToJson(this);
  PokemonEvolutionRequirementRef copyWith({int amount, String name}) =>
      PokemonEvolutionRequirementRef(
          amount: amount ?? this.amount, name: name ?? this.name);
  @override
  List<Object> get props => [amount, name];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonFilter extends _i2.Equatable {
  const PokemonFilter({this.id, this.name, this.and, this.or, this.not});

  factory PokemonFilter.fromJson(Map<String, dynamic> json) =>
      _$PokemonFilterFromJson(json);

  @_i1.JsonKey()
  final List<String> id;

  @_i1.JsonKey()
  final StringFullTextFilter name;

  @_i1.JsonKey()
  final PokemonFilter and;

  @_i1.JsonKey()
  final PokemonFilter or;

  @_i1.JsonKey()
  final PokemonFilter not;

  Map<String, dynamic> toJson() => _$PokemonFilterToJson(this);
  PokemonFilter copyWith(
          {List<String> id,
          StringFullTextFilter name,
          PokemonFilter and,
          PokemonFilter or,
          PokemonFilter not}) =>
      PokemonFilter(
          id: id ?? this.id,
          name: name ?? this.name,
          and: and ?? this.and,
          or: or ?? this.or,
          not: not ?? this.not);
  @override
  List<Object> get props => [id, name, and, or, not];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonOrder extends _i2.Equatable {
  const PokemonOrder({this.asc, this.desc, this.then});

  factory PokemonOrder.fromJson(Map<String, dynamic> json) =>
      _$PokemonOrderFromJson(json);

  @_i1.JsonKey()
  final PokemonOrderable asc;

  @_i1.JsonKey()
  final PokemonOrderable desc;

  @_i1.JsonKey()
  final PokemonOrder then;

  Map<String, dynamic> toJson() => _$PokemonOrderToJson(this);
  PokemonOrder copyWith(
          {PokemonOrderable asc, PokemonOrderable desc, PokemonOrder then}) =>
      PokemonOrder(
          asc: asc ?? this.asc,
          desc: desc ?? this.desc,
          then: then ?? this.then);
  @override
  List<Object> get props => [asc, desc, then];
  @override
  bool get stringify => true;
}

enum PokemonOrderable {
  @_i1.JsonValue('number')
  number,
  @_i1.JsonValue('name')
  name,
  @_i1.JsonValue('classification')
  classification,
  @_i1.JsonValue('types')
  types,
  @_i1.JsonValue('resistant')
  resistant,
  @_i1.JsonValue('weaknesses')
  weaknesses,
  @_i1.JsonValue('fleeRate')
  fleeRate,
  @_i1.JsonValue('maxCP')
  maxCP,
  @_i1.JsonValue('maxHP')
  maxHP,
  @_i1.JsonValue('image')
  image
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonPatch extends _i2.Equatable {
  const PokemonPatch(
      {this.number,
      this.name,
      this.weight,
      this.height,
      this.classification,
      this.types,
      this.resistant,
      this.attacks,
      this.weaknesses,
      this.fleeRate,
      this.maxCP,
      this.evolutions,
      this.evolutionRequirements,
      this.maxHP,
      this.image});

  factory PokemonPatch.fromJson(Map<String, dynamic> json) =>
      _$PokemonPatchFromJson(json);

  @_i1.JsonKey()
  final String number;

  @_i1.JsonKey()
  final String name;

  @_i1.JsonKey()
  final PokemonDimensionRef weight;

  @_i1.JsonKey()
  final PokemonDimensionRef height;

  @_i1.JsonKey()
  final String classification;

  @_i1.JsonKey()
  final List<String> types;

  @_i1.JsonKey()
  final List<String> resistant;

  @_i1.JsonKey()
  final PokemonAttackRef attacks;

  @_i1.JsonKey()
  final List<String> weaknesses;

  @_i1.JsonKey()
  final double fleeRate;

  @_i1.JsonKey()
  final int maxCP;

  @_i1.JsonKey()
  final List<PokemonRef> evolutions;

  @_i1.JsonKey()
  final PokemonEvolutionRequirementRef evolutionRequirements;

  @_i1.JsonKey()
  final int maxHP;

  @_i1.JsonKey()
  final String image;

  Map<String, dynamic> toJson() => _$PokemonPatchToJson(this);
  PokemonPatch copyWith(
          {String number,
          String name,
          PokemonDimensionRef weight,
          PokemonDimensionRef height,
          String classification,
          List<String> types,
          List<String> resistant,
          PokemonAttackRef attacks,
          List<String> weaknesses,
          double fleeRate,
          int maxCP,
          List<PokemonRef> evolutions,
          PokemonEvolutionRequirementRef evolutionRequirements,
          int maxHP,
          String image}) =>
      PokemonPatch(
          number: number ?? this.number,
          name: name ?? this.name,
          weight: weight ?? this.weight,
          height: height ?? this.height,
          classification: classification ?? this.classification,
          types: types ?? this.types,
          resistant: resistant ?? this.resistant,
          attacks: attacks ?? this.attacks,
          weaknesses: weaknesses ?? this.weaknesses,
          fleeRate: fleeRate ?? this.fleeRate,
          maxCP: maxCP ?? this.maxCP,
          evolutions: evolutions ?? this.evolutions,
          evolutionRequirements:
              evolutionRequirements ?? this.evolutionRequirements,
          maxHP: maxHP ?? this.maxHP,
          image: image ?? this.image);
  @override
  List<Object> get props => [
        number,
        name,
        weight,
        height,
        classification,
        types,
        resistant,
        attacks,
        weaknesses,
        fleeRate,
        maxCP,
        evolutions,
        evolutionRequirements,
        maxHP,
        image
      ];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class PokemonRef extends _i2.Equatable {
  const PokemonRef(
      {this.id,
      this.number,
      this.name,
      this.weight,
      this.height,
      this.classification,
      this.types,
      this.resistant,
      this.attacks,
      this.weaknesses,
      this.fleeRate,
      this.maxCP,
      this.evolutions,
      this.evolutionRequirements,
      this.maxHP,
      this.image});

  factory PokemonRef.fromJson(Map<String, dynamic> json) =>
      _$PokemonRefFromJson(json);

  @_i1.JsonKey()
  final String id;

  @_i1.JsonKey()
  final String number;

  @_i1.JsonKey()
  final String name;

  @_i1.JsonKey()
  final PokemonDimensionRef weight;

  @_i1.JsonKey()
  final PokemonDimensionRef height;

  @_i1.JsonKey()
  final String classification;

  @_i1.JsonKey()
  final List<String> types;

  @_i1.JsonKey()
  final List<String> resistant;

  @_i1.JsonKey()
  final PokemonAttackRef attacks;

  @_i1.JsonKey()
  final List<String> weaknesses;

  @_i1.JsonKey()
  final double fleeRate;

  @_i1.JsonKey()
  final int maxCP;

  @_i1.JsonKey()
  final List<PokemonRef> evolutions;

  @_i1.JsonKey()
  final PokemonEvolutionRequirementRef evolutionRequirements;

  @_i1.JsonKey()
  final int maxHP;

  @_i1.JsonKey()
  final String image;

  Map<String, dynamic> toJson() => _$PokemonRefToJson(this);
  PokemonRef copyWith(
          {String id,
          String number,
          String name,
          PokemonDimensionRef weight,
          PokemonDimensionRef height,
          String classification,
          List<String> types,
          List<String> resistant,
          PokemonAttackRef attacks,
          List<String> weaknesses,
          double fleeRate,
          int maxCP,
          List<PokemonRef> evolutions,
          PokemonEvolutionRequirementRef evolutionRequirements,
          int maxHP,
          String image}) =>
      PokemonRef(
          id: id ?? this.id,
          number: number ?? this.number,
          name: name ?? this.name,
          weight: weight ?? this.weight,
          height: height ?? this.height,
          classification: classification ?? this.classification,
          types: types ?? this.types,
          resistant: resistant ?? this.resistant,
          attacks: attacks ?? this.attacks,
          weaknesses: weaknesses ?? this.weaknesses,
          fleeRate: fleeRate ?? this.fleeRate,
          maxCP: maxCP ?? this.maxCP,
          evolutions: evolutions ?? this.evolutions,
          evolutionRequirements:
              evolutionRequirements ?? this.evolutionRequirements,
          maxHP: maxHP ?? this.maxHP,
          image: image ?? this.image);
  @override
  List<Object> get props => [
        id,
        number,
        name,
        weight,
        height,
        classification,
        types,
        resistant,
        attacks,
        weaknesses,
        fleeRate,
        maxCP,
        evolutions,
        evolutionRequirements,
        maxHP,
        image
      ];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryQueryAttackArgs extends _i2.Equatable {
  const QueryQueryAttackArgs({this.order, this.first, this.offset});

  factory QueryQueryAttackArgs.fromJson(Map<String, dynamic> json) =>
      _$QueryQueryAttackArgsFromJson(json);

  @_i1.JsonKey()
  final AttackOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$QueryQueryAttackArgsToJson(this);
  QueryQueryAttackArgs copyWith({AttackOrder order, int first, int offset}) =>
      QueryQueryAttackArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryGetPokemonArgs extends _i2.Equatable {
  const QueryGetPokemonArgs({@_i3.required this.id});

  factory QueryGetPokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$QueryGetPokemonArgsFromJson(json);

  @_i1.JsonKey()
  final String id;

  Map<String, dynamic> toJson() => _$QueryGetPokemonArgsToJson(this);
  QueryGetPokemonArgs copyWith({String id}) =>
      QueryGetPokemonArgs(id: id ?? this.id);
  @override
  List<Object> get props => [id];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryQueryPokemonArgs extends _i2.Equatable {
  const QueryQueryPokemonArgs(
      {this.filter, this.order, this.first, this.offset});

  factory QueryQueryPokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$QueryQueryPokemonArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonFilter filter;

  @_i1.JsonKey()
  final PokemonOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$QueryQueryPokemonArgsToJson(this);
  QueryQueryPokemonArgs copyWith(
          {PokemonFilter filter, PokemonOrder order, int first, int offset}) =>
      QueryQueryPokemonArgs(
          filter: filter ?? this.filter,
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [filter, order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryQueryPokemonAttackArgs extends _i2.Equatable {
  const QueryQueryPokemonAttackArgs({this.first, this.offset});

  factory QueryQueryPokemonAttackArgs.fromJson(Map<String, dynamic> json) =>
      _$QueryQueryPokemonAttackArgsFromJson(json);

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$QueryQueryPokemonAttackArgsToJson(this);
  QueryQueryPokemonAttackArgs copyWith({int first, int offset}) =>
      QueryQueryPokemonAttackArgs(
          first: first ?? this.first, offset: offset ?? this.offset);
  @override
  List<Object> get props => [first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryQueryPokemonDimensionArgs extends _i2.Equatable {
  const QueryQueryPokemonDimensionArgs({this.order, this.first, this.offset});

  factory QueryQueryPokemonDimensionArgs.fromJson(Map<String, dynamic> json) =>
      _$QueryQueryPokemonDimensionArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonDimensionOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() => _$QueryQueryPokemonDimensionArgsToJson(this);
  QueryQueryPokemonDimensionArgs copyWith(
          {PokemonDimensionOrder order, int first, int offset}) =>
      QueryQueryPokemonDimensionArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class QueryQueryPokemonEvolutionRequirementArgs extends _i2.Equatable {
  const QueryQueryPokemonEvolutionRequirementArgs(
      {this.order, this.first, this.offset});

  factory QueryQueryPokemonEvolutionRequirementArgs.fromJson(
          Map<String, dynamic> json) =>
      _$QueryQueryPokemonEvolutionRequirementArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonEvolutionRequirementOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() =>
      _$QueryQueryPokemonEvolutionRequirementArgsToJson(this);
  QueryQueryPokemonEvolutionRequirementArgs copyWith(
          {PokemonEvolutionRequirementOrder order, int first, int offset}) =>
      QueryQueryPokemonEvolutionRequirementArgs(
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class Query extends _i2.Equatable {
  const Query(
      {this.queryAttack,
      this.getPokemon,
      this.queryPokemon,
      this.queryPokemonAttack,
      this.queryPokemonDimension,
      this.queryPokemonEvolutionRequirement});

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  @_i1.JsonKey()
  final List<Attack> queryAttack;

  @_i1.JsonKey()
  final Pokemon getPokemon;

  @_i1.JsonKey()
  final List<Pokemon> queryPokemon;

  @_i1.JsonKey()
  final List<PokemonAttack> queryPokemonAttack;

  @_i1.JsonKey()
  final List<PokemonDimension> queryPokemonDimension;

  @_i1.JsonKey()
  final List<PokemonEvolutionRequirement> queryPokemonEvolutionRequirement;

  Map<String, dynamic> toJson() => _$QueryToJson(this);
  Query copyWith(
          {List<Attack> queryAttack,
          Pokemon getPokemon,
          List<Pokemon> queryPokemon,
          List<PokemonAttack> queryPokemonAttack,
          List<PokemonDimension> queryPokemonDimension,
          List<PokemonEvolutionRequirement>
              queryPokemonEvolutionRequirement}) =>
      Query(
          queryAttack: queryAttack ?? this.queryAttack,
          getPokemon: getPokemon ?? this.getPokemon,
          queryPokemon: queryPokemon ?? this.queryPokemon,
          queryPokemonAttack: queryPokemonAttack ?? this.queryPokemonAttack,
          queryPokemonDimension:
              queryPokemonDimension ?? this.queryPokemonDimension,
          queryPokemonEvolutionRequirement: queryPokemonEvolutionRequirement ??
              this.queryPokemonEvolutionRequirement);
  @override
  List<Object> get props => [
        queryAttack,
        getPokemon,
        queryPokemon,
        queryPokemonAttack,
        queryPokemonDimension,
        queryPokemonEvolutionRequirement
      ];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class StringExactFilter extends _i2.Equatable {
  const StringExactFilter({this.eq, this.le, this.lt, this.ge, this.gt});

  factory StringExactFilter.fromJson(Map<String, dynamic> json) =>
      _$StringExactFilterFromJson(json);

  @_i1.JsonKey()
  final String eq;

  @_i1.JsonKey()
  final String le;

  @_i1.JsonKey()
  final String lt;

  @_i1.JsonKey()
  final String ge;

  @_i1.JsonKey()
  final String gt;

  Map<String, dynamic> toJson() => _$StringExactFilterToJson(this);
  StringExactFilter copyWith(
          {String eq, String le, String lt, String ge, String gt}) =>
      StringExactFilter(
          eq: eq ?? this.eq,
          le: le ?? this.le,
          lt: lt ?? this.lt,
          ge: ge ?? this.ge,
          gt: gt ?? this.gt);
  @override
  List<Object> get props => [eq, le, lt, ge, gt];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class StringFullTextFilter extends _i2.Equatable {
  const StringFullTextFilter({this.alloftext, this.anyoftext});

  factory StringFullTextFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFullTextFilterFromJson(json);

  @_i1.JsonKey()
  final String alloftext;

  @_i1.JsonKey()
  final String anyoftext;

  Map<String, dynamic> toJson() => _$StringFullTextFilterToJson(this);
  StringFullTextFilter copyWith({String alloftext, String anyoftext}) =>
      StringFullTextFilter(
          alloftext: alloftext ?? this.alloftext,
          anyoftext: anyoftext ?? this.anyoftext);
  @override
  List<Object> get props => [alloftext, anyoftext];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class StringHashFilter extends _i2.Equatable {
  const StringHashFilter({this.eq});

  factory StringHashFilter.fromJson(Map<String, dynamic> json) =>
      _$StringHashFilterFromJson(json);

  @_i1.JsonKey()
  final String eq;

  Map<String, dynamic> toJson() => _$StringHashFilterToJson(this);
  StringHashFilter copyWith({String eq}) => StringHashFilter(eq: eq ?? this.eq);
  @override
  List<Object> get props => [eq];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class StringRegExpFilter extends _i2.Equatable {
  const StringRegExpFilter({this.regexp});

  factory StringRegExpFilter.fromJson(Map<String, dynamic> json) =>
      _$StringRegExpFilterFromJson(json);

  @_i1.JsonKey()
  final String regexp;

  Map<String, dynamic> toJson() => _$StringRegExpFilterToJson(this);
  StringRegExpFilter copyWith({String regexp}) =>
      StringRegExpFilter(regexp: regexp ?? this.regexp);
  @override
  List<Object> get props => [regexp];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class StringTermFilter extends _i2.Equatable {
  const StringTermFilter({this.allofterms, this.anyofterms});

  factory StringTermFilter.fromJson(Map<String, dynamic> json) =>
      _$StringTermFilterFromJson(json);

  @_i1.JsonKey()
  final String allofterms;

  @_i1.JsonKey()
  final String anyofterms;

  Map<String, dynamic> toJson() => _$StringTermFilterToJson(this);
  StringTermFilter copyWith({String allofterms, String anyofterms}) =>
      StringTermFilter(
          allofterms: allofterms ?? this.allofterms,
          anyofterms: anyofterms ?? this.anyofterms);
  @override
  List<Object> get props => [allofterms, anyofterms];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdatePokemonInput extends _i2.Equatable {
  const UpdatePokemonInput({@_i3.required this.filter, this.set$, this.remove});

  factory UpdatePokemonInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePokemonInputFromJson(json);

  @_i1.JsonKey()
  final PokemonFilter filter;

  @_i1.JsonKey(name: 'set')
  final PokemonPatch set$;

  @_i1.JsonKey()
  final PokemonPatch remove;

  Map<String, dynamic> toJson() => _$UpdatePokemonInputToJson(this);
  UpdatePokemonInput copyWith(
          {PokemonFilter filter, PokemonPatch set$, PokemonPatch remove}) =>
      UpdatePokemonInput(
          filter: filter ?? this.filter,
          set$: set$ ?? this.set$,
          remove: remove ?? this.remove);
  @override
  List<Object> get props => [filter, set$, remove];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdatePokemonPayloadPokemonArgs extends _i2.Equatable {
  const UpdatePokemonPayloadPokemonArgs(
      {this.filter, this.order, this.first, this.offset});

  factory UpdatePokemonPayloadPokemonArgs.fromJson(Map<String, dynamic> json) =>
      _$UpdatePokemonPayloadPokemonArgsFromJson(json);

  @_i1.JsonKey()
  final PokemonFilter filter;

  @_i1.JsonKey()
  final PokemonOrder order;

  @_i1.JsonKey()
  final int first;

  @_i1.JsonKey()
  final int offset;

  Map<String, dynamic> toJson() =>
      _$UpdatePokemonPayloadPokemonArgsToJson(this);
  UpdatePokemonPayloadPokemonArgs copyWith(
          {PokemonFilter filter, PokemonOrder order, int first, int offset}) =>
      UpdatePokemonPayloadPokemonArgs(
          filter: filter ?? this.filter,
          order: order ?? this.order,
          first: first ?? this.first,
          offset: offset ?? this.offset);
  @override
  List<Object> get props => [filter, order, first, offset];
  @override
  bool get stringify => true;
}

@_i1.JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdatePokemonPayload extends _i2.Equatable {
  const UpdatePokemonPayload({this.pokemon, this.numUids});

  factory UpdatePokemonPayload.fromJson(Map<String, dynamic> json) =>
      _$UpdatePokemonPayloadFromJson(json);

  @_i1.JsonKey()
  final List<Pokemon> pokemon;

  @_i1.JsonKey()
  final int numUids;

  Map<String, dynamic> toJson() => _$UpdatePokemonPayloadToJson(this);
  UpdatePokemonPayload copyWith({List<Pokemon> pokemon, int numUids}) =>
      UpdatePokemonPayload(
          pokemon: pokemon ?? this.pokemon, numUids: numUids ?? this.numUids);
  @override
  List<Object> get props => [pokemon, numUids];
  @override
  bool get stringify => true;
}

const $ast_secret = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'secret'),
    args: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'field'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'pred'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ],
    locations: [_i4.DirectiveLocation.object, _i4.DirectiveLocation.interface],
    repeatable: false);
const $ast_custom = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'custom'),
    args: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'http'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'CustomHTTP'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'dql'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ],
    locations: [_i4.DirectiveLocation.fieldDefinition],
    repeatable: false);
const $ast_remote = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'remote'),
    args: [],
    locations: [_i4.DirectiveLocation.object, _i4.DirectiveLocation.interface],
    repeatable: false);
const $ast_cascade = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'cascade'),
    args: [],
    locations: [_i4.DirectiveLocation.field],
    repeatable: false);
const $ast_hasInverse = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'hasInverse'),
    args: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'field'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null)
    ],
    locations: [_i4.DirectiveLocation.fieldDefinition],
    repeatable: false);
const $ast_search = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'search'),
    args: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'by'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'DgraphIndex'), isNonNull: true),
              isNonNull: false),
          defaultValue: null)
    ],
    locations: [_i4.DirectiveLocation.fieldDefinition],
    repeatable: false);
const $ast_dgraph = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'dgraph'),
    args: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'type'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'pred'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ],
    locations: [
      _i4.DirectiveLocation.object,
      _i4.DirectiveLocation.interface,
      _i4.DirectiveLocation.fieldDefinition
    ],
    repeatable: false);
const $ast_id = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'id'),
    args: [],
    locations: [_i4.DirectiveLocation.fieldDefinition],
    repeatable: false);
const $ast_withSubscription = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'withSubscription'),
    args: [],
    locations: [_i4.DirectiveLocation.object, _i4.DirectiveLocation.interface],
    repeatable: false);
const $ast_auth = _i4.DirectiveDefinitionNode(
    name: _i4.NameNode(value: 'auth'),
    args: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'query'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AuthRule'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'add'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AuthRule'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'update'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AuthRule'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'delete'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AuthRule'), isNonNull: false),
          defaultValue: null)
    ],
    locations: [_i4.DirectiveLocation.object],
    repeatable: false);
const $ast_AddAttackInput = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddAttackInput'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'type'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'damage'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_AddAttackPayload = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddAttackPayload'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'attack'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'AttackOrder'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Attack'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'numUids'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_AddPokemonAttackInput = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddPokemonAttackInput'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'fast'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'AttackRef'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'special'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'AttackRef'), isNonNull: false),
              isNonNull: false),
          defaultValue: null)
    ]);
const $ast_AddPokemonAttackPayload = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddPokemonAttackPayload'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'pokemonAttack'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonAttack'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'numUids'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_AddPokemonDimensionInput = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddPokemonDimensionInput'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'minimum'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maximum'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_AddPokemonDimensionPayload = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddPokemonDimensionPayload'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'pokemonDimension'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonDimensionOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonDimension'),
                  isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'numUids'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_AddPokemonEvolutionRequirementInput =
    _i4.InputObjectTypeDefinitionNode(
        name: _i4.NameNode(value: 'AddPokemonEvolutionRequirementInput'),
        directives: [],
        fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'amount'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_AddPokemonEvolutionRequirementPayload = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddPokemonEvolutionRequirementPayload'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'pokemonEvolutionRequirement'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name:
                        _i4.NameNode(value: 'PokemonEvolutionRequirementOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonEvolutionRequirement'),
                  isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'numUids'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_AddPokemonInput = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddPokemonInput'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'number'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'weight'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'height'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'classification'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'types'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'resistant'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'attacks'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonAttackRef'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'weaknesses'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'fleeRate'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maxCP'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'evolutions'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonRef'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'evolutionRequirements'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonEvolutionRequirementRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maxHP'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'image'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_AddPokemonPayload = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AddPokemonPayload'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'pokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'filter'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonFilter'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Pokemon'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'numUids'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_Attack = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'Attack'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'type'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'damage'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_AttackOrder = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AttackOrder'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'asc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AttackOrderable'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'desc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AttackOrderable'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'then'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AttackOrder'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_AttackOrderable = _i4.EnumTypeDefinitionNode(
    name: _i4.NameNode(value: 'AttackOrderable'),
    directives: [],
    values: [
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'name'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'type'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'damage'), directives: [])
    ]);
const $ast_AttackRef = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AttackRef'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'type'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'damage'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_AuthRule = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'AuthRule'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'and'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'AuthRule'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'or'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'AuthRule'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'not'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AuthRule'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'rule'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_CustomHTTP = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'CustomHTTP'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'url'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'method'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'HTTPMethod'), isNonNull: true),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'body'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'graphql'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'mode'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Mode'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'forwardHeaders'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'secretHeaders'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'introspectionHeaders'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'skipIntrospection'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Boolean'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_DateTime = _i4.ScalarTypeDefinitionNode(
    name: _i4.NameNode(value: 'DateTime'), directives: []);
const $ast_DateTimeFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'DateTimeFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'eq'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'le'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'lt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'ge'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'gt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_DeletePokemonPayload = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'DeletePokemonPayload'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'pokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'filter'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonFilter'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Pokemon'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'msg'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'numUids'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_DgraphIndex = _i4.EnumTypeDefinitionNode(
    name: _i4.NameNode(value: 'DgraphIndex'),
    directives: [],
    values: [
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'int'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'float'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'bool'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'hash'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'exact'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'term'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'fulltext'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'trigram'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'regexp'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'year'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'month'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'day'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'hour'), directives: [])
    ]);
const $ast_FloatFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'FloatFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'eq'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'le'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'lt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'ge'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'gt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_HTTPMethod = _i4.EnumTypeDefinitionNode(
    name: _i4.NameNode(value: 'HTTPMethod'),
    directives: [],
    values: [
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'GET'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'POST'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'PUT'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'PATCH'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'DELETE'), directives: [])
    ]);
const $ast_IntFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'IntFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'eq'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'le'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'lt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'ge'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'gt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_Mode = _i4.EnumTypeDefinitionNode(
    name: _i4.NameNode(value: 'Mode'),
    directives: [],
    values: [
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'BATCH'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'SINGLE'), directives: [])
    ]);
const $ast_Mutation = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'Mutation'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'addAttack'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'input'),
                directives: [],
                type: _i4.ListTypeNode(
                    type: _i4.NamedTypeNode(
                        name: _i4.NameNode(value: 'AddAttackInput'),
                        isNonNull: true),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AddAttackPayload'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'addPokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'input'),
                directives: [],
                type: _i4.ListTypeNode(
                    type: _i4.NamedTypeNode(
                        name: _i4.NameNode(value: 'AddPokemonInput'),
                        isNonNull: true),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AddPokemonPayload'),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'updatePokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'input'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'UpdatePokemonInput'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'UpdatePokemonPayload'),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'deletePokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'filter'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonFilter'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'DeletePokemonPayload'),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'addPokemonAttack'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'input'),
                directives: [],
                type: _i4.ListTypeNode(
                    type: _i4.NamedTypeNode(
                        name: _i4.NameNode(value: 'AddPokemonAttackInput'),
                        isNonNull: true),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AddPokemonAttackPayload'),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'addPokemonDimension'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'input'),
                directives: [],
                type: _i4.ListTypeNode(
                    type: _i4.NamedTypeNode(
                        name: _i4.NameNode(value: 'AddPokemonDimensionInput'),
                        isNonNull: true),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'AddPokemonDimensionPayload'),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'addPokemonEvolutionRequirement'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'input'),
                directives: [],
                type: _i4.ListTypeNode(
                    type: _i4.NamedTypeNode(
                        name: _i4.NameNode(
                            value: 'AddPokemonEvolutionRequirementInput'),
                        isNonNull: true),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name:
                  _i4.NameNode(value: 'AddPokemonEvolutionRequirementPayload'),
              isNonNull: false))
    ]);
const $ast_Pokemon = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'Pokemon'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'ID'), isNonNull: true)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'number'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'weight'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimension'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'height'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimension'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'classification'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'types'),
          directives: [],
          args: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'resistant'),
          directives: [],
          args: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'attacks'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonAttack'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'weaknesses'),
          directives: [],
          args: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'fleeRate'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'maxCP'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'evolutions'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'filter'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonFilter'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Pokemon'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'evolutionRequirements'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonEvolutionRequirement'),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'maxHP'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'image'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false))
    ]);
const $ast_PokemonAttack = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonAttack'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'fast'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'AttackOrder'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Attack'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'special'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'AttackOrder'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Attack'), isNonNull: false),
              isNonNull: false))
    ]);
const $ast_PokemonAttackRef = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonAttackRef'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'fast'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'AttackRef'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'special'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'AttackRef'), isNonNull: false),
              isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonDimension = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonDimension'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'minimum'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'maximum'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false))
    ]);
const $ast_PokemonDimensionOrder = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonDimensionOrder'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'asc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionOrderable'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'desc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionOrderable'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'then'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionOrder'),
              isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonDimensionOrderable = _i4.EnumTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonDimensionOrderable'),
    directives: [],
    values: [
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'minimum'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'maximum'), directives: [])
    ]);
const $ast_PokemonDimensionRef = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonDimensionRef'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'minimum'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maximum'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonEvolutionRequirement = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonEvolutionRequirement'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'amount'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false))
    ]);
const $ast_PokemonEvolutionRequirementOrder = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonEvolutionRequirementOrder'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'asc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonEvolutionRequirementOrderable'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'desc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonEvolutionRequirementOrderable'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'then'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonEvolutionRequirementOrder'),
              isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonEvolutionRequirementOrderable = _i4.EnumTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonEvolutionRequirementOrderable'),
    directives: [],
    values: [
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'amount'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'name'), directives: [])
    ]);
const $ast_PokemonEvolutionRequirementRef = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonEvolutionRequirementRef'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'amount'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'id'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'ID'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'StringFullTextFilter'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'and'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonFilter'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'or'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonFilter'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'not'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonFilter'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonOrder = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonOrder'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'asc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonOrderable'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'desc'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonOrderable'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'then'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonOrder'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonOrderable = _i4.EnumTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonOrderable'),
    directives: [],
    values: [
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'number'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'name'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'classification'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'types'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'resistant'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'weaknesses'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'fleeRate'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'maxCP'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'maxHP'), directives: []),
      _i4.EnumValueDefinitionNode(
          name: _i4.NameNode(value: 'image'), directives: [])
    ]);
const $ast_PokemonPatch = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonPatch'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'number'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'weight'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'height'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'classification'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'types'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'resistant'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'attacks'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonAttackRef'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'weaknesses'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'fleeRate'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maxCP'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'evolutions'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonRef'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'evolutionRequirements'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonEvolutionRequirementRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maxHP'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'image'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_PokemonRef = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'PokemonRef'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'id'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'ID'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'number'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'name'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'weight'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'height'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonDimensionRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'classification'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'types'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'resistant'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'attacks'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonAttackRef'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'weaknesses'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'fleeRate'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Float'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maxCP'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'evolutions'),
          directives: [],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonRef'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'evolutionRequirements'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonEvolutionRequirementRef'),
              isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'maxHP'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'image'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_Query = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'Query'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'queryAttack'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'AttackOrder'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Attack'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'getPokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'id'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'ID'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Pokemon'), isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'queryPokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'filter'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonFilter'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Pokemon'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'queryPokemonAttack'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonAttack'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'queryPokemonDimension'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonDimensionOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonDimension'),
                  isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'queryPokemonEvolutionRequirement'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name:
                        _i4.NameNode(value: 'PokemonEvolutionRequirementOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'PokemonEvolutionRequirement'),
                  isNonNull: false),
              isNonNull: false))
    ]);
const $ast_StringExactFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'StringExactFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'eq'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'le'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'lt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'ge'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'gt'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_StringFullTextFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'StringFullTextFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'alloftext'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'anyoftext'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_StringHashFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'StringHashFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'eq'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_StringRegExpFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'StringRegExpFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'regexp'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_StringTermFilter = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'StringTermFilter'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'allofterms'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'anyofterms'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_UpdatePokemonInput = _i4.InputObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'UpdatePokemonInput'),
    directives: [],
    fields: [
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'filter'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonFilter'), isNonNull: true),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'set'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonPatch'), isNonNull: false),
          defaultValue: null),
      _i4.InputValueDefinitionNode(
          name: _i4.NameNode(value: 'remove'),
          directives: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'PokemonPatch'), isNonNull: false),
          defaultValue: null)
    ]);
const $ast_UpdatePokemonPayload = _i4.ObjectTypeDefinitionNode(
    name: _i4.NameNode(value: 'UpdatePokemonPayload'),
    directives: [],
    interfaces: [],
    fields: [
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'pokemon'),
          directives: [],
          args: [
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'filter'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonFilter'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'order'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'PokemonOrder'),
                    isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'first'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i4.InputValueDefinitionNode(
                name: _i4.NameNode(value: 'offset'),
                directives: [],
                type: _i4.NamedTypeNode(
                    name: _i4.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i4.ListTypeNode(
              type: _i4.NamedTypeNode(
                  name: _i4.NameNode(value: 'Pokemon'), isNonNull: false),
              isNonNull: false)),
      _i4.FieldDefinitionNode(
          name: _i4.NameNode(value: 'numUids'),
          directives: [],
          args: [],
          type: _i4.NamedTypeNode(
              name: _i4.NameNode(value: 'Int'), isNonNull: false))
    ]);
const $ast_document = _i4.DocumentNode(definitions: [
  $ast_secret,
  $ast_custom,
  $ast_remote,
  $ast_cascade,
  $ast_hasInverse,
  $ast_search,
  $ast_dgraph,
  $ast_id,
  $ast_withSubscription,
  $ast_auth,
  $ast_AddAttackInput,
  $ast_AddAttackPayload,
  $ast_AddPokemonAttackInput,
  $ast_AddPokemonAttackPayload,
  $ast_AddPokemonDimensionInput,
  $ast_AddPokemonDimensionPayload,
  $ast_AddPokemonEvolutionRequirementInput,
  $ast_AddPokemonEvolutionRequirementPayload,
  $ast_AddPokemonInput,
  $ast_AddPokemonPayload,
  $ast_Attack,
  $ast_AttackOrder,
  $ast_AttackOrderable,
  $ast_AttackRef,
  $ast_AuthRule,
  $ast_CustomHTTP,
  $ast_DateTime,
  $ast_DateTimeFilter,
  $ast_DeletePokemonPayload,
  $ast_DgraphIndex,
  $ast_FloatFilter,
  $ast_HTTPMethod,
  $ast_IntFilter,
  $ast_Mode,
  $ast_Mutation,
  $ast_Pokemon,
  $ast_PokemonAttack,
  $ast_PokemonAttackRef,
  $ast_PokemonDimension,
  $ast_PokemonDimensionOrder,
  $ast_PokemonDimensionOrderable,
  $ast_PokemonDimensionRef,
  $ast_PokemonEvolutionRequirement,
  $ast_PokemonEvolutionRequirementOrder,
  $ast_PokemonEvolutionRequirementOrderable,
  $ast_PokemonEvolutionRequirementRef,
  $ast_PokemonFilter,
  $ast_PokemonOrder,
  $ast_PokemonOrderable,
  $ast_PokemonPatch,
  $ast_PokemonRef,
  $ast_Query,
  $ast_StringExactFilter,
  $ast_StringFullTextFilter,
  $ast_StringHashFilter,
  $ast_StringRegExpFilter,
  $ast_StringTermFilter,
  $ast_UpdatePokemonInput,
  $ast_UpdatePokemonPayload
]);
