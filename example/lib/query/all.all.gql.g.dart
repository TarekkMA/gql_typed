// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all.all.gql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPokemonResponse _$AllPokemonResponseFromJson(Map<String, dynamic> json) {
  return AllPokemonResponse(
    queryPokemon: (json['queryPokemon'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllPokemonResponseToJson(AllPokemonResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'queryPokemon', instance.queryPokemon?.map((e) => e?.toJson())?.toList());
  return val;
}

AllPokemonVars _$AllPokemonVarsFromJson(Map<String, dynamic> json) {
  return AllPokemonVars(
    first: json['first'] as int,
  );
}

Map<String, dynamic> _$AllPokemonVarsToJson(AllPokemonVars instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first);
  return val;
}
