import 'package:dio/dio.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_dio_link/gql_dio_link.dart';

import 'query/all.all.gql.dart';
import 'query/all.all.gql.dart';
import 'schema.all.gql.dart';

void main() async {
  final client = Client(
      link: DioLink(
    "ENDPOINT",
    client: Dio(),
  ));

  final res = await client
      .responseStream(AllPokemonQueryRequest(
          variables: AllPokemonVars(
        first: 1,
      )))
      .first;

  List<Pokemon> pokemons = res.data.queryPokemon;
  pokemons.forEach((pokemon) {
    print("${pokemon.id} ${pokemon.name}");
  });
}
