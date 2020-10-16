// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i2;
import 'package:json_annotation/json_annotation.dart' as _i3;
import 'package:equatable/equatable.dart' as _i4;
import 'package:ferry/ferry.dart' as _i5;
import 'package:example/schema.all.gql.dart';
part 'all.all.gql.g.dart';

const $ast_AllPokemon = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'AllPokemon'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'first')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'queryPokemon'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'first'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'first')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'maxHP'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'image'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ]))
    ]));
const $ast_document = _i1.DocumentNode(definitions: [$ast_AllPokemon]);
const $op_AllPokemon =
    _i2.Operation(document: $ast_document, operationName: 'AllPokemon');

@_i3.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AllPokemonResponse extends _i4.Equatable {
  const AllPokemonResponse({this.queryPokemon});

  factory AllPokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$AllPokemonResponseFromJson(json);

  @_i3.JsonKey()
  final List<Pokemon> queryPokemon;

  Map<String, dynamic> toJson() => _$AllPokemonResponseToJson(this);
  AllPokemonResponse copyWith({List<Pokemon> queryPokemon}) =>
      AllPokemonResponse(queryPokemon: queryPokemon ?? this.queryPokemon);
  @override
  List<Object> get props => [queryPokemon];
  @override
  bool get stringify => true;
  Map<String, dynamic> get data => toJson();
}

@_i3.JsonSerializable(includeIfNull: false, explicitToJson: true)
class AllPokemonVars extends _i4.Equatable {
  const AllPokemonVars({this.first});

  factory AllPokemonVars.fromJson(Map<String, dynamic> json) =>
      _$AllPokemonVarsFromJson(json);

  @_i3.JsonKey()
  final int first;

  Map<String, dynamic> toJson() => _$AllPokemonVarsToJson(this);
  AllPokemonVars copyWith({int first}) =>
      AllPokemonVars(first: first ?? this.first);
  @override
  List<Object> get props => [first];
  @override
  bool get stringify => true;
}

class AllPokemonQueryRequest extends _i5.QueryRequest<AllPokemonResponse> {
  factory AllPokemonQueryRequest(
          {AllPokemonVars variables,
          String queryId,
          AllPokemonResponse Function(AllPokemonResponse, AllPokemonResponse)
              updateResult,
          Map<String, dynamic> optimisticResponse,
          updateCacheHandlerKey,
          _i2.Context context,
          _i5.FetchPolicy fetchPolicy}) =>
      AllPokemonQueryRequest._(
          operation: $op_AllPokemon,
          variables: variables.toJson(),
          context: context != null ? context : const _i2.Context(),
          queryId: queryId,
          updateResult: updateResult,
          optimisticResponse: optimisticResponse,
          updateCacheHandlerKey: updateCacheHandlerKey,
          fetchPolicy: fetchPolicy);

  AllPokemonQueryRequest._(
      {_i2.Operation operation,
      Map<String, dynamic> variables,
      _i2.Context context,
      String queryId,
      AllPokemonResponse Function(AllPokemonResponse, AllPokemonResponse)
          updateResult,
      Map<String, dynamic> optimisticResponse,
      String updateCacheHandlerKey,
      _i5.FetchPolicy fetchPolicy})
      : super(
            operation: operation,
            variables: variables,
            context: context,
            queryId: queryId,
            updateResult: updateResult,
            optimisticResponse: optimisticResponse,
            updateCacheHandlerKey: updateCacheHandlerKey,
            fetchPolicy: fetchPolicy);

  @override
  AllPokemonResponse parseData(Map<String, dynamic> json) =>
      AllPokemonResponse.fromJson(json);
  @override
  AllPokemonQueryRequest copyWith(
          {_i2.Operation operation,
          Map<String, dynamic> variables,
          _i2.Context context,
          String queryId,
          AllPokemonResponse Function(AllPokemonResponse, AllPokemonResponse)
              updateResult,
          Map<String, dynamic> optimisticResponse,
          String updateCacheHandlerKey,
          _i5.FetchPolicy fetchPolicy}) =>
      AllPokemonQueryRequest._(
          operation: operation ?? this.operation,
          variables: variables ?? this.variables,
          context: context ?? this.context,
          queryId: queryId ?? this.queryId,
          updateResult: updateResult ?? this.updateResult,
          optimisticResponse: optimisticResponse ?? this.optimisticResponse,
          updateCacheHandlerKey:
              updateCacheHandlerKey ?? this.updateCacheHandlerKey,
          fetchPolicy: fetchPolicy ?? this.fetchPolicy);
}
