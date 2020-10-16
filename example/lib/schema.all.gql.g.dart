// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.all.gql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAttackInput _$AddAttackInputFromJson(Map<String, dynamic> json) {
  return AddAttackInput(
    name: json['name'] as String,
    type: json['type'] as String,
    damage: json['damage'] as int,
  );
}

Map<String, dynamic> _$AddAttackInputToJson(AddAttackInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('damage', instance.damage);
  return val;
}

AddAttackPayloadAttackArgs _$AddAttackPayloadAttackArgsFromJson(
    Map<String, dynamic> json) {
  return AddAttackPayloadAttackArgs(
    order: json['order'] == null
        ? null
        : AttackOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$AddAttackPayloadAttackArgsToJson(
    AddAttackPayloadAttackArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

AddAttackPayload _$AddAttackPayloadFromJson(Map<String, dynamic> json) {
  return AddAttackPayload(
    attack: (json['attack'] as List)
        ?.map((e) =>
            e == null ? null : Attack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numUids: json['numUids'] as int,
  );
}

Map<String, dynamic> _$AddAttackPayloadToJson(AddAttackPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attack', instance.attack?.map((e) => e?.toJson())?.toList());
  writeNotNull('numUids', instance.numUids);
  return val;
}

AddPokemonAttackInput _$AddPokemonAttackInputFromJson(
    Map<String, dynamic> json) {
  return AddPokemonAttackInput(
    fast: (json['fast'] as List)
        ?.map((e) =>
            e == null ? null : AttackRef.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    special: (json['special'] as List)
        ?.map((e) =>
            e == null ? null : AttackRef.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AddPokemonAttackInputToJson(
    AddPokemonAttackInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fast', instance.fast?.map((e) => e?.toJson())?.toList());
  writeNotNull('special', instance.special?.map((e) => e?.toJson())?.toList());
  return val;
}

AddPokemonAttackPayloadPokemonAttackArgs
    _$AddPokemonAttackPayloadPokemonAttackArgsFromJson(
        Map<String, dynamic> json) {
  return AddPokemonAttackPayloadPokemonAttackArgs(
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$AddPokemonAttackPayloadPokemonAttackArgsToJson(
    AddPokemonAttackPayloadPokemonAttackArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

AddPokemonAttackPayload _$AddPokemonAttackPayloadFromJson(
    Map<String, dynamic> json) {
  return AddPokemonAttackPayload(
    pokemonAttack: (json['pokemonAttack'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonAttack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numUids: json['numUids'] as int,
  );
}

Map<String, dynamic> _$AddPokemonAttackPayloadToJson(
    AddPokemonAttackPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pokemonAttack',
      instance.pokemonAttack?.map((e) => e?.toJson())?.toList());
  writeNotNull('numUids', instance.numUids);
  return val;
}

AddPokemonDimensionInput _$AddPokemonDimensionInputFromJson(
    Map<String, dynamic> json) {
  return AddPokemonDimensionInput(
    minimum: json['minimum'] as String,
    maximum: json['maximum'] as String,
  );
}

Map<String, dynamic> _$AddPokemonDimensionInputToJson(
    AddPokemonDimensionInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minimum', instance.minimum);
  writeNotNull('maximum', instance.maximum);
  return val;
}

AddPokemonDimensionPayloadPokemonDimensionArgs
    _$AddPokemonDimensionPayloadPokemonDimensionArgsFromJson(
        Map<String, dynamic> json) {
  return AddPokemonDimensionPayloadPokemonDimensionArgs(
    order: json['order'] == null
        ? null
        : PokemonDimensionOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$AddPokemonDimensionPayloadPokemonDimensionArgsToJson(
    AddPokemonDimensionPayloadPokemonDimensionArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

AddPokemonDimensionPayload _$AddPokemonDimensionPayloadFromJson(
    Map<String, dynamic> json) {
  return AddPokemonDimensionPayload(
    pokemonDimension: (json['pokemonDimension'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonDimension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numUids: json['numUids'] as int,
  );
}

Map<String, dynamic> _$AddPokemonDimensionPayloadToJson(
    AddPokemonDimensionPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pokemonDimension',
      instance.pokemonDimension?.map((e) => e?.toJson())?.toList());
  writeNotNull('numUids', instance.numUids);
  return val;
}

AddPokemonEvolutionRequirementInput
    _$AddPokemonEvolutionRequirementInputFromJson(Map<String, dynamic> json) {
  return AddPokemonEvolutionRequirementInput(
    amount: json['amount'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$AddPokemonEvolutionRequirementInputToJson(
    AddPokemonEvolutionRequirementInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('name', instance.name);
  return val;
}

AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs
    _$AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgsFromJson(
        Map<String, dynamic> json) {
  return AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs(
    order: json['order'] == null
        ? null
        : PokemonEvolutionRequirementOrder.fromJson(
            json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic>
    _$AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgsToJson(
        AddPokemonEvolutionRequirementPayloadPokemonEvolutionRequirementArgs
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

AddPokemonEvolutionRequirementPayload
    _$AddPokemonEvolutionRequirementPayloadFromJson(Map<String, dynamic> json) {
  return AddPokemonEvolutionRequirementPayload(
    pokemonEvolutionRequirement: (json['pokemonEvolutionRequirement'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonEvolutionRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numUids: json['numUids'] as int,
  );
}

Map<String, dynamic> _$AddPokemonEvolutionRequirementPayloadToJson(
    AddPokemonEvolutionRequirementPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pokemonEvolutionRequirement',
      instance.pokemonEvolutionRequirement?.map((e) => e?.toJson())?.toList());
  writeNotNull('numUids', instance.numUids);
  return val;
}

AddPokemonInput _$AddPokemonInputFromJson(Map<String, dynamic> json) {
  return AddPokemonInput(
    number: json['number'] as String,
    name: json['name'] as String,
    weight: json['weight'] == null
        ? null
        : PokemonDimensionRef.fromJson(json['weight'] as Map<String, dynamic>),
    height: json['height'] == null
        ? null
        : PokemonDimensionRef.fromJson(json['height'] as Map<String, dynamic>),
    classification: json['classification'] as String,
    types: (json['types'] as List)?.map((e) => e as String)?.toList(),
    resistant: (json['resistant'] as List)?.map((e) => e as String)?.toList(),
    attacks: json['attacks'] == null
        ? null
        : PokemonAttackRef.fromJson(json['attacks'] as Map<String, dynamic>),
    weaknesses: (json['weaknesses'] as List)?.map((e) => e as String)?.toList(),
    fleeRate: (json['fleeRate'] as num)?.toDouble(),
    maxCP: json['maxCP'] as int,
    evolutions: (json['evolutions'] as List)
        ?.map((e) =>
            e == null ? null : PokemonRef.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evolutionRequirements: json['evolutionRequirements'] == null
        ? null
        : PokemonEvolutionRequirementRef.fromJson(
            json['evolutionRequirements'] as Map<String, dynamic>),
    maxHP: json['maxHP'] as int,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$AddPokemonInputToJson(AddPokemonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  writeNotNull('name', instance.name);
  writeNotNull('weight', instance.weight?.toJson());
  writeNotNull('height', instance.height?.toJson());
  writeNotNull('classification', instance.classification);
  writeNotNull('types', instance.types);
  writeNotNull('resistant', instance.resistant);
  writeNotNull('attacks', instance.attacks?.toJson());
  writeNotNull('weaknesses', instance.weaknesses);
  writeNotNull('fleeRate', instance.fleeRate);
  writeNotNull('maxCP', instance.maxCP);
  writeNotNull(
      'evolutions', instance.evolutions?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'evolutionRequirements', instance.evolutionRequirements?.toJson());
  writeNotNull('maxHP', instance.maxHP);
  writeNotNull('image', instance.image);
  return val;
}

AddPokemonPayloadPokemonArgs _$AddPokemonPayloadPokemonArgsFromJson(
    Map<String, dynamic> json) {
  return AddPokemonPayloadPokemonArgs(
    filter: json['filter'] == null
        ? null
        : PokemonFilter.fromJson(json['filter'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : PokemonOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$AddPokemonPayloadPokemonArgsToJson(
    AddPokemonPayloadPokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

AddPokemonPayload _$AddPokemonPayloadFromJson(Map<String, dynamic> json) {
  return AddPokemonPayload(
    pokemon: (json['pokemon'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numUids: json['numUids'] as int,
  );
}

Map<String, dynamic> _$AddPokemonPayloadToJson(AddPokemonPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pokemon', instance.pokemon?.map((e) => e?.toJson())?.toList());
  writeNotNull('numUids', instance.numUids);
  return val;
}

Attack _$AttackFromJson(Map<String, dynamic> json) {
  return Attack(
    name: json['name'] as String,
    type: json['type'] as String,
    damage: json['damage'] as int,
  );
}

Map<String, dynamic> _$AttackToJson(Attack instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('damage', instance.damage);
  return val;
}

AttackOrder _$AttackOrderFromJson(Map<String, dynamic> json) {
  return AttackOrder(
    asc: _$enumDecodeNullable(_$AttackOrderableEnumMap, json['asc']),
    desc: _$enumDecodeNullable(_$AttackOrderableEnumMap, json['desc']),
    then: json['then'] == null
        ? null
        : AttackOrder.fromJson(json['then'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttackOrderToJson(AttackOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asc', _$AttackOrderableEnumMap[instance.asc]);
  writeNotNull('desc', _$AttackOrderableEnumMap[instance.desc]);
  writeNotNull('then', instance.then?.toJson());
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$AttackOrderableEnumMap = {
  AttackOrderable.name: 'name',
  AttackOrderable.type: 'type',
  AttackOrderable.damage: 'damage',
};

AttackRef _$AttackRefFromJson(Map<String, dynamic> json) {
  return AttackRef(
    name: json['name'] as String,
    type: json['type'] as String,
    damage: json['damage'] as int,
  );
}

Map<String, dynamic> _$AttackRefToJson(AttackRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('damage', instance.damage);
  return val;
}

AuthRule _$AuthRuleFromJson(Map<String, dynamic> json) {
  return AuthRule(
    and: (json['and'] as List)
        ?.map((e) =>
            e == null ? null : AuthRule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    or: (json['or'] as List)
        ?.map((e) =>
            e == null ? null : AuthRule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    not: json['not'] == null
        ? null
        : AuthRule.fromJson(json['not'] as Map<String, dynamic>),
    rule: json['rule'] as String,
  );
}

Map<String, dynamic> _$AuthRuleToJson(AuthRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('and', instance.and?.map((e) => e?.toJson())?.toList());
  writeNotNull('or', instance.or?.map((e) => e?.toJson())?.toList());
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('rule', instance.rule);
  return val;
}

CustomHTTP _$CustomHTTPFromJson(Map<String, dynamic> json) {
  return CustomHTTP(
    url: json['url'] as String,
    method: _$enumDecodeNullable(_$HTTPMethodEnumMap, json['method']),
    body: json['body'] as String,
    graphql: json['graphql'] as String,
    mode: _$enumDecodeNullable(_$ModeEnumMap, json['mode']),
    forwardHeaders:
        (json['forwardHeaders'] as List)?.map((e) => e as String)?.toList(),
    secretHeaders:
        (json['secretHeaders'] as List)?.map((e) => e as String)?.toList(),
    introspectionHeaders: (json['introspectionHeaders'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    skipIntrospection: json['skipIntrospection'] as bool,
  );
}

Map<String, dynamic> _$CustomHTTPToJson(CustomHTTP instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('method', _$HTTPMethodEnumMap[instance.method]);
  writeNotNull('body', instance.body);
  writeNotNull('graphql', instance.graphql);
  writeNotNull('mode', _$ModeEnumMap[instance.mode]);
  writeNotNull('forwardHeaders', instance.forwardHeaders);
  writeNotNull('secretHeaders', instance.secretHeaders);
  writeNotNull('introspectionHeaders', instance.introspectionHeaders);
  writeNotNull('skipIntrospection', instance.skipIntrospection);
  return val;
}

const _$HTTPMethodEnumMap = {
  HTTPMethod.GET: 'GET',
  HTTPMethod.POST: 'POST',
  HTTPMethod.PUT: 'PUT',
  HTTPMethod.PATCH: 'PATCH',
  HTTPMethod.DELETE: 'DELETE',
};

const _$ModeEnumMap = {
  Mode.BATCH: 'BATCH',
  Mode.SINGLE: 'SINGLE',
};

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) {
  return DateTimeFilter(
    eq: $DateTimeFromJson(json['eq'] as String),
    le: $DateTimeFromJson(json['le'] as String),
    lt: $DateTimeFromJson(json['lt'] as String),
    ge: $DateTimeFromJson(json['ge'] as String),
    gt: $DateTimeFromJson(json['gt'] as String),
  );
}

Map<String, dynamic> _$DateTimeFilterToJson(DateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eq', $DateTimeToJson(instance.eq));
  writeNotNull('le', $DateTimeToJson(instance.le));
  writeNotNull('lt', $DateTimeToJson(instance.lt));
  writeNotNull('ge', $DateTimeToJson(instance.ge));
  writeNotNull('gt', $DateTimeToJson(instance.gt));
  return val;
}

DeletePokemonPayloadPokemonArgs _$DeletePokemonPayloadPokemonArgsFromJson(
    Map<String, dynamic> json) {
  return DeletePokemonPayloadPokemonArgs(
    filter: json['filter'] == null
        ? null
        : PokemonFilter.fromJson(json['filter'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : PokemonOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$DeletePokemonPayloadPokemonArgsToJson(
    DeletePokemonPayloadPokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

DeletePokemonPayload _$DeletePokemonPayloadFromJson(Map<String, dynamic> json) {
  return DeletePokemonPayload(
    pokemon: (json['pokemon'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    msg: json['msg'] as String,
    numUids: json['numUids'] as int,
  );
}

Map<String, dynamic> _$DeletePokemonPayloadToJson(
    DeletePokemonPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pokemon', instance.pokemon?.map((e) => e?.toJson())?.toList());
  writeNotNull('msg', instance.msg);
  writeNotNull('numUids', instance.numUids);
  return val;
}

FloatFilter _$FloatFilterFromJson(Map<String, dynamic> json) {
  return FloatFilter(
    eq: (json['eq'] as num)?.toDouble(),
    le: (json['le'] as num)?.toDouble(),
    lt: (json['lt'] as num)?.toDouble(),
    ge: (json['ge'] as num)?.toDouble(),
    gt: (json['gt'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$FloatFilterToJson(FloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eq', instance.eq);
  writeNotNull('le', instance.le);
  writeNotNull('lt', instance.lt);
  writeNotNull('ge', instance.ge);
  writeNotNull('gt', instance.gt);
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) {
  return IntFilter(
    eq: json['eq'] as int,
    le: json['le'] as int,
    lt: json['lt'] as int,
    ge: json['ge'] as int,
    gt: json['gt'] as int,
  );
}

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eq', instance.eq);
  writeNotNull('le', instance.le);
  writeNotNull('lt', instance.lt);
  writeNotNull('ge', instance.ge);
  writeNotNull('gt', instance.gt);
  return val;
}

MutationAddAttackArgs _$MutationAddAttackArgsFromJson(
    Map<String, dynamic> json) {
  return MutationAddAttackArgs(
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : AddAttackInput.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MutationAddAttackArgsToJson(
    MutationAddAttackArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  return val;
}

MutationAddPokemonArgs _$MutationAddPokemonArgsFromJson(
    Map<String, dynamic> json) {
  return MutationAddPokemonArgs(
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : AddPokemonInput.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MutationAddPokemonArgsToJson(
    MutationAddPokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  return val;
}

MutationUpdatePokemonArgs _$MutationUpdatePokemonArgsFromJson(
    Map<String, dynamic> json) {
  return MutationUpdatePokemonArgs(
    input: json['input'] == null
        ? null
        : UpdatePokemonInput.fromJson(json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationUpdatePokemonArgsToJson(
    MutationUpdatePokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.toJson());
  return val;
}

MutationDeletePokemonArgs _$MutationDeletePokemonArgsFromJson(
    Map<String, dynamic> json) {
  return MutationDeletePokemonArgs(
    filter: json['filter'] == null
        ? null
        : PokemonFilter.fromJson(json['filter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationDeletePokemonArgsToJson(
    MutationDeletePokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  return val;
}

MutationAddPokemonAttackArgs _$MutationAddPokemonAttackArgsFromJson(
    Map<String, dynamic> json) {
  return MutationAddPokemonAttackArgs(
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : AddPokemonAttackInput.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MutationAddPokemonAttackArgsToJson(
    MutationAddPokemonAttackArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  return val;
}

MutationAddPokemonDimensionArgs _$MutationAddPokemonDimensionArgsFromJson(
    Map<String, dynamic> json) {
  return MutationAddPokemonDimensionArgs(
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : AddPokemonDimensionInput.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MutationAddPokemonDimensionArgsToJson(
    MutationAddPokemonDimensionArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  return val;
}

MutationAddPokemonEvolutionRequirementArgs
    _$MutationAddPokemonEvolutionRequirementArgsFromJson(
        Map<String, dynamic> json) {
  return MutationAddPokemonEvolutionRequirementArgs(
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : AddPokemonEvolutionRequirementInput.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MutationAddPokemonEvolutionRequirementArgsToJson(
    MutationAddPokemonEvolutionRequirementArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  return val;
}

Mutation _$MutationFromJson(Map<String, dynamic> json) {
  return Mutation(
    addAttack: json['addAttack'] == null
        ? null
        : AddAttackPayload.fromJson(json['addAttack'] as Map<String, dynamic>),
    addPokemon: json['addPokemon'] == null
        ? null
        : AddPokemonPayload.fromJson(
            json['addPokemon'] as Map<String, dynamic>),
    updatePokemon: json['updatePokemon'] == null
        ? null
        : UpdatePokemonPayload.fromJson(
            json['updatePokemon'] as Map<String, dynamic>),
    deletePokemon: json['deletePokemon'] == null
        ? null
        : DeletePokemonPayload.fromJson(
            json['deletePokemon'] as Map<String, dynamic>),
    addPokemonAttack: json['addPokemonAttack'] == null
        ? null
        : AddPokemonAttackPayload.fromJson(
            json['addPokemonAttack'] as Map<String, dynamic>),
    addPokemonDimension: json['addPokemonDimension'] == null
        ? null
        : AddPokemonDimensionPayload.fromJson(
            json['addPokemonDimension'] as Map<String, dynamic>),
    addPokemonEvolutionRequirement:
        json['addPokemonEvolutionRequirement'] == null
            ? null
            : AddPokemonEvolutionRequirementPayload.fromJson(
                json['addPokemonEvolutionRequirement'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationToJson(Mutation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addAttack', instance.addAttack?.toJson());
  writeNotNull('addPokemon', instance.addPokemon?.toJson());
  writeNotNull('updatePokemon', instance.updatePokemon?.toJson());
  writeNotNull('deletePokemon', instance.deletePokemon?.toJson());
  writeNotNull('addPokemonAttack', instance.addPokemonAttack?.toJson());
  writeNotNull('addPokemonDimension', instance.addPokemonDimension?.toJson());
  writeNotNull('addPokemonEvolutionRequirement',
      instance.addPokemonEvolutionRequirement?.toJson());
  return val;
}

PokemonEvolutionsArgs _$PokemonEvolutionsArgsFromJson(
    Map<String, dynamic> json) {
  return PokemonEvolutionsArgs(
    filter: json['filter'] == null
        ? null
        : PokemonFilter.fromJson(json['filter'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : PokemonOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$PokemonEvolutionsArgsToJson(
    PokemonEvolutionsArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return Pokemon(
    id: json['id'] as String,
    number: json['number'] as String,
    name: json['name'] as String,
    weight: json['weight'] == null
        ? null
        : PokemonDimension.fromJson(json['weight'] as Map<String, dynamic>),
    height: json['height'] == null
        ? null
        : PokemonDimension.fromJson(json['height'] as Map<String, dynamic>),
    classification: json['classification'] as String,
    types: (json['types'] as List)?.map((e) => e as String)?.toList(),
    resistant: (json['resistant'] as List)?.map((e) => e as String)?.toList(),
    attacks: json['attacks'] == null
        ? null
        : PokemonAttack.fromJson(json['attacks'] as Map<String, dynamic>),
    weaknesses: (json['weaknesses'] as List)?.map((e) => e as String)?.toList(),
    fleeRate: (json['fleeRate'] as num)?.toDouble(),
    maxCP: json['maxCP'] as int,
    evolutions: (json['evolutions'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evolutionRequirements: json['evolutionRequirements'] == null
        ? null
        : PokemonEvolutionRequirement.fromJson(
            json['evolutionRequirements'] as Map<String, dynamic>),
    maxHP: json['maxHP'] as int,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$PokemonToJson(Pokemon instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('number', instance.number);
  writeNotNull('name', instance.name);
  writeNotNull('weight', instance.weight?.toJson());
  writeNotNull('height', instance.height?.toJson());
  writeNotNull('classification', instance.classification);
  writeNotNull('types', instance.types);
  writeNotNull('resistant', instance.resistant);
  writeNotNull('attacks', instance.attacks?.toJson());
  writeNotNull('weaknesses', instance.weaknesses);
  writeNotNull('fleeRate', instance.fleeRate);
  writeNotNull('maxCP', instance.maxCP);
  writeNotNull(
      'evolutions', instance.evolutions?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'evolutionRequirements', instance.evolutionRequirements?.toJson());
  writeNotNull('maxHP', instance.maxHP);
  writeNotNull('image', instance.image);
  return val;
}

PokemonAttackFastArgs _$PokemonAttackFastArgsFromJson(
    Map<String, dynamic> json) {
  return PokemonAttackFastArgs(
    order: json['order'] == null
        ? null
        : AttackOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$PokemonAttackFastArgsToJson(
    PokemonAttackFastArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

PokemonAttackSpecialArgs _$PokemonAttackSpecialArgsFromJson(
    Map<String, dynamic> json) {
  return PokemonAttackSpecialArgs(
    order: json['order'] == null
        ? null
        : AttackOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$PokemonAttackSpecialArgsToJson(
    PokemonAttackSpecialArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

PokemonAttack _$PokemonAttackFromJson(Map<String, dynamic> json) {
  return PokemonAttack(
    fast: (json['fast'] as List)
        ?.map((e) =>
            e == null ? null : Attack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    special: (json['special'] as List)
        ?.map((e) =>
            e == null ? null : Attack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonAttackToJson(PokemonAttack instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fast', instance.fast?.map((e) => e?.toJson())?.toList());
  writeNotNull('special', instance.special?.map((e) => e?.toJson())?.toList());
  return val;
}

PokemonAttackRef _$PokemonAttackRefFromJson(Map<String, dynamic> json) {
  return PokemonAttackRef(
    fast: (json['fast'] as List)
        ?.map((e) =>
            e == null ? null : AttackRef.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    special: (json['special'] as List)
        ?.map((e) =>
            e == null ? null : AttackRef.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonAttackRefToJson(PokemonAttackRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fast', instance.fast?.map((e) => e?.toJson())?.toList());
  writeNotNull('special', instance.special?.map((e) => e?.toJson())?.toList());
  return val;
}

PokemonDimension _$PokemonDimensionFromJson(Map<String, dynamic> json) {
  return PokemonDimension(
    minimum: json['minimum'] as String,
    maximum: json['maximum'] as String,
  );
}

Map<String, dynamic> _$PokemonDimensionToJson(PokemonDimension instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minimum', instance.minimum);
  writeNotNull('maximum', instance.maximum);
  return val;
}

PokemonDimensionOrder _$PokemonDimensionOrderFromJson(
    Map<String, dynamic> json) {
  return PokemonDimensionOrder(
    asc: _$enumDecodeNullable(_$PokemonDimensionOrderableEnumMap, json['asc']),
    desc:
        _$enumDecodeNullable(_$PokemonDimensionOrderableEnumMap, json['desc']),
    then: json['then'] == null
        ? null
        : PokemonDimensionOrder.fromJson(json['then'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PokemonDimensionOrderToJson(
    PokemonDimensionOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asc', _$PokemonDimensionOrderableEnumMap[instance.asc]);
  writeNotNull('desc', _$PokemonDimensionOrderableEnumMap[instance.desc]);
  writeNotNull('then', instance.then?.toJson());
  return val;
}

const _$PokemonDimensionOrderableEnumMap = {
  PokemonDimensionOrderable.minimum: 'minimum',
  PokemonDimensionOrderable.maximum: 'maximum',
};

PokemonDimensionRef _$PokemonDimensionRefFromJson(Map<String, dynamic> json) {
  return PokemonDimensionRef(
    minimum: json['minimum'] as String,
    maximum: json['maximum'] as String,
  );
}

Map<String, dynamic> _$PokemonDimensionRefToJson(PokemonDimensionRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minimum', instance.minimum);
  writeNotNull('maximum', instance.maximum);
  return val;
}

PokemonEvolutionRequirement _$PokemonEvolutionRequirementFromJson(
    Map<String, dynamic> json) {
  return PokemonEvolutionRequirement(
    amount: json['amount'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PokemonEvolutionRequirementToJson(
    PokemonEvolutionRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('name', instance.name);
  return val;
}

PokemonEvolutionRequirementOrder _$PokemonEvolutionRequirementOrderFromJson(
    Map<String, dynamic> json) {
  return PokemonEvolutionRequirementOrder(
    asc: _$enumDecodeNullable(
        _$PokemonEvolutionRequirementOrderableEnumMap, json['asc']),
    desc: _$enumDecodeNullable(
        _$PokemonEvolutionRequirementOrderableEnumMap, json['desc']),
    then: json['then'] == null
        ? null
        : PokemonEvolutionRequirementOrder.fromJson(
            json['then'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PokemonEvolutionRequirementOrderToJson(
    PokemonEvolutionRequirementOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'asc', _$PokemonEvolutionRequirementOrderableEnumMap[instance.asc]);
  writeNotNull(
      'desc', _$PokemonEvolutionRequirementOrderableEnumMap[instance.desc]);
  writeNotNull('then', instance.then?.toJson());
  return val;
}

const _$PokemonEvolutionRequirementOrderableEnumMap = {
  PokemonEvolutionRequirementOrderable.amount: 'amount',
  PokemonEvolutionRequirementOrderable.name: 'name',
};

PokemonEvolutionRequirementRef _$PokemonEvolutionRequirementRefFromJson(
    Map<String, dynamic> json) {
  return PokemonEvolutionRequirementRef(
    amount: json['amount'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PokemonEvolutionRequirementRefToJson(
    PokemonEvolutionRequirementRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('name', instance.name);
  return val;
}

PokemonFilter _$PokemonFilterFromJson(Map<String, dynamic> json) {
  return PokemonFilter(
    id: (json['id'] as List)?.map((e) => e as String)?.toList(),
    name: json['name'] == null
        ? null
        : StringFullTextFilter.fromJson(json['name'] as Map<String, dynamic>),
    and: json['and'] == null
        ? null
        : PokemonFilter.fromJson(json['and'] as Map<String, dynamic>),
    or: json['or'] == null
        ? null
        : PokemonFilter.fromJson(json['or'] as Map<String, dynamic>),
    not: json['not'] == null
        ? null
        : PokemonFilter.fromJson(json['not'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PokemonFilterToJson(PokemonFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('and', instance.and?.toJson());
  writeNotNull('or', instance.or?.toJson());
  writeNotNull('not', instance.not?.toJson());
  return val;
}

PokemonOrder _$PokemonOrderFromJson(Map<String, dynamic> json) {
  return PokemonOrder(
    asc: _$enumDecodeNullable(_$PokemonOrderableEnumMap, json['asc']),
    desc: _$enumDecodeNullable(_$PokemonOrderableEnumMap, json['desc']),
    then: json['then'] == null
        ? null
        : PokemonOrder.fromJson(json['then'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PokemonOrderToJson(PokemonOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asc', _$PokemonOrderableEnumMap[instance.asc]);
  writeNotNull('desc', _$PokemonOrderableEnumMap[instance.desc]);
  writeNotNull('then', instance.then?.toJson());
  return val;
}

const _$PokemonOrderableEnumMap = {
  PokemonOrderable.number: 'number',
  PokemonOrderable.name: 'name',
  PokemonOrderable.classification: 'classification',
  PokemonOrderable.types: 'types',
  PokemonOrderable.resistant: 'resistant',
  PokemonOrderable.weaknesses: 'weaknesses',
  PokemonOrderable.fleeRate: 'fleeRate',
  PokemonOrderable.maxCP: 'maxCP',
  PokemonOrderable.maxHP: 'maxHP',
  PokemonOrderable.image: 'image',
};

PokemonPatch _$PokemonPatchFromJson(Map<String, dynamic> json) {
  return PokemonPatch(
    number: json['number'] as String,
    name: json['name'] as String,
    weight: json['weight'] == null
        ? null
        : PokemonDimensionRef.fromJson(json['weight'] as Map<String, dynamic>),
    height: json['height'] == null
        ? null
        : PokemonDimensionRef.fromJson(json['height'] as Map<String, dynamic>),
    classification: json['classification'] as String,
    types: (json['types'] as List)?.map((e) => e as String)?.toList(),
    resistant: (json['resistant'] as List)?.map((e) => e as String)?.toList(),
    attacks: json['attacks'] == null
        ? null
        : PokemonAttackRef.fromJson(json['attacks'] as Map<String, dynamic>),
    weaknesses: (json['weaknesses'] as List)?.map((e) => e as String)?.toList(),
    fleeRate: (json['fleeRate'] as num)?.toDouble(),
    maxCP: json['maxCP'] as int,
    evolutions: (json['evolutions'] as List)
        ?.map((e) =>
            e == null ? null : PokemonRef.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evolutionRequirements: json['evolutionRequirements'] == null
        ? null
        : PokemonEvolutionRequirementRef.fromJson(
            json['evolutionRequirements'] as Map<String, dynamic>),
    maxHP: json['maxHP'] as int,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$PokemonPatchToJson(PokemonPatch instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  writeNotNull('name', instance.name);
  writeNotNull('weight', instance.weight?.toJson());
  writeNotNull('height', instance.height?.toJson());
  writeNotNull('classification', instance.classification);
  writeNotNull('types', instance.types);
  writeNotNull('resistant', instance.resistant);
  writeNotNull('attacks', instance.attacks?.toJson());
  writeNotNull('weaknesses', instance.weaknesses);
  writeNotNull('fleeRate', instance.fleeRate);
  writeNotNull('maxCP', instance.maxCP);
  writeNotNull(
      'evolutions', instance.evolutions?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'evolutionRequirements', instance.evolutionRequirements?.toJson());
  writeNotNull('maxHP', instance.maxHP);
  writeNotNull('image', instance.image);
  return val;
}

PokemonRef _$PokemonRefFromJson(Map<String, dynamic> json) {
  return PokemonRef(
    id: json['id'] as String,
    number: json['number'] as String,
    name: json['name'] as String,
    weight: json['weight'] == null
        ? null
        : PokemonDimensionRef.fromJson(json['weight'] as Map<String, dynamic>),
    height: json['height'] == null
        ? null
        : PokemonDimensionRef.fromJson(json['height'] as Map<String, dynamic>),
    classification: json['classification'] as String,
    types: (json['types'] as List)?.map((e) => e as String)?.toList(),
    resistant: (json['resistant'] as List)?.map((e) => e as String)?.toList(),
    attacks: json['attacks'] == null
        ? null
        : PokemonAttackRef.fromJson(json['attacks'] as Map<String, dynamic>),
    weaknesses: (json['weaknesses'] as List)?.map((e) => e as String)?.toList(),
    fleeRate: (json['fleeRate'] as num)?.toDouble(),
    maxCP: json['maxCP'] as int,
    evolutions: (json['evolutions'] as List)
        ?.map((e) =>
            e == null ? null : PokemonRef.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evolutionRequirements: json['evolutionRequirements'] == null
        ? null
        : PokemonEvolutionRequirementRef.fromJson(
            json['evolutionRequirements'] as Map<String, dynamic>),
    maxHP: json['maxHP'] as int,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$PokemonRefToJson(PokemonRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('number', instance.number);
  writeNotNull('name', instance.name);
  writeNotNull('weight', instance.weight?.toJson());
  writeNotNull('height', instance.height?.toJson());
  writeNotNull('classification', instance.classification);
  writeNotNull('types', instance.types);
  writeNotNull('resistant', instance.resistant);
  writeNotNull('attacks', instance.attacks?.toJson());
  writeNotNull('weaknesses', instance.weaknesses);
  writeNotNull('fleeRate', instance.fleeRate);
  writeNotNull('maxCP', instance.maxCP);
  writeNotNull(
      'evolutions', instance.evolutions?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'evolutionRequirements', instance.evolutionRequirements?.toJson());
  writeNotNull('maxHP', instance.maxHP);
  writeNotNull('image', instance.image);
  return val;
}

QueryQueryAttackArgs _$QueryQueryAttackArgsFromJson(Map<String, dynamic> json) {
  return QueryQueryAttackArgs(
    order: json['order'] == null
        ? null
        : AttackOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$QueryQueryAttackArgsToJson(
    QueryQueryAttackArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

QueryGetPokemonArgs _$QueryGetPokemonArgsFromJson(Map<String, dynamic> json) {
  return QueryGetPokemonArgs(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$QueryGetPokemonArgsToJson(QueryGetPokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

QueryQueryPokemonArgs _$QueryQueryPokemonArgsFromJson(
    Map<String, dynamic> json) {
  return QueryQueryPokemonArgs(
    filter: json['filter'] == null
        ? null
        : PokemonFilter.fromJson(json['filter'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : PokemonOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$QueryQueryPokemonArgsToJson(
    QueryQueryPokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

QueryQueryPokemonAttackArgs _$QueryQueryPokemonAttackArgsFromJson(
    Map<String, dynamic> json) {
  return QueryQueryPokemonAttackArgs(
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$QueryQueryPokemonAttackArgsToJson(
    QueryQueryPokemonAttackArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

QueryQueryPokemonDimensionArgs _$QueryQueryPokemonDimensionArgsFromJson(
    Map<String, dynamic> json) {
  return QueryQueryPokemonDimensionArgs(
    order: json['order'] == null
        ? null
        : PokemonDimensionOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$QueryQueryPokemonDimensionArgsToJson(
    QueryQueryPokemonDimensionArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

QueryQueryPokemonEvolutionRequirementArgs
    _$QueryQueryPokemonEvolutionRequirementArgsFromJson(
        Map<String, dynamic> json) {
  return QueryQueryPokemonEvolutionRequirementArgs(
    order: json['order'] == null
        ? null
        : PokemonEvolutionRequirementOrder.fromJson(
            json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$QueryQueryPokemonEvolutionRequirementArgsToJson(
    QueryQueryPokemonEvolutionRequirementArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

Query _$QueryFromJson(Map<String, dynamic> json) {
  return Query(
    queryAttack: (json['queryAttack'] as List)
        ?.map((e) =>
            e == null ? null : Attack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    getPokemon: json['getPokemon'] == null
        ? null
        : Pokemon.fromJson(json['getPokemon'] as Map<String, dynamic>),
    queryPokemon: (json['queryPokemon'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    queryPokemonAttack: (json['queryPokemonAttack'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonAttack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    queryPokemonDimension: (json['queryPokemonDimension'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonDimension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    queryPokemonEvolutionRequirement: (json['queryPokemonEvolutionRequirement']
            as List)
        ?.map((e) => e == null
            ? null
            : PokemonEvolutionRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QueryToJson(Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'queryAttack', instance.queryAttack?.map((e) => e?.toJson())?.toList());
  writeNotNull('getPokemon', instance.getPokemon?.toJson());
  writeNotNull(
      'queryPokemon', instance.queryPokemon?.map((e) => e?.toJson())?.toList());
  writeNotNull('queryPokemonAttack',
      instance.queryPokemonAttack?.map((e) => e?.toJson())?.toList());
  writeNotNull('queryPokemonDimension',
      instance.queryPokemonDimension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'queryPokemonEvolutionRequirement',
      instance.queryPokemonEvolutionRequirement
          ?.map((e) => e?.toJson())
          ?.toList());
  return val;
}

StringExactFilter _$StringExactFilterFromJson(Map<String, dynamic> json) {
  return StringExactFilter(
    eq: json['eq'] as String,
    le: json['le'] as String,
    lt: json['lt'] as String,
    ge: json['ge'] as String,
    gt: json['gt'] as String,
  );
}

Map<String, dynamic> _$StringExactFilterToJson(StringExactFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eq', instance.eq);
  writeNotNull('le', instance.le);
  writeNotNull('lt', instance.lt);
  writeNotNull('ge', instance.ge);
  writeNotNull('gt', instance.gt);
  return val;
}

StringFullTextFilter _$StringFullTextFilterFromJson(Map<String, dynamic> json) {
  return StringFullTextFilter(
    alloftext: json['alloftext'] as String,
    anyoftext: json['anyoftext'] as String,
  );
}

Map<String, dynamic> _$StringFullTextFilterToJson(
    StringFullTextFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alloftext', instance.alloftext);
  writeNotNull('anyoftext', instance.anyoftext);
  return val;
}

StringHashFilter _$StringHashFilterFromJson(Map<String, dynamic> json) {
  return StringHashFilter(
    eq: json['eq'] as String,
  );
}

Map<String, dynamic> _$StringHashFilterToJson(StringHashFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eq', instance.eq);
  return val;
}

StringRegExpFilter _$StringRegExpFilterFromJson(Map<String, dynamic> json) {
  return StringRegExpFilter(
    regexp: json['regexp'] as String,
  );
}

Map<String, dynamic> _$StringRegExpFilterToJson(StringRegExpFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('regexp', instance.regexp);
  return val;
}

StringTermFilter _$StringTermFilterFromJson(Map<String, dynamic> json) {
  return StringTermFilter(
    allofterms: json['allofterms'] as String,
    anyofterms: json['anyofterms'] as String,
  );
}

Map<String, dynamic> _$StringTermFilterToJson(StringTermFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allofterms', instance.allofterms);
  writeNotNull('anyofterms', instance.anyofterms);
  return val;
}

UpdatePokemonInput _$UpdatePokemonInputFromJson(Map<String, dynamic> json) {
  return UpdatePokemonInput(
    filter: json['filter'] == null
        ? null
        : PokemonFilter.fromJson(json['filter'] as Map<String, dynamic>),
    set$: json['set'] == null
        ? null
        : PokemonPatch.fromJson(json['set'] as Map<String, dynamic>),
    remove: json['remove'] == null
        ? null
        : PokemonPatch.fromJson(json['remove'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdatePokemonInputToJson(UpdatePokemonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  writeNotNull('set', instance.set$?.toJson());
  writeNotNull('remove', instance.remove?.toJson());
  return val;
}

UpdatePokemonPayloadPokemonArgs _$UpdatePokemonPayloadPokemonArgsFromJson(
    Map<String, dynamic> json) {
  return UpdatePokemonPayloadPokemonArgs(
    filter: json['filter'] == null
        ? null
        : PokemonFilter.fromJson(json['filter'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : PokemonOrder.fromJson(json['order'] as Map<String, dynamic>),
    first: json['first'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$UpdatePokemonPayloadPokemonArgsToJson(
    UpdatePokemonPayloadPokemonArgs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('first', instance.first);
  writeNotNull('offset', instance.offset);
  return val;
}

UpdatePokemonPayload _$UpdatePokemonPayloadFromJson(Map<String, dynamic> json) {
  return UpdatePokemonPayload(
    pokemon: (json['pokemon'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numUids: json['numUids'] as int,
  );
}

Map<String, dynamic> _$UpdatePokemonPayloadToJson(
    UpdatePokemonPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pokemon', instance.pokemon?.map((e) => e?.toJson())?.toList());
  writeNotNull('numUids', instance.numUids);
  return val;
}
