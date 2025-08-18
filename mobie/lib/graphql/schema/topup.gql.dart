import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$utility_getTopUpOperators {
  factory Variables$Query$utility_getTopUpOperators(
          {required Input$Utilities_GetOperatorsInput input}) =>
      Variables$Query$utility_getTopUpOperators._({
        r'input': input,
      });

  Variables$Query$utility_getTopUpOperators._(this._$data);

  factory Variables$Query$utility_getTopUpOperators.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Utilities_GetOperatorsInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$utility_getTopUpOperators._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Utilities_GetOperatorsInput get input =>
      (_$data['input'] as Input$Utilities_GetOperatorsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$utility_getTopUpOperators<
          Variables$Query$utility_getTopUpOperators>
      get copyWith => CopyWith$Variables$Query$utility_getTopUpOperators(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$utility_getTopUpOperators ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$utility_getTopUpOperators<TRes> {
  factory CopyWith$Variables$Query$utility_getTopUpOperators(
    Variables$Query$utility_getTopUpOperators instance,
    TRes Function(Variables$Query$utility_getTopUpOperators) then,
  ) = _CopyWithImpl$Variables$Query$utility_getTopUpOperators;

  factory CopyWith$Variables$Query$utility_getTopUpOperators.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$utility_getTopUpOperators;

  TRes call({Input$Utilities_GetOperatorsInput? input});
}

class _CopyWithImpl$Variables$Query$utility_getTopUpOperators<TRes>
    implements CopyWith$Variables$Query$utility_getTopUpOperators<TRes> {
  _CopyWithImpl$Variables$Query$utility_getTopUpOperators(
    this._instance,
    this._then,
  );

  final Variables$Query$utility_getTopUpOperators _instance;

  final TRes Function(Variables$Query$utility_getTopUpOperators) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$utility_getTopUpOperators._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Utilities_GetOperatorsInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$utility_getTopUpOperators<TRes>
    implements CopyWith$Variables$Query$utility_getTopUpOperators<TRes> {
  _CopyWithStubImpl$Variables$Query$utility_getTopUpOperators(this._res);

  final TRes _res;

  @override
  call({Input$Utilities_GetOperatorsInput? input}) => _res;
}

class Query$utility_getTopUpOperators {
  Query$utility_getTopUpOperators({
    required this.utility_getTopUpOperators,
    this.$__typename = 'Query',
  });

  factory Query$utility_getTopUpOperators.fromJson(Map<String, dynamic> json) {
    final l$utilityGettopupoperators = json['utility_getTopUpOperators'];
    final l$$__typename = json['__typename'];
    return Query$utility_getTopUpOperators(
      utility_getTopUpOperators:
          Query$utility_getTopUpOperators$utility_getTopUpOperators.fromJson(
              (l$utilityGettopupoperators as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$utility_getTopUpOperators$utility_getTopUpOperators
      utility_getTopUpOperators;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$utilityGettopupoperators = utility_getTopUpOperators;
    resultData['utility_getTopUpOperators'] =
        l$utilityGettopupoperators.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$utilityGettopupoperators = utility_getTopUpOperators;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$utilityGettopupoperators,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$utility_getTopUpOperators ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$utilityGettopupoperators = utility_getTopUpOperators;
    final lother$utilityGettopupoperators = other.utility_getTopUpOperators;
    if (l$utilityGettopupoperators != lother$utilityGettopupoperators) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$utility_getTopUpOperators
    on Query$utility_getTopUpOperators {
  CopyWith$Query$utility_getTopUpOperators<Query$utility_getTopUpOperators>
      get copyWith => CopyWith$Query$utility_getTopUpOperators(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$utility_getTopUpOperators<TRes> {
  factory CopyWith$Query$utility_getTopUpOperators(
    Query$utility_getTopUpOperators instance,
    TRes Function(Query$utility_getTopUpOperators) then,
  ) = _CopyWithImpl$Query$utility_getTopUpOperators;

  factory CopyWith$Query$utility_getTopUpOperators.stub(TRes res) =
      _CopyWithStubImpl$Query$utility_getTopUpOperators;

  TRes call({
    Query$utility_getTopUpOperators$utility_getTopUpOperators?
        utility_getTopUpOperators,
    String? $__typename,
  });
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators<TRes>
      get utility_getTopUpOperators;
}

class _CopyWithImpl$Query$utility_getTopUpOperators<TRes>
    implements CopyWith$Query$utility_getTopUpOperators<TRes> {
  _CopyWithImpl$Query$utility_getTopUpOperators(
    this._instance,
    this._then,
  );

  final Query$utility_getTopUpOperators _instance;

  final TRes Function(Query$utility_getTopUpOperators) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? utility_getTopUpOperators = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$utility_getTopUpOperators(
        utility_getTopUpOperators: utility_getTopUpOperators == _undefined ||
                utility_getTopUpOperators == null
            ? _instance.utility_getTopUpOperators
            : (utility_getTopUpOperators
                as Query$utility_getTopUpOperators$utility_getTopUpOperators),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators<TRes>
      get utility_getTopUpOperators {
    final local$utilityGettopupoperators = _instance.utility_getTopUpOperators;
    return CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators(
        local$utilityGettopupoperators,
        (e) => call(utility_getTopUpOperators: e));
  }
}

class _CopyWithStubImpl$Query$utility_getTopUpOperators<TRes>
    implements CopyWith$Query$utility_getTopUpOperators<TRes> {
  _CopyWithStubImpl$Query$utility_getTopUpOperators(this._res);

  final TRes _res;

  @override
  call({
    Query$utility_getTopUpOperators$utility_getTopUpOperators?
        utility_getTopUpOperators,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators<TRes>
      get utility_getTopUpOperators =>
          CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators
              .stub(_res);
}

const documentNodeQueryutility_getTopUpOperators = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'utility_getTopUpOperators'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Utilities_GetOperatorsInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'utility_getTopUpOperators'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'airtime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'suggestedAmounts'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'logo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'maxAmount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'minAmount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'operatorId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'dataPlan'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'logo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'operatorId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'plans'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'desc'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'dataBundles'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'logo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'operatorId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'plans'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'desc'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$utility_getTopUpOperators _parserFn$Query$utility_getTopUpOperators(
        Map<String, dynamic> data) =>
    Query$utility_getTopUpOperators.fromJson(data);
typedef OnQueryComplete$Query$utility_getTopUpOperators = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$utility_getTopUpOperators?,
);

class Options$Query$utility_getTopUpOperators
    extends graphql.QueryOptions<Query$utility_getTopUpOperators> {
  Options$Query$utility_getTopUpOperators({
    super.operationName,
    required Variables$Query$utility_getTopUpOperators variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$utility_getTopUpOperators? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$utility_getTopUpOperators? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$utility_getTopUpOperators(data),
                  ),
          document: documentNodeQueryutility_getTopUpOperators,
          parserFn: _parserFn$Query$utility_getTopUpOperators,
        );

  final OnQueryComplete$Query$utility_getTopUpOperators? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$utility_getTopUpOperators
    extends graphql.WatchQueryOptions<Query$utility_getTopUpOperators> {
  WatchOptions$Query$utility_getTopUpOperators({
    super.operationName,
    required Variables$Query$utility_getTopUpOperators variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$utility_getTopUpOperators? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryutility_getTopUpOperators,
          parserFn: _parserFn$Query$utility_getTopUpOperators,
        );
}

class FetchMoreOptions$Query$utility_getTopUpOperators
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$utility_getTopUpOperators({
    required super.updateQuery,
    required Variables$Query$utility_getTopUpOperators variables,
  }) : super(
          variables: variables.toJson(),
          document: documentNodeQueryutility_getTopUpOperators,
        );
}

extension ClientExtension$Query$utility_getTopUpOperators
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$utility_getTopUpOperators>>
      query$utility_getTopUpOperators(
              Options$Query$utility_getTopUpOperators options) async =>
          await query(options);
  graphql.ObservableQuery<Query$utility_getTopUpOperators>
      watchQuery$utility_getTopUpOperators(
              WatchOptions$Query$utility_getTopUpOperators options) =>
          watchQuery(options);
  void writeQuery$utility_getTopUpOperators({
    required Query$utility_getTopUpOperators data,
    required Variables$Query$utility_getTopUpOperators variables,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryutility_getTopUpOperators),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$utility_getTopUpOperators? readQuery$utility_getTopUpOperators({
    required Variables$Query$utility_getTopUpOperators variables,
    bool optimistic = true,
  }) {
    final result = readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryutility_getTopUpOperators),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$utility_getTopUpOperators.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$utility_getTopUpOperators>
    useQuery$utility_getTopUpOperators(
            Options$Query$utility_getTopUpOperators options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$utility_getTopUpOperators>
    useWatchQuery$utility_getTopUpOperators(
            WatchOptions$Query$utility_getTopUpOperators options) =>
        graphql_flutter.useWatchQuery(options);

class Query$utility_getTopUpOperators$Widget
    extends graphql_flutter.Query<Query$utility_getTopUpOperators> {
  const Query$utility_getTopUpOperators$Widget({
    super.key,
    required Options$Query$utility_getTopUpOperators super.options,
    required super.builder,
  });
}

class Query$utility_getTopUpOperators$utility_getTopUpOperators {
  Query$utility_getTopUpOperators$utility_getTopUpOperators({
    required this.airtime,
    required this.dataPlan,
    required this.dataBundles,
    this.$__typename = 'Utilities_GetOperatorResponse',
  });

  factory Query$utility_getTopUpOperators$utility_getTopUpOperators.fromJson(
      Map<String, dynamic> json) {
    final l$airtime = json['airtime'];
    final l$dataPlan = json['dataPlan'];
    final l$dataBundles = json['dataBundles'];
    final l$$__typename = json['__typename'];
    return Query$utility_getTopUpOperators$utility_getTopUpOperators(
      airtime: (l$airtime as List<dynamic>)
          .map((e) =>
              Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      dataPlan: (l$dataPlan as List<dynamic>)
          .map((e) =>
              Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      dataBundles: (l$dataBundles as List<dynamic>)
          .map((e) =>
              Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime>
      airtime;

  final List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan>
      dataPlan;

  final List<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles>
      dataBundles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$airtime = airtime;
    resultData['airtime'] = l$airtime.map((e) => e.toJson()).toList();
    final l$dataPlan = dataPlan;
    resultData['dataPlan'] = l$dataPlan.map((e) => e.toJson()).toList();
    final l$dataBundles = dataBundles;
    resultData['dataBundles'] = l$dataBundles.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$airtime = airtime;
    final l$dataPlan = dataPlan;
    final l$dataBundles = dataBundles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$airtime.map((v) => v)),
      Object.hashAll(l$dataPlan.map((v) => v)),
      Object.hashAll(l$dataBundles.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$utility_getTopUpOperators$utility_getTopUpOperators ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airtime = airtime;
    final lOther$airtime = other.airtime;
    if (l$airtime.length != lOther$airtime.length) {
      return false;
    }
    for (int i = 0; i < l$airtime.length; i++) {
      final l$airtime$entry = l$airtime[i];
      final lOther$airtime$entry = lOther$airtime[i];
      if (l$airtime$entry != lOther$airtime$entry) {
        return false;
      }
    }
    final l$dataPlan = dataPlan;
    final lOther$dataPlan = other.dataPlan;
    if (l$dataPlan.length != lOther$dataPlan.length) {
      return false;
    }
    for (int i = 0; i < l$dataPlan.length; i++) {
      final l$dataPlan$entry = l$dataPlan[i];
      final lOther$dataPlan$entry = lOther$dataPlan[i];
      if (l$dataPlan$entry != lOther$dataPlan$entry) {
        return false;
      }
    }
    final l$dataBundles = dataBundles;
    final lOther$dataBundles = other.dataBundles;
    if (l$dataBundles.length != lOther$dataBundles.length) {
      return false;
    }
    for (int i = 0; i < l$dataBundles.length; i++) {
      final l$dataBundles$entry = l$dataBundles[i];
      final lOther$dataBundles$entry = lOther$dataBundles[i];
      if (l$dataBundles$entry != lOther$dataBundles$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$utility_getTopUpOperators$utility_getTopUpOperators
    on Query$utility_getTopUpOperators$utility_getTopUpOperators {
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators<
          Query$utility_getTopUpOperators$utility_getTopUpOperators>
      get copyWith =>
          CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators<
    TRes> {
  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators(
    Query$utility_getTopUpOperators$utility_getTopUpOperators instance,
    TRes Function(Query$utility_getTopUpOperators$utility_getTopUpOperators)
        then,
  ) = _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators;

  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators.stub(
          TRes res) =
      _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators;

  TRes call({
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime>?
        airtime,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan>?
        dataPlan,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles>?
        dataBundles,
    String? $__typename,
  });
  TRes airtime(
      Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime> Function(
              Iterable<
                  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
                      Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime>>)
          fn);
  TRes dataPlan(
      Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan> Function(
              Iterable<
                  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
                      Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan>>)
          fn);
  TRes dataBundles(
      Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles> Function(
              Iterable<
                  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
                      Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles>>)
          fn);
}

class _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators<
            TRes> {
  _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators(
    this._instance,
    this._then,
  );

  final Query$utility_getTopUpOperators$utility_getTopUpOperators _instance;

  final TRes Function(Query$utility_getTopUpOperators$utility_getTopUpOperators)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? airtime = _undefined,
    Object? dataPlan = _undefined,
    Object? dataBundles = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$utility_getTopUpOperators$utility_getTopUpOperators(
        airtime: airtime == _undefined || airtime == null
            ? _instance.airtime
            : (airtime as List<
                Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime>),
        dataPlan: dataPlan == _undefined || dataPlan == null
            ? _instance.dataPlan
            : (dataPlan as List<
                Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan>),
        dataBundles: dataBundles == _undefined || dataBundles == null
            ? _instance.dataBundles
            : (dataBundles as List<
                Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes airtime(
          Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime> Function(
                  Iterable<
                      CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
                          Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime>>)
              fn) =>
      call(
          airtime: fn(_instance.airtime.map((e) =>
              CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime(
                e,
                (i) => i,
              ))).toList());

  @override
  TRes dataPlan(
          Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan> Function(
                  Iterable<
                      CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
                          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan>>)
              fn) =>
      call(
          dataPlan: fn(_instance.dataPlan.map((e) =>
              CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan(
                e,
                (i) => i,
              ))).toList());

  @override
  TRes dataBundles(
          Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles> Function(
                  Iterable<
                      CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
                          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles>>)
              fn) =>
      call(
          dataBundles: fn(_instance.dataBundles.map((e) =>
              CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators<
            TRes> {
  _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators(
      this._res);

  final TRes _res;

  @override
  call({
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime>?
        airtime,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan>?
        dataPlan,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles>?
        dataBundles,
    String? $__typename,
  }) =>
      _res;

  @override
  airtime(fn) => _res;

  @override
  dataPlan(fn) => _res;

  @override
  dataBundles(fn) => _res;
}

class Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime {
  Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime({
    required this.name,
    this.suggestedAmounts,
    required this.logo,
    this.maxAmount,
    this.minAmount,
    required this.operatorId,
    this.$__typename = 'IAirtimeOperator',
  });

  factory Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$suggestedAmounts = json['suggestedAmounts'];
    final l$logo = json['logo'];
    final l$maxAmount = json['maxAmount'];
    final l$minAmount = json['minAmount'];
    final l$operatorId = json['operatorId'];
    final l$$__typename = json['__typename'];
    return Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime(
      name: (l$name as String),
      suggestedAmounts: (l$suggestedAmounts as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList(),
      logo: (l$logo as String),
      maxAmount: (l$maxAmount as int?),
      minAmount: (l$minAmount as int?),
      operatorId: (l$operatorId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<int>? suggestedAmounts;

  final String logo;

  final int? maxAmount;

  final int? minAmount;

  final int operatorId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$name = name;
    resultData['name'] = l$name;
    final l$suggestedAmounts = suggestedAmounts;
    resultData['suggestedAmounts'] =
        l$suggestedAmounts?.map((e) => e).toList();
    final l$logo = logo;
    resultData['logo'] = l$logo;
    final l$maxAmount = maxAmount;
    resultData['maxAmount'] = l$maxAmount;
    final l$minAmount = minAmount;
    resultData['minAmount'] = l$minAmount;
    final l$operatorId = operatorId;
    resultData['operatorId'] = l$operatorId;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$suggestedAmounts = suggestedAmounts;
    final l$logo = logo;
    final l$maxAmount = maxAmount;
    final l$minAmount = minAmount;
    final l$operatorId = operatorId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$suggestedAmounts == null
          ? null
          : Object.hashAll(l$suggestedAmounts.map((v) => v)),
      l$logo,
      l$maxAmount,
      l$minAmount,
      l$operatorId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$suggestedAmounts = suggestedAmounts;
    final lOther$suggestedAmounts = other.suggestedAmounts;
    if (l$suggestedAmounts != null && lOther$suggestedAmounts != null) {
      if (l$suggestedAmounts.length != lOther$suggestedAmounts.length) {
        return false;
      }
      for (int i = 0; i < l$suggestedAmounts.length; i++) {
        final l$suggestedAmounts$entry = l$suggestedAmounts[i];
        final lOther$suggestedAmounts$entry = lOther$suggestedAmounts[i];
        if (l$suggestedAmounts$entry != lOther$suggestedAmounts$entry) {
          return false;
        }
      }
    } else if (l$suggestedAmounts != lOther$suggestedAmounts) {
      return false;
    }
    final l$logo = logo;
    final lOther$logo = other.logo;
    if (l$logo != lOther$logo) {
      return false;
    }
    final l$maxAmount = maxAmount;
    final lOther$maxAmount = other.maxAmount;
    if (l$maxAmount != lOther$maxAmount) {
      return false;
    }
    final l$minAmount = minAmount;
    final lOther$minAmount = other.minAmount;
    if (l$minAmount != lOther$minAmount) {
      return false;
    }
    final l$operatorId = operatorId;
    final lOther$operatorId = other.operatorId;
    if (l$operatorId != lOther$operatorId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime
    on Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime {
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime>
      get copyWith =>
          CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
    TRes> {
  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime(
    Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime instance,
    TRes Function(
            Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime)
        then,
  ) = _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime;

  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime.stub(
          TRes res) =
      _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime;

  TRes call({
    String? name,
    List<int>? suggestedAmounts,
    String? logo,
    int? maxAmount,
    int? minAmount,
    int? operatorId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
            TRes> {
  _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime(
    this._instance,
    this._then,
  );

  final Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime
      _instance;

  final TRes Function(
      Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? suggestedAmounts = _undefined,
    Object? logo = _undefined,
    Object? maxAmount = _undefined,
    Object? minAmount = _undefined,
    Object? operatorId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        suggestedAmounts: suggestedAmounts == _undefined
            ? _instance.suggestedAmounts
            : (suggestedAmounts as List<int>?),
        logo: logo == _undefined || logo == null
            ? _instance.logo
            : (logo as String),
        maxAmount:
            maxAmount == _undefined ? _instance.maxAmount : (maxAmount as int?),
        minAmount:
            minAmount == _undefined ? _instance.minAmount : (minAmount as int?),
        operatorId: operatorId == _undefined || operatorId == null
            ? _instance.operatorId
            : (operatorId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime<
            TRes> {
  _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$airtime(
      this._res);

  final TRes _res;

  @override
  call({
    String? name,
    List<int>? suggestedAmounts,
    String? logo,
    int? maxAmount,
    int? minAmount,
    int? operatorId,
    String? $__typename,
  }) =>
      _res;
}

class Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan {
  Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan({
    required this.name,
    required this.logo,
    required this.operatorId,
    this.plans,
    this.$__typename = 'IOperator',
  });

  factory Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$logo = json['logo'];
    final l$operatorId = json['operatorId'];
    final l$plans = json['plans'];
    final l$$__typename = json['__typename'];
    return Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan(
      name: (l$name as String),
      logo: (l$logo as String),
      operatorId: (l$operatorId as int),
      plans: (l$plans as List<dynamic>?)
          ?.map((e) =>
              Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String logo;

  final int operatorId;

  final List<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>?
      plans;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$name = name;
    resultData['name'] = l$name;
    final l$logo = logo;
    resultData['logo'] = l$logo;
    final l$operatorId = operatorId;
    resultData['operatorId'] = l$operatorId;
    final l$plans = plans;
    resultData['plans'] = l$plans?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$logo = logo;
    final l$operatorId = operatorId;
    final l$plans = plans;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$logo,
      l$operatorId,
      l$plans == null ? null : Object.hashAll(l$plans.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$logo = logo;
    final lOther$logo = other.logo;
    if (l$logo != lOther$logo) {
      return false;
    }
    final l$operatorId = operatorId;
    final lOther$operatorId = other.operatorId;
    if (l$operatorId != lOther$operatorId) {
      return false;
    }
    final l$plans = plans;
    final lOther$plans = other.plans;
    if (l$plans != null && lOther$plans != null) {
      if (l$plans.length != lOther$plans.length) {
        return false;
      }
      for (int i = 0; i < l$plans.length; i++) {
        final l$plans$entry = l$plans[i];
        final lOther$plans$entry = lOther$plans[i];
        if (l$plans$entry != lOther$plans$entry) {
          return false;
        }
      }
    } else if (l$plans != lOther$plans) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan
    on Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan {
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan>
      get copyWith =>
          CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
    TRes> {
  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan(
    Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan instance,
    TRes Function(
            Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan)
        then,
  ) = _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan;

  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan.stub(
          TRes res) =
      _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan;

  TRes call({
    String? name,
    String? logo,
    int? operatorId,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>?
        plans,
    String? $__typename,
  });
  TRes plans(
      Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>? Function(
              Iterable<
                  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
                      Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>>?)
          fn);
}

class _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
            TRes> {
  _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan(
    this._instance,
    this._then,
  );

  final Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan
      _instance;

  final TRes Function(
      Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? logo = _undefined,
    Object? operatorId = _undefined,
    Object? plans = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        logo: logo == _undefined || logo == null
            ? _instance.logo
            : (logo as String),
        operatorId: operatorId == _undefined || operatorId == null
            ? _instance.operatorId
            : (operatorId as int),
        plans: plans == _undefined
            ? _instance.plans
            : (plans as List<
                Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes plans(
          Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>? Function(
                  Iterable<
                      CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
                          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>>?)
              fn) =>
      call(
          plans: fn(_instance.plans?.map((e) =>
              CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan<
            TRes> {
  _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan(
      this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? logo,
    int? operatorId,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>?
        plans,
    String? $__typename,
  }) =>
      _res;

  @override
  plans(fn) => _res;
}

class Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans {
  Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans({
    required this.amount,
    required this.desc,
    this.$__typename = 'IDataPlan',
  });

  factory Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$desc = json['desc'];
    final l$$__typename = json['__typename'];
    return Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans(
      amount: (l$amount as int),
      desc: (l$desc as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int amount;

  final String desc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$amount = amount;
    resultData['amount'] = l$amount;
    final l$desc = desc;
    resultData['desc'] = l$desc;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$desc = desc;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$desc,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans
    on Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans {
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans>
      get copyWith =>
          CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
    TRes> {
  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans(
    Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans
        instance,
    TRes Function(
            Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans)
        then,
  ) = _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans;

  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans.stub(
          TRes res) =
      _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans;

  TRes call({
    int? amount,
    String? desc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
            TRes> {
  _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans(
    this._instance,
    this._then,
  );

  final Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans
      _instance;

  final TRes Function(
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? amount = _undefined,
    Object? desc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as int),
        desc: desc == _undefined || desc == null
            ? _instance.desc
            : (desc as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans<
            TRes> {
  _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataPlan$plans(
      this._res);

  final TRes _res;

  @override
  call({
    int? amount,
    String? desc,
    String? $__typename,
  }) =>
      _res;
}

class Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles {
  Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles({
    required this.name,
    required this.logo,
    required this.operatorId,
    this.plans,
    this.$__typename = 'IOperator',
  });

  factory Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$logo = json['logo'];
    final l$operatorId = json['operatorId'];
    final l$plans = json['plans'];
    final l$$__typename = json['__typename'];
    return Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles(
      name: (l$name as String),
      logo: (l$logo as String),
      operatorId: (l$operatorId as int),
      plans: (l$plans as List<dynamic>?)
          ?.map((e) =>
              Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String logo;

  final int operatorId;

  final List<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>?
      plans;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$name = name;
    resultData['name'] = l$name;
    final l$logo = logo;
    resultData['logo'] = l$logo;
    final l$operatorId = operatorId;
    resultData['operatorId'] = l$operatorId;
    final l$plans = plans;
    resultData['plans'] = l$plans?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$logo = logo;
    final l$operatorId = operatorId;
    final l$plans = plans;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$logo,
      l$operatorId,
      l$plans == null ? null : Object.hashAll(l$plans.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$logo = logo;
    final lOther$logo = other.logo;
    if (l$logo != lOther$logo) {
      return false;
    }
    final l$operatorId = operatorId;
    final lOther$operatorId = other.operatorId;
    if (l$operatorId != lOther$operatorId) {
      return false;
    }
    final l$plans = plans;
    final lOther$plans = other.plans;
    if (l$plans != null && lOther$plans != null) {
      if (l$plans.length != lOther$plans.length) {
        return false;
      }
      for (int i = 0; i < l$plans.length; i++) {
        final l$plans$entry = l$plans[i];
        final lOther$plans$entry = lOther$plans[i];
        if (l$plans$entry != lOther$plans$entry) {
          return false;
        }
      }
    } else if (l$plans != lOther$plans) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles
    on Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles {
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles>
      get copyWith =>
          CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
    TRes> {
  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles(
    Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles
        instance,
    TRes Function(
            Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles)
        then,
  ) = _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles;

  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles.stub(
          TRes res) =
      _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles;

  TRes call({
    String? name,
    String? logo,
    int? operatorId,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>?
        plans,
    String? $__typename,
  });
  TRes plans(
      Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>? Function(
              Iterable<
                  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
                      Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>>?)
          fn);
}

class _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
            TRes> {
  _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles(
    this._instance,
    this._then,
  );

  final Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles
      _instance;

  final TRes Function(
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? logo = _undefined,
    Object? operatorId = _undefined,
    Object? plans = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        logo: logo == _undefined || logo == null
            ? _instance.logo
            : (logo as String),
        operatorId: operatorId == _undefined || operatorId == null
            ? _instance.operatorId
            : (operatorId as int),
        plans: plans == _undefined
            ? _instance.plans
            : (plans as List<
                Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes plans(
          Iterable<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>? Function(
                  Iterable<
                      CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
                          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>>?)
              fn) =>
      call(
          plans: fn(_instance.plans?.map((e) =>
              CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles<
            TRes> {
  _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles(
      this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? logo,
    int? operatorId,
    List<Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>?
        plans,
    String? $__typename,
  }) =>
      _res;

  @override
  plans(fn) => _res;
}

class Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans {
  Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans({
    required this.amount,
    required this.desc,
    this.$__typename = 'IDataPlan',
  });

  factory Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$desc = json['desc'];
    final l$$__typename = json['__typename'];
    return Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans(
      amount: (l$amount as int),
      desc: (l$desc as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int amount;

  final String desc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$amount = amount;
    resultData['amount'] = l$amount;
    final l$desc = desc;
    resultData['desc'] = l$desc;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$desc = desc;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$desc,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans
    on Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans {
  CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans>
      get copyWith =>
          CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
    TRes> {
  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans(
    Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans
        instance,
    TRes Function(
            Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans)
        then,
  ) = _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans;

  factory CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans.stub(
          TRes res) =
      _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans;

  TRes call({
    int? amount,
    String? desc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
            TRes> {
  _CopyWithImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans(
    this._instance,
    this._then,
  );

  final Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans
      _instance;

  final TRes Function(
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? amount = _undefined,
    Object? desc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as int),
        desc: desc == _undefined || desc == null
            ? _instance.desc
            : (desc as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
        TRes>
    implements
        CopyWith$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans<
            TRes> {
  _CopyWithStubImpl$Query$utility_getTopUpOperators$utility_getTopUpOperators$dataBundles$plans(
      this._res);

  final TRes _res;

  @override
  call({
    int? amount,
    String? desc,
    String? $__typename,
  }) =>
      _res;
}
