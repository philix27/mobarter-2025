import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Mutation$WalletCrypto_create {
  Mutation$WalletCrypto_create({
    required this.walletCrypto_create,
    this.$__typename = 'Mutation',
  });

  factory Mutation$WalletCrypto_create.fromJson(Map<String, dynamic> json) {
    final l$walletCrypto_create = json['walletCrypto_create'];
    final l$$__typename = json['__typename'];
    return Mutation$WalletCrypto_create(
      walletCrypto_create: (l$walletCrypto_create as List<dynamic>)
          .map((e) => Mutation$WalletCrypto_create$walletCrypto_create.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$WalletCrypto_create$walletCrypto_create>
      walletCrypto_create;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$walletCrypto_create = walletCrypto_create;
    _resultData['walletCrypto_create'] =
        l$walletCrypto_create.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$walletCrypto_create = walletCrypto_create;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$walletCrypto_create.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$WalletCrypto_create ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$walletCrypto_create = walletCrypto_create;
    final lOther$walletCrypto_create = other.walletCrypto_create;
    if (l$walletCrypto_create.length != lOther$walletCrypto_create.length) {
      return false;
    }
    for (int i = 0; i < l$walletCrypto_create.length; i++) {
      final l$walletCrypto_create$entry = l$walletCrypto_create[i];
      final lOther$walletCrypto_create$entry = lOther$walletCrypto_create[i];
      if (l$walletCrypto_create$entry != lOther$walletCrypto_create$entry) {
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

extension UtilityExtension$Mutation$WalletCrypto_create
    on Mutation$WalletCrypto_create {
  CopyWith$Mutation$WalletCrypto_create<Mutation$WalletCrypto_create>
      get copyWith => CopyWith$Mutation$WalletCrypto_create(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$WalletCrypto_create<TRes> {
  factory CopyWith$Mutation$WalletCrypto_create(
    Mutation$WalletCrypto_create instance,
    TRes Function(Mutation$WalletCrypto_create) then,
  ) = _CopyWithImpl$Mutation$WalletCrypto_create;

  factory CopyWith$Mutation$WalletCrypto_create.stub(TRes res) =
      _CopyWithStubImpl$Mutation$WalletCrypto_create;

  TRes call({
    List<Mutation$WalletCrypto_create$walletCrypto_create>? walletCrypto_create,
    String? $__typename,
  });
  TRes walletCrypto_create(
      Iterable<Mutation$WalletCrypto_create$walletCrypto_create> Function(
              Iterable<
                  CopyWith$Mutation$WalletCrypto_create$walletCrypto_create<
                      Mutation$WalletCrypto_create$walletCrypto_create>>)
          _fn);
}

class _CopyWithImpl$Mutation$WalletCrypto_create<TRes>
    implements CopyWith$Mutation$WalletCrypto_create<TRes> {
  _CopyWithImpl$Mutation$WalletCrypto_create(
    this._instance,
    this._then,
  );

  final Mutation$WalletCrypto_create _instance;

  final TRes Function(Mutation$WalletCrypto_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? walletCrypto_create = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$WalletCrypto_create(
        walletCrypto_create:
            walletCrypto_create == _undefined || walletCrypto_create == null
                ? _instance.walletCrypto_create
                : (walletCrypto_create
                    as List<Mutation$WalletCrypto_create$walletCrypto_create>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes walletCrypto_create(
          Iterable<Mutation$WalletCrypto_create$walletCrypto_create> Function(
                  Iterable<
                      CopyWith$Mutation$WalletCrypto_create$walletCrypto_create<
                          Mutation$WalletCrypto_create$walletCrypto_create>>)
              _fn) =>
      call(
          walletCrypto_create: _fn(_instance.walletCrypto_create.map(
              (e) => CopyWith$Mutation$WalletCrypto_create$walletCrypto_create(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$WalletCrypto_create<TRes>
    implements CopyWith$Mutation$WalletCrypto_create<TRes> {
  _CopyWithStubImpl$Mutation$WalletCrypto_create(this._res);

  TRes _res;

  call({
    List<Mutation$WalletCrypto_create$walletCrypto_create>? walletCrypto_create,
    String? $__typename,
  }) =>
      _res;

  walletCrypto_create(_fn) => _res;
}

const documentNodeMutationWalletCrypto_create = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'WalletCrypto_create'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'walletCrypto_create'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'chainType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_id'),
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
]);
Mutation$WalletCrypto_create _parserFn$Mutation$WalletCrypto_create(
        Map<String, dynamic> data) =>
    Mutation$WalletCrypto_create.fromJson(data);
typedef OnMutationCompleted$Mutation$WalletCrypto_create = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$WalletCrypto_create?,
);

class Options$Mutation$WalletCrypto_create
    extends graphql.MutationOptions<Mutation$WalletCrypto_create> {
  Options$Mutation$WalletCrypto_create({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$WalletCrypto_create? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$WalletCrypto_create? onCompleted,
    graphql.OnMutationUpdate<Mutation$WalletCrypto_create>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$WalletCrypto_create(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationWalletCrypto_create,
          parserFn: _parserFn$Mutation$WalletCrypto_create,
        );

  final OnMutationCompleted$Mutation$WalletCrypto_create? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$WalletCrypto_create
    extends graphql.WatchQueryOptions<Mutation$WalletCrypto_create> {
  WatchOptions$Mutation$WalletCrypto_create({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$WalletCrypto_create? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationWalletCrypto_create,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$WalletCrypto_create,
        );
}

extension ClientExtension$Mutation$WalletCrypto_create
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$WalletCrypto_create>>
      mutate$WalletCrypto_create(
              [Options$Mutation$WalletCrypto_create? options]) async =>
          await this.mutate(options ?? Options$Mutation$WalletCrypto_create());
  graphql.ObservableQuery<Mutation$WalletCrypto_create>
      watchMutation$WalletCrypto_create(
              [WatchOptions$Mutation$WalletCrypto_create? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$WalletCrypto_create());
}

class Mutation$WalletCrypto_create$HookResult {
  Mutation$WalletCrypto_create$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$WalletCrypto_create runMutation;

  final graphql.QueryResult<Mutation$WalletCrypto_create> result;
}

Mutation$WalletCrypto_create$HookResult useMutation$WalletCrypto_create(
    [WidgetOptions$Mutation$WalletCrypto_create? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$WalletCrypto_create());
  return Mutation$WalletCrypto_create$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$WalletCrypto_create>
    useWatchMutation$WalletCrypto_create(
            [WatchOptions$Mutation$WalletCrypto_create? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$WalletCrypto_create());

class WidgetOptions$Mutation$WalletCrypto_create
    extends graphql.MutationOptions<Mutation$WalletCrypto_create> {
  WidgetOptions$Mutation$WalletCrypto_create({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$WalletCrypto_create? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$WalletCrypto_create? onCompleted,
    graphql.OnMutationUpdate<Mutation$WalletCrypto_create>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$WalletCrypto_create(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationWalletCrypto_create,
          parserFn: _parserFn$Mutation$WalletCrypto_create,
        );

  final OnMutationCompleted$Mutation$WalletCrypto_create? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$WalletCrypto_create
    = graphql.MultiSourceResult<Mutation$WalletCrypto_create> Function({
  Object? optimisticResult,
  Mutation$WalletCrypto_create? typedOptimisticResult,
});
typedef Builder$Mutation$WalletCrypto_create = widgets.Widget Function(
  RunMutation$Mutation$WalletCrypto_create,
  graphql.QueryResult<Mutation$WalletCrypto_create>?,
);

class Mutation$WalletCrypto_create$Widget
    extends graphql_flutter.Mutation<Mutation$WalletCrypto_create> {
  Mutation$WalletCrypto_create$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$WalletCrypto_create? options,
    required Builder$Mutation$WalletCrypto_create builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$WalletCrypto_create(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$WalletCrypto_create$walletCrypto_create {
  Mutation$WalletCrypto_create$walletCrypto_create({
    required this.address,
    required this.chainType,
    required this.id,
    this.wallet_id,
    this.$__typename = 'WalletCryptoResponse',
  });

  factory Mutation$WalletCrypto_create$walletCrypto_create.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$chainType = json['chainType'];
    final l$id = json['id'];
    final l$wallet_id = json['wallet_id'];
    final l$$__typename = json['__typename'];
    return Mutation$WalletCrypto_create$walletCrypto_create(
      address: (l$address as String),
      chainType: fromJson$Enum$ChainType((l$chainType as String)),
      id: (l$id as num).toDouble(),
      wallet_id: (l$wallet_id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final Enum$ChainType chainType;

  final double id;

  final String? wallet_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$chainType = chainType;
    _resultData['chainType'] = toJson$Enum$ChainType(l$chainType);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$wallet_id = wallet_id;
    _resultData['wallet_id'] = l$wallet_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$chainType = chainType;
    final l$id = id;
    final l$wallet_id = wallet_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$chainType,
      l$id,
      l$wallet_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$WalletCrypto_create$walletCrypto_create ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$chainType = chainType;
    final lOther$chainType = other.chainType;
    if (l$chainType != lOther$chainType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$wallet_id = wallet_id;
    final lOther$wallet_id = other.wallet_id;
    if (l$wallet_id != lOther$wallet_id) {
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

extension UtilityExtension$Mutation$WalletCrypto_create$walletCrypto_create
    on Mutation$WalletCrypto_create$walletCrypto_create {
  CopyWith$Mutation$WalletCrypto_create$walletCrypto_create<
          Mutation$WalletCrypto_create$walletCrypto_create>
      get copyWith => CopyWith$Mutation$WalletCrypto_create$walletCrypto_create(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$WalletCrypto_create$walletCrypto_create<TRes> {
  factory CopyWith$Mutation$WalletCrypto_create$walletCrypto_create(
    Mutation$WalletCrypto_create$walletCrypto_create instance,
    TRes Function(Mutation$WalletCrypto_create$walletCrypto_create) then,
  ) = _CopyWithImpl$Mutation$WalletCrypto_create$walletCrypto_create;

  factory CopyWith$Mutation$WalletCrypto_create$walletCrypto_create.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$WalletCrypto_create$walletCrypto_create;

  TRes call({
    String? address,
    Enum$ChainType? chainType,
    double? id,
    String? wallet_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$WalletCrypto_create$walletCrypto_create<TRes>
    implements CopyWith$Mutation$WalletCrypto_create$walletCrypto_create<TRes> {
  _CopyWithImpl$Mutation$WalletCrypto_create$walletCrypto_create(
    this._instance,
    this._then,
  );

  final Mutation$WalletCrypto_create$walletCrypto_create _instance;

  final TRes Function(Mutation$WalletCrypto_create$walletCrypto_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? chainType = _undefined,
    Object? id = _undefined,
    Object? wallet_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$WalletCrypto_create$walletCrypto_create(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        chainType: chainType == _undefined || chainType == null
            ? _instance.chainType
            : (chainType as Enum$ChainType),
        id: id == _undefined || id == null ? _instance.id : (id as double),
        wallet_id: wallet_id == _undefined
            ? _instance.wallet_id
            : (wallet_id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$WalletCrypto_create$walletCrypto_create<TRes>
    implements CopyWith$Mutation$WalletCrypto_create$walletCrypto_create<TRes> {
  _CopyWithStubImpl$Mutation$WalletCrypto_create$walletCrypto_create(this._res);

  TRes _res;

  call({
    String? address,
    Enum$ChainType? chainType,
    double? id,
    String? wallet_id,
    String? $__typename,
  }) =>
      _res;
}

class Query$WalletCrypto_getAll {
  Query$WalletCrypto_getAll({
    required this.walletCrypto_getAll,
    this.$__typename = 'Query',
  });

  factory Query$WalletCrypto_getAll.fromJson(Map<String, dynamic> json) {
    final l$walletCrypto_getAll = json['walletCrypto_getAll'];
    final l$$__typename = json['__typename'];
    return Query$WalletCrypto_getAll(
      walletCrypto_getAll: (l$walletCrypto_getAll as List<dynamic>)
          .map((e) => Query$WalletCrypto_getAll$walletCrypto_getAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$WalletCrypto_getAll$walletCrypto_getAll> walletCrypto_getAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$walletCrypto_getAll = walletCrypto_getAll;
    _resultData['walletCrypto_getAll'] =
        l$walletCrypto_getAll.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$walletCrypto_getAll = walletCrypto_getAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$walletCrypto_getAll.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$WalletCrypto_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$walletCrypto_getAll = walletCrypto_getAll;
    final lOther$walletCrypto_getAll = other.walletCrypto_getAll;
    if (l$walletCrypto_getAll.length != lOther$walletCrypto_getAll.length) {
      return false;
    }
    for (int i = 0; i < l$walletCrypto_getAll.length; i++) {
      final l$walletCrypto_getAll$entry = l$walletCrypto_getAll[i];
      final lOther$walletCrypto_getAll$entry = lOther$walletCrypto_getAll[i];
      if (l$walletCrypto_getAll$entry != lOther$walletCrypto_getAll$entry) {
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

extension UtilityExtension$Query$WalletCrypto_getAll
    on Query$WalletCrypto_getAll {
  CopyWith$Query$WalletCrypto_getAll<Query$WalletCrypto_getAll> get copyWith =>
      CopyWith$Query$WalletCrypto_getAll(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WalletCrypto_getAll<TRes> {
  factory CopyWith$Query$WalletCrypto_getAll(
    Query$WalletCrypto_getAll instance,
    TRes Function(Query$WalletCrypto_getAll) then,
  ) = _CopyWithImpl$Query$WalletCrypto_getAll;

  factory CopyWith$Query$WalletCrypto_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$WalletCrypto_getAll;

  TRes call({
    List<Query$WalletCrypto_getAll$walletCrypto_getAll>? walletCrypto_getAll,
    String? $__typename,
  });
  TRes walletCrypto_getAll(
      Iterable<Query$WalletCrypto_getAll$walletCrypto_getAll> Function(
              Iterable<
                  CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll<
                      Query$WalletCrypto_getAll$walletCrypto_getAll>>)
          _fn);
}

class _CopyWithImpl$Query$WalletCrypto_getAll<TRes>
    implements CopyWith$Query$WalletCrypto_getAll<TRes> {
  _CopyWithImpl$Query$WalletCrypto_getAll(
    this._instance,
    this._then,
  );

  final Query$WalletCrypto_getAll _instance;

  final TRes Function(Query$WalletCrypto_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? walletCrypto_getAll = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WalletCrypto_getAll(
        walletCrypto_getAll:
            walletCrypto_getAll == _undefined || walletCrypto_getAll == null
                ? _instance.walletCrypto_getAll
                : (walletCrypto_getAll
                    as List<Query$WalletCrypto_getAll$walletCrypto_getAll>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes walletCrypto_getAll(
          Iterable<Query$WalletCrypto_getAll$walletCrypto_getAll> Function(
                  Iterable<
                      CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll<
                          Query$WalletCrypto_getAll$walletCrypto_getAll>>)
              _fn) =>
      call(
          walletCrypto_getAll: _fn(_instance.walletCrypto_getAll.map(
              (e) => CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$WalletCrypto_getAll<TRes>
    implements CopyWith$Query$WalletCrypto_getAll<TRes> {
  _CopyWithStubImpl$Query$WalletCrypto_getAll(this._res);

  TRes _res;

  call({
    List<Query$WalletCrypto_getAll$walletCrypto_getAll>? walletCrypto_getAll,
    String? $__typename,
  }) =>
      _res;

  walletCrypto_getAll(_fn) => _res;
}

const documentNodeQueryWalletCrypto_getAll = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'WalletCrypto_getAll'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'walletCrypto_getAll'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'chainType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_id'),
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
]);
Query$WalletCrypto_getAll _parserFn$Query$WalletCrypto_getAll(
        Map<String, dynamic> data) =>
    Query$WalletCrypto_getAll.fromJson(data);
typedef OnQueryComplete$Query$WalletCrypto_getAll = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$WalletCrypto_getAll?,
);

class Options$Query$WalletCrypto_getAll
    extends graphql.QueryOptions<Query$WalletCrypto_getAll> {
  Options$Query$WalletCrypto_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WalletCrypto_getAll? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$WalletCrypto_getAll? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$WalletCrypto_getAll(data),
                  ),
          onError: onError,
          document: documentNodeQueryWalletCrypto_getAll,
          parserFn: _parserFn$Query$WalletCrypto_getAll,
        );

  final OnQueryComplete$Query$WalletCrypto_getAll? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$WalletCrypto_getAll
    extends graphql.WatchQueryOptions<Query$WalletCrypto_getAll> {
  WatchOptions$Query$WalletCrypto_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WalletCrypto_getAll? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryWalletCrypto_getAll,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$WalletCrypto_getAll,
        );
}

class FetchMoreOptions$Query$WalletCrypto_getAll
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$WalletCrypto_getAll(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryWalletCrypto_getAll,
        );
}

extension ClientExtension$Query$WalletCrypto_getAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$WalletCrypto_getAll>>
      query$WalletCrypto_getAll(
              [Options$Query$WalletCrypto_getAll? options]) async =>
          await this.query(options ?? Options$Query$WalletCrypto_getAll());
  graphql.ObservableQuery<Query$WalletCrypto_getAll>
      watchQuery$WalletCrypto_getAll(
              [WatchOptions$Query$WalletCrypto_getAll? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$WalletCrypto_getAll());
  void writeQuery$WalletCrypto_getAll({
    required Query$WalletCrypto_getAll data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryWalletCrypto_getAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$WalletCrypto_getAll? readQuery$WalletCrypto_getAll(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryWalletCrypto_getAll)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$WalletCrypto_getAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$WalletCrypto_getAll>
    useQuery$WalletCrypto_getAll(
            [Options$Query$WalletCrypto_getAll? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$WalletCrypto_getAll());
graphql.ObservableQuery<Query$WalletCrypto_getAll>
    useWatchQuery$WalletCrypto_getAll(
            [WatchOptions$Query$WalletCrypto_getAll? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$WalletCrypto_getAll());

class Query$WalletCrypto_getAll$Widget
    extends graphql_flutter.Query<Query$WalletCrypto_getAll> {
  Query$WalletCrypto_getAll$Widget({
    widgets.Key? key,
    Options$Query$WalletCrypto_getAll? options,
    required graphql_flutter.QueryBuilder<Query$WalletCrypto_getAll> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$WalletCrypto_getAll(),
          builder: builder,
        );
}

class Query$WalletCrypto_getAll$walletCrypto_getAll {
  Query$WalletCrypto_getAll$walletCrypto_getAll({
    required this.address,
    required this.chainType,
    required this.id,
    this.wallet_id,
    this.$__typename = 'WalletCryptoResponse',
  });

  factory Query$WalletCrypto_getAll$walletCrypto_getAll.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$chainType = json['chainType'];
    final l$id = json['id'];
    final l$wallet_id = json['wallet_id'];
    final l$$__typename = json['__typename'];
    return Query$WalletCrypto_getAll$walletCrypto_getAll(
      address: (l$address as String),
      chainType: fromJson$Enum$ChainType((l$chainType as String)),
      id: (l$id as num).toDouble(),
      wallet_id: (l$wallet_id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final Enum$ChainType chainType;

  final double id;

  final String? wallet_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$chainType = chainType;
    _resultData['chainType'] = toJson$Enum$ChainType(l$chainType);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$wallet_id = wallet_id;
    _resultData['wallet_id'] = l$wallet_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$chainType = chainType;
    final l$id = id;
    final l$wallet_id = wallet_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$chainType,
      l$id,
      l$wallet_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$WalletCrypto_getAll$walletCrypto_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$chainType = chainType;
    final lOther$chainType = other.chainType;
    if (l$chainType != lOther$chainType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$wallet_id = wallet_id;
    final lOther$wallet_id = other.wallet_id;
    if (l$wallet_id != lOther$wallet_id) {
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

extension UtilityExtension$Query$WalletCrypto_getAll$walletCrypto_getAll
    on Query$WalletCrypto_getAll$walletCrypto_getAll {
  CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll<
          Query$WalletCrypto_getAll$walletCrypto_getAll>
      get copyWith => CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll<TRes> {
  factory CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll(
    Query$WalletCrypto_getAll$walletCrypto_getAll instance,
    TRes Function(Query$WalletCrypto_getAll$walletCrypto_getAll) then,
  ) = _CopyWithImpl$Query$WalletCrypto_getAll$walletCrypto_getAll;

  factory CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WalletCrypto_getAll$walletCrypto_getAll;

  TRes call({
    String? address,
    Enum$ChainType? chainType,
    double? id,
    String? wallet_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$WalletCrypto_getAll$walletCrypto_getAll<TRes>
    implements CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll<TRes> {
  _CopyWithImpl$Query$WalletCrypto_getAll$walletCrypto_getAll(
    this._instance,
    this._then,
  );

  final Query$WalletCrypto_getAll$walletCrypto_getAll _instance;

  final TRes Function(Query$WalletCrypto_getAll$walletCrypto_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? chainType = _undefined,
    Object? id = _undefined,
    Object? wallet_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WalletCrypto_getAll$walletCrypto_getAll(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        chainType: chainType == _undefined || chainType == null
            ? _instance.chainType
            : (chainType as Enum$ChainType),
        id: id == _undefined || id == null ? _instance.id : (id as double),
        wallet_id: wallet_id == _undefined
            ? _instance.wallet_id
            : (wallet_id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$WalletCrypto_getAll$walletCrypto_getAll<TRes>
    implements CopyWith$Query$WalletCrypto_getAll$walletCrypto_getAll<TRes> {
  _CopyWithStubImpl$Query$WalletCrypto_getAll$walletCrypto_getAll(this._res);

  TRes _res;

  call({
    String? address,
    Enum$ChainType? chainType,
    double? id,
    String? wallet_id,
    String? $__typename,
  }) =>
      _res;
}
