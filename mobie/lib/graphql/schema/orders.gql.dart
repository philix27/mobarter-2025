import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$Orders_CreateSell {
  factory Variables$Mutation$Orders_CreateSell(
          {required Input$Order_CreteSellInput input}) =>
      Variables$Mutation$Orders_CreateSell._({
        r'input': input,
      });

  Variables$Mutation$Orders_CreateSell._(this._$data);

  factory Variables$Mutation$Orders_CreateSell.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Order_CreteSellInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$Orders_CreateSell._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Order_CreteSellInput get input =>
      (_$data['input'] as Input$Order_CreteSellInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Orders_CreateSell<
          Variables$Mutation$Orders_CreateSell>
      get copyWith => CopyWith$Variables$Mutation$Orders_CreateSell(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Orders_CreateSell ||
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

abstract class CopyWith$Variables$Mutation$Orders_CreateSell<TRes> {
  factory CopyWith$Variables$Mutation$Orders_CreateSell(
    Variables$Mutation$Orders_CreateSell instance,
    TRes Function(Variables$Mutation$Orders_CreateSell) then,
  ) = _CopyWithImpl$Variables$Mutation$Orders_CreateSell;

  factory CopyWith$Variables$Mutation$Orders_CreateSell.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Orders_CreateSell;

  TRes call({Input$Order_CreteSellInput? input});
}

class _CopyWithImpl$Variables$Mutation$Orders_CreateSell<TRes>
    implements CopyWith$Variables$Mutation$Orders_CreateSell<TRes> {
  _CopyWithImpl$Variables$Mutation$Orders_CreateSell(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Orders_CreateSell _instance;

  final TRes Function(Variables$Mutation$Orders_CreateSell) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Orders_CreateSell._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Order_CreteSellInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Orders_CreateSell<TRes>
    implements CopyWith$Variables$Mutation$Orders_CreateSell<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Orders_CreateSell(this._res);

  TRes _res;

  call({Input$Order_CreteSellInput? input}) => _res;
}

class Mutation$Orders_CreateSell {
  Mutation$Orders_CreateSell({
    required this.orders_CreateSell,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Orders_CreateSell.fromJson(Map<String, dynamic> json) {
    final l$orders_CreateSell = json['orders_CreateSell'];
    final l$$__typename = json['__typename'];
    return Mutation$Orders_CreateSell(
      orders_CreateSell: Mutation$Orders_CreateSell$orders_CreateSell.fromJson(
          (l$orders_CreateSell as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Orders_CreateSell$orders_CreateSell orders_CreateSell;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders_CreateSell = orders_CreateSell;
    _resultData['orders_CreateSell'] = l$orders_CreateSell.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders_CreateSell = orders_CreateSell;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orders_CreateSell,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Orders_CreateSell ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders_CreateSell = orders_CreateSell;
    final lOther$orders_CreateSell = other.orders_CreateSell;
    if (l$orders_CreateSell != lOther$orders_CreateSell) {
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

extension UtilityExtension$Mutation$Orders_CreateSell
    on Mutation$Orders_CreateSell {
  CopyWith$Mutation$Orders_CreateSell<Mutation$Orders_CreateSell>
      get copyWith => CopyWith$Mutation$Orders_CreateSell(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Orders_CreateSell<TRes> {
  factory CopyWith$Mutation$Orders_CreateSell(
    Mutation$Orders_CreateSell instance,
    TRes Function(Mutation$Orders_CreateSell) then,
  ) = _CopyWithImpl$Mutation$Orders_CreateSell;

  factory CopyWith$Mutation$Orders_CreateSell.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Orders_CreateSell;

  TRes call({
    Mutation$Orders_CreateSell$orders_CreateSell? orders_CreateSell,
    String? $__typename,
  });
  CopyWith$Mutation$Orders_CreateSell$orders_CreateSell<TRes>
      get orders_CreateSell;
}

class _CopyWithImpl$Mutation$Orders_CreateSell<TRes>
    implements CopyWith$Mutation$Orders_CreateSell<TRes> {
  _CopyWithImpl$Mutation$Orders_CreateSell(
    this._instance,
    this._then,
  );

  final Mutation$Orders_CreateSell _instance;

  final TRes Function(Mutation$Orders_CreateSell) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders_CreateSell = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Orders_CreateSell(
        orders_CreateSell:
            orders_CreateSell == _undefined || orders_CreateSell == null
                ? _instance.orders_CreateSell
                : (orders_CreateSell
                    as Mutation$Orders_CreateSell$orders_CreateSell),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Orders_CreateSell$orders_CreateSell<TRes>
      get orders_CreateSell {
    final local$orders_CreateSell = _instance.orders_CreateSell;
    return CopyWith$Mutation$Orders_CreateSell$orders_CreateSell(
        local$orders_CreateSell, (e) => call(orders_CreateSell: e));
  }
}

class _CopyWithStubImpl$Mutation$Orders_CreateSell<TRes>
    implements CopyWith$Mutation$Orders_CreateSell<TRes> {
  _CopyWithStubImpl$Mutation$Orders_CreateSell(this._res);

  TRes _res;

  call({
    Mutation$Orders_CreateSell$orders_CreateSell? orders_CreateSell,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Orders_CreateSell$orders_CreateSell<TRes>
      get orders_CreateSell =>
          CopyWith$Mutation$Orders_CreateSell$orders_CreateSell.stub(_res);
}

const documentNodeMutationOrders_CreateSell = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Orders_CreateSell'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Order_CreteSellInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders_CreateSell'),
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
            name: NameNode(value: 'message'),
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
Mutation$Orders_CreateSell _parserFn$Mutation$Orders_CreateSell(
        Map<String, dynamic> data) =>
    Mutation$Orders_CreateSell.fromJson(data);
typedef OnMutationCompleted$Mutation$Orders_CreateSell = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Orders_CreateSell?,
);

class Options$Mutation$Orders_CreateSell
    extends graphql.MutationOptions<Mutation$Orders_CreateSell> {
  Options$Mutation$Orders_CreateSell({
    String? operationName,
    required Variables$Mutation$Orders_CreateSell variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Orders_CreateSell? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Orders_CreateSell? onCompleted,
    graphql.OnMutationUpdate<Mutation$Orders_CreateSell>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
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
                        : _parserFn$Mutation$Orders_CreateSell(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationOrders_CreateSell,
          parserFn: _parserFn$Mutation$Orders_CreateSell,
        );

  final OnMutationCompleted$Mutation$Orders_CreateSell? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Orders_CreateSell
    extends graphql.WatchQueryOptions<Mutation$Orders_CreateSell> {
  WatchOptions$Mutation$Orders_CreateSell({
    String? operationName,
    required Variables$Mutation$Orders_CreateSell variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Orders_CreateSell? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationOrders_CreateSell,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Orders_CreateSell,
        );
}

extension ClientExtension$Mutation$Orders_CreateSell on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Orders_CreateSell>>
      mutate$Orders_CreateSell(
              Options$Mutation$Orders_CreateSell options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Orders_CreateSell>
      watchMutation$Orders_CreateSell(
              WatchOptions$Mutation$Orders_CreateSell options) =>
          this.watchMutation(options);
}

class Mutation$Orders_CreateSell$HookResult {
  Mutation$Orders_CreateSell$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Orders_CreateSell runMutation;

  final graphql.QueryResult<Mutation$Orders_CreateSell> result;
}

Mutation$Orders_CreateSell$HookResult useMutation$Orders_CreateSell(
    [WidgetOptions$Mutation$Orders_CreateSell? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Orders_CreateSell());
  return Mutation$Orders_CreateSell$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Orders_CreateSell>
    useWatchMutation$Orders_CreateSell(
            WatchOptions$Mutation$Orders_CreateSell options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Orders_CreateSell
    extends graphql.MutationOptions<Mutation$Orders_CreateSell> {
  WidgetOptions$Mutation$Orders_CreateSell({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Orders_CreateSell? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Orders_CreateSell? onCompleted,
    graphql.OnMutationUpdate<Mutation$Orders_CreateSell>? update,
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
                        : _parserFn$Mutation$Orders_CreateSell(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationOrders_CreateSell,
          parserFn: _parserFn$Mutation$Orders_CreateSell,
        );

  final OnMutationCompleted$Mutation$Orders_CreateSell? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Orders_CreateSell
    = graphql.MultiSourceResult<Mutation$Orders_CreateSell> Function(
  Variables$Mutation$Orders_CreateSell, {
  Object? optimisticResult,
  Mutation$Orders_CreateSell? typedOptimisticResult,
});
typedef Builder$Mutation$Orders_CreateSell = widgets.Widget Function(
  RunMutation$Mutation$Orders_CreateSell,
  graphql.QueryResult<Mutation$Orders_CreateSell>?,
);

class Mutation$Orders_CreateSell$Widget
    extends graphql_flutter.Mutation<Mutation$Orders_CreateSell> {
  Mutation$Orders_CreateSell$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Orders_CreateSell? options,
    required Builder$Mutation$Orders_CreateSell builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Orders_CreateSell(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$Orders_CreateSell$orders_CreateSell {
  Mutation$Orders_CreateSell$orders_CreateSell({
    required this.message,
    this.$__typename = 'Order_CreteSellResponse',
  });

  factory Mutation$Orders_CreateSell$orders_CreateSell.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Orders_CreateSell$orders_CreateSell(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Orders_CreateSell$orders_CreateSell ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$Orders_CreateSell$orders_CreateSell
    on Mutation$Orders_CreateSell$orders_CreateSell {
  CopyWith$Mutation$Orders_CreateSell$orders_CreateSell<
          Mutation$Orders_CreateSell$orders_CreateSell>
      get copyWith => CopyWith$Mutation$Orders_CreateSell$orders_CreateSell(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Orders_CreateSell$orders_CreateSell<TRes> {
  factory CopyWith$Mutation$Orders_CreateSell$orders_CreateSell(
    Mutation$Orders_CreateSell$orders_CreateSell instance,
    TRes Function(Mutation$Orders_CreateSell$orders_CreateSell) then,
  ) = _CopyWithImpl$Mutation$Orders_CreateSell$orders_CreateSell;

  factory CopyWith$Mutation$Orders_CreateSell$orders_CreateSell.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Orders_CreateSell$orders_CreateSell;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Orders_CreateSell$orders_CreateSell<TRes>
    implements CopyWith$Mutation$Orders_CreateSell$orders_CreateSell<TRes> {
  _CopyWithImpl$Mutation$Orders_CreateSell$orders_CreateSell(
    this._instance,
    this._then,
  );

  final Mutation$Orders_CreateSell$orders_CreateSell _instance;

  final TRes Function(Mutation$Orders_CreateSell$orders_CreateSell) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Orders_CreateSell$orders_CreateSell(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Orders_CreateSell$orders_CreateSell<TRes>
    implements CopyWith$Mutation$Orders_CreateSell$orders_CreateSell<TRes> {
  _CopyWithStubImpl$Mutation$Orders_CreateSell$orders_CreateSell(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Orders_GetAll {
  factory Variables$Query$Orders_GetAll(
          {required Input$Order_GetAllInput input}) =>
      Variables$Query$Orders_GetAll._({
        r'input': input,
      });

  Variables$Query$Orders_GetAll._(this._$data);

  factory Variables$Query$Orders_GetAll.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Order_GetAllInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$Orders_GetAll._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Order_GetAllInput get input =>
      (_$data['input'] as Input$Order_GetAllInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Orders_GetAll<Variables$Query$Orders_GetAll>
      get copyWith => CopyWith$Variables$Query$Orders_GetAll(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Orders_GetAll ||
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

abstract class CopyWith$Variables$Query$Orders_GetAll<TRes> {
  factory CopyWith$Variables$Query$Orders_GetAll(
    Variables$Query$Orders_GetAll instance,
    TRes Function(Variables$Query$Orders_GetAll) then,
  ) = _CopyWithImpl$Variables$Query$Orders_GetAll;

  factory CopyWith$Variables$Query$Orders_GetAll.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Orders_GetAll;

  TRes call({Input$Order_GetAllInput? input});
}

class _CopyWithImpl$Variables$Query$Orders_GetAll<TRes>
    implements CopyWith$Variables$Query$Orders_GetAll<TRes> {
  _CopyWithImpl$Variables$Query$Orders_GetAll(
    this._instance,
    this._then,
  );

  final Variables$Query$Orders_GetAll _instance;

  final TRes Function(Variables$Query$Orders_GetAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$Orders_GetAll._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Order_GetAllInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Orders_GetAll<TRes>
    implements CopyWith$Variables$Query$Orders_GetAll<TRes> {
  _CopyWithStubImpl$Variables$Query$Orders_GetAll(this._res);

  TRes _res;

  call({Input$Order_GetAllInput? input}) => _res;
}

class Query$Orders_GetAll {
  Query$Orders_GetAll({
    required this.orders_GetAll,
    this.$__typename = 'Query',
  });

  factory Query$Orders_GetAll.fromJson(Map<String, dynamic> json) {
    final l$orders_GetAll = json['orders_GetAll'];
    final l$$__typename = json['__typename'];
    return Query$Orders_GetAll(
      orders_GetAll: (l$orders_GetAll as List<dynamic>)
          .map((e) => Query$Orders_GetAll$orders_GetAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Orders_GetAll$orders_GetAll> orders_GetAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders_GetAll = orders_GetAll;
    _resultData['orders_GetAll'] =
        l$orders_GetAll.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders_GetAll = orders_GetAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$orders_GetAll.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Orders_GetAll || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders_GetAll = orders_GetAll;
    final lOther$orders_GetAll = other.orders_GetAll;
    if (l$orders_GetAll.length != lOther$orders_GetAll.length) {
      return false;
    }
    for (int i = 0; i < l$orders_GetAll.length; i++) {
      final l$orders_GetAll$entry = l$orders_GetAll[i];
      final lOther$orders_GetAll$entry = lOther$orders_GetAll[i];
      if (l$orders_GetAll$entry != lOther$orders_GetAll$entry) {
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

extension UtilityExtension$Query$Orders_GetAll on Query$Orders_GetAll {
  CopyWith$Query$Orders_GetAll<Query$Orders_GetAll> get copyWith =>
      CopyWith$Query$Orders_GetAll(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Orders_GetAll<TRes> {
  factory CopyWith$Query$Orders_GetAll(
    Query$Orders_GetAll instance,
    TRes Function(Query$Orders_GetAll) then,
  ) = _CopyWithImpl$Query$Orders_GetAll;

  factory CopyWith$Query$Orders_GetAll.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders_GetAll;

  TRes call({
    List<Query$Orders_GetAll$orders_GetAll>? orders_GetAll,
    String? $__typename,
  });
  TRes orders_GetAll(
      Iterable<Query$Orders_GetAll$orders_GetAll> Function(
              Iterable<
                  CopyWith$Query$Orders_GetAll$orders_GetAll<
                      Query$Orders_GetAll$orders_GetAll>>)
          _fn);
}

class _CopyWithImpl$Query$Orders_GetAll<TRes>
    implements CopyWith$Query$Orders_GetAll<TRes> {
  _CopyWithImpl$Query$Orders_GetAll(
    this._instance,
    this._then,
  );

  final Query$Orders_GetAll _instance;

  final TRes Function(Query$Orders_GetAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders_GetAll = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders_GetAll(
        orders_GetAll: orders_GetAll == _undefined || orders_GetAll == null
            ? _instance.orders_GetAll
            : (orders_GetAll as List<Query$Orders_GetAll$orders_GetAll>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes orders_GetAll(
          Iterable<Query$Orders_GetAll$orders_GetAll> Function(
                  Iterable<
                      CopyWith$Query$Orders_GetAll$orders_GetAll<
                          Query$Orders_GetAll$orders_GetAll>>)
              _fn) =>
      call(
          orders_GetAll: _fn(_instance.orders_GetAll
              .map((e) => CopyWith$Query$Orders_GetAll$orders_GetAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Orders_GetAll<TRes>
    implements CopyWith$Query$Orders_GetAll<TRes> {
  _CopyWithStubImpl$Query$Orders_GetAll(this._res);

  TRes _res;

  call({
    List<Query$Orders_GetAll$orders_GetAll>? orders_GetAll,
    String? $__typename,
  }) =>
      _res;

  orders_GetAll(_fn) => _res;
}

const documentNodeQueryOrders_GetAll = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Orders_GetAll'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Order_GetAllInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders_GetAll'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'action_user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency_fiat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'trade_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'action_user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'action_merchant'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'amount_crypto'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'amount_fiat'),
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
Query$Orders_GetAll _parserFn$Query$Orders_GetAll(Map<String, dynamic> data) =>
    Query$Orders_GetAll.fromJson(data);
typedef OnQueryComplete$Query$Orders_GetAll = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Orders_GetAll?,
);

class Options$Query$Orders_GetAll
    extends graphql.QueryOptions<Query$Orders_GetAll> {
  Options$Query$Orders_GetAll({
    String? operationName,
    required Variables$Query$Orders_GetAll variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders_GetAll? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Orders_GetAll? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Orders_GetAll(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrders_GetAll,
          parserFn: _parserFn$Query$Orders_GetAll,
        );

  final OnQueryComplete$Query$Orders_GetAll? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Orders_GetAll
    extends graphql.WatchQueryOptions<Query$Orders_GetAll> {
  WatchOptions$Query$Orders_GetAll({
    String? operationName,
    required Variables$Query$Orders_GetAll variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders_GetAll? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryOrders_GetAll,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Orders_GetAll,
        );
}

class FetchMoreOptions$Query$Orders_GetAll extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Orders_GetAll({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Orders_GetAll variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryOrders_GetAll,
        );
}

extension ClientExtension$Query$Orders_GetAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Orders_GetAll>> query$Orders_GetAll(
          Options$Query$Orders_GetAll options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Orders_GetAll> watchQuery$Orders_GetAll(
          WatchOptions$Query$Orders_GetAll options) =>
      this.watchQuery(options);
  void writeQuery$Orders_GetAll({
    required Query$Orders_GetAll data,
    required Variables$Query$Orders_GetAll variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryOrders_GetAll),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Orders_GetAll? readQuery$Orders_GetAll({
    required Variables$Query$Orders_GetAll variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOrders_GetAll),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Orders_GetAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Orders_GetAll> useQuery$Orders_GetAll(
        Options$Query$Orders_GetAll options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Orders_GetAll> useWatchQuery$Orders_GetAll(
        WatchOptions$Query$Orders_GetAll options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Orders_GetAll$Widget
    extends graphql_flutter.Query<Query$Orders_GetAll> {
  Query$Orders_GetAll$Widget({
    widgets.Key? key,
    required Options$Query$Orders_GetAll options,
    required graphql_flutter.QueryBuilder<Query$Orders_GetAll> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Orders_GetAll$orders_GetAll {
  Query$Orders_GetAll$orders_GetAll({
    required this.id,
    this.action_user,
    required this.status,
    required this.bank_id,
    required this.currency_fiat,
    required this.trade_type,
    this.action_merchant,
    required this.amount_crypto,
    required this.amount_fiat,
    this.$__typename = 'Order_GetAllResponse',
  });

  factory Query$Orders_GetAll$orders_GetAll.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$action_user = json['action_user'];
    final l$status = json['status'];
    final l$bank_id = json['bank_id'];
    final l$currency_fiat = json['currency_fiat'];
    final l$trade_type = json['trade_type'];
    final l$action_merchant = json['action_merchant'];
    final l$amount_crypto = json['amount_crypto'];
    final l$amount_fiat = json['amount_fiat'];
    final l$$__typename = json['__typename'];
    return Query$Orders_GetAll$orders_GetAll(
      id: (l$id as String),
      action_user: l$action_user == null
          ? null
          : fromJson$Enum$OrderActions((l$action_user as String)),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      bank_id: (l$bank_id as num).toDouble(),
      currency_fiat: fromJson$Enum$Country((l$currency_fiat as String)),
      trade_type: fromJson$Enum$TradeType((l$trade_type as String)),
      action_merchant: l$action_merchant == null
          ? null
          : fromJson$Enum$OrderActions((l$action_merchant as String)),
      amount_crypto: (l$amount_crypto as num).toDouble(),
      amount_fiat: (l$amount_fiat as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$OrderActions? action_user;

  final Enum$OrderStatus status;

  final double bank_id;

  final Enum$Country currency_fiat;

  final Enum$TradeType trade_type;

  final Enum$OrderActions? action_merchant;

  final double amount_crypto;

  final double amount_fiat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$action_user = action_user;
    _resultData['action_user'] =
        l$action_user == null ? null : toJson$Enum$OrderActions(l$action_user);
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$currency_fiat = currency_fiat;
    _resultData['currency_fiat'] = toJson$Enum$Country(l$currency_fiat);
    final l$trade_type = trade_type;
    _resultData['trade_type'] = toJson$Enum$TradeType(l$trade_type);
    final l$action_merchant = action_merchant;
    _resultData['action_merchant'] = l$action_merchant == null
        ? null
        : toJson$Enum$OrderActions(l$action_merchant);
    final l$amount_crypto = amount_crypto;
    _resultData['amount_crypto'] = l$amount_crypto;
    final l$amount_fiat = amount_fiat;
    _resultData['amount_fiat'] = l$amount_fiat;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$action_user = action_user;
    final l$status = status;
    final l$bank_id = bank_id;
    final l$currency_fiat = currency_fiat;
    final l$trade_type = trade_type;
    final l$action_merchant = action_merchant;
    final l$amount_crypto = amount_crypto;
    final l$amount_fiat = amount_fiat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$action_user,
      l$status,
      l$bank_id,
      l$currency_fiat,
      l$trade_type,
      l$action_merchant,
      l$amount_crypto,
      l$amount_fiat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Orders_GetAll$orders_GetAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$action_user = action_user;
    final lOther$action_user = other.action_user;
    if (l$action_user != lOther$action_user) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$currency_fiat = currency_fiat;
    final lOther$currency_fiat = other.currency_fiat;
    if (l$currency_fiat != lOther$currency_fiat) {
      return false;
    }
    final l$trade_type = trade_type;
    final lOther$trade_type = other.trade_type;
    if (l$trade_type != lOther$trade_type) {
      return false;
    }
    final l$action_merchant = action_merchant;
    final lOther$action_merchant = other.action_merchant;
    if (l$action_merchant != lOther$action_merchant) {
      return false;
    }
    final l$amount_crypto = amount_crypto;
    final lOther$amount_crypto = other.amount_crypto;
    if (l$amount_crypto != lOther$amount_crypto) {
      return false;
    }
    final l$amount_fiat = amount_fiat;
    final lOther$amount_fiat = other.amount_fiat;
    if (l$amount_fiat != lOther$amount_fiat) {
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

extension UtilityExtension$Query$Orders_GetAll$orders_GetAll
    on Query$Orders_GetAll$orders_GetAll {
  CopyWith$Query$Orders_GetAll$orders_GetAll<Query$Orders_GetAll$orders_GetAll>
      get copyWith => CopyWith$Query$Orders_GetAll$orders_GetAll(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Orders_GetAll$orders_GetAll<TRes> {
  factory CopyWith$Query$Orders_GetAll$orders_GetAll(
    Query$Orders_GetAll$orders_GetAll instance,
    TRes Function(Query$Orders_GetAll$orders_GetAll) then,
  ) = _CopyWithImpl$Query$Orders_GetAll$orders_GetAll;

  factory CopyWith$Query$Orders_GetAll$orders_GetAll.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders_GetAll$orders_GetAll;

  TRes call({
    String? id,
    Enum$OrderActions? action_user,
    Enum$OrderStatus? status,
    double? bank_id,
    Enum$Country? currency_fiat,
    Enum$TradeType? trade_type,
    Enum$OrderActions? action_merchant,
    double? amount_crypto,
    double? amount_fiat,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Orders_GetAll$orders_GetAll<TRes>
    implements CopyWith$Query$Orders_GetAll$orders_GetAll<TRes> {
  _CopyWithImpl$Query$Orders_GetAll$orders_GetAll(
    this._instance,
    this._then,
  );

  final Query$Orders_GetAll$orders_GetAll _instance;

  final TRes Function(Query$Orders_GetAll$orders_GetAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? action_user = _undefined,
    Object? status = _undefined,
    Object? bank_id = _undefined,
    Object? currency_fiat = _undefined,
    Object? trade_type = _undefined,
    Object? action_merchant = _undefined,
    Object? amount_crypto = _undefined,
    Object? amount_fiat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders_GetAll$orders_GetAll(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        action_user: action_user == _undefined
            ? _instance.action_user
            : (action_user as Enum$OrderActions?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        bank_id: bank_id == _undefined || bank_id == null
            ? _instance.bank_id
            : (bank_id as double),
        currency_fiat: currency_fiat == _undefined || currency_fiat == null
            ? _instance.currency_fiat
            : (currency_fiat as Enum$Country),
        trade_type: trade_type == _undefined || trade_type == null
            ? _instance.trade_type
            : (trade_type as Enum$TradeType),
        action_merchant: action_merchant == _undefined
            ? _instance.action_merchant
            : (action_merchant as Enum$OrderActions?),
        amount_crypto: amount_crypto == _undefined || amount_crypto == null
            ? _instance.amount_crypto
            : (amount_crypto as double),
        amount_fiat: amount_fiat == _undefined || amount_fiat == null
            ? _instance.amount_fiat
            : (amount_fiat as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Orders_GetAll$orders_GetAll<TRes>
    implements CopyWith$Query$Orders_GetAll$orders_GetAll<TRes> {
  _CopyWithStubImpl$Query$Orders_GetAll$orders_GetAll(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderActions? action_user,
    Enum$OrderStatus? status,
    double? bank_id,
    Enum$Country? currency_fiat,
    Enum$TradeType? trade_type,
    Enum$OrderActions? action_merchant,
    double? amount_crypto,
    double? amount_fiat,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Orders_CreateBuy {
  factory Variables$Mutation$Orders_CreateBuy(
          {required Input$Order_CreteBuyInput input}) =>
      Variables$Mutation$Orders_CreateBuy._({
        r'input': input,
      });

  Variables$Mutation$Orders_CreateBuy._(this._$data);

  factory Variables$Mutation$Orders_CreateBuy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Order_CreteBuyInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$Orders_CreateBuy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Order_CreteBuyInput get input =>
      (_$data['input'] as Input$Order_CreteBuyInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Orders_CreateBuy<
          Variables$Mutation$Orders_CreateBuy>
      get copyWith => CopyWith$Variables$Mutation$Orders_CreateBuy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Orders_CreateBuy ||
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

abstract class CopyWith$Variables$Mutation$Orders_CreateBuy<TRes> {
  factory CopyWith$Variables$Mutation$Orders_CreateBuy(
    Variables$Mutation$Orders_CreateBuy instance,
    TRes Function(Variables$Mutation$Orders_CreateBuy) then,
  ) = _CopyWithImpl$Variables$Mutation$Orders_CreateBuy;

  factory CopyWith$Variables$Mutation$Orders_CreateBuy.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Orders_CreateBuy;

  TRes call({Input$Order_CreteBuyInput? input});
}

class _CopyWithImpl$Variables$Mutation$Orders_CreateBuy<TRes>
    implements CopyWith$Variables$Mutation$Orders_CreateBuy<TRes> {
  _CopyWithImpl$Variables$Mutation$Orders_CreateBuy(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Orders_CreateBuy _instance;

  final TRes Function(Variables$Mutation$Orders_CreateBuy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Orders_CreateBuy._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Order_CreteBuyInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Orders_CreateBuy<TRes>
    implements CopyWith$Variables$Mutation$Orders_CreateBuy<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Orders_CreateBuy(this._res);

  TRes _res;

  call({Input$Order_CreteBuyInput? input}) => _res;
}

class Mutation$Orders_CreateBuy {
  Mutation$Orders_CreateBuy({
    required this.orders_CreateBuy,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Orders_CreateBuy.fromJson(Map<String, dynamic> json) {
    final l$orders_CreateBuy = json['orders_CreateBuy'];
    final l$$__typename = json['__typename'];
    return Mutation$Orders_CreateBuy(
      orders_CreateBuy: Mutation$Orders_CreateBuy$orders_CreateBuy.fromJson(
          (l$orders_CreateBuy as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Orders_CreateBuy$orders_CreateBuy orders_CreateBuy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders_CreateBuy = orders_CreateBuy;
    _resultData['orders_CreateBuy'] = l$orders_CreateBuy.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders_CreateBuy = orders_CreateBuy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orders_CreateBuy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Orders_CreateBuy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders_CreateBuy = orders_CreateBuy;
    final lOther$orders_CreateBuy = other.orders_CreateBuy;
    if (l$orders_CreateBuy != lOther$orders_CreateBuy) {
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

extension UtilityExtension$Mutation$Orders_CreateBuy
    on Mutation$Orders_CreateBuy {
  CopyWith$Mutation$Orders_CreateBuy<Mutation$Orders_CreateBuy> get copyWith =>
      CopyWith$Mutation$Orders_CreateBuy(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Orders_CreateBuy<TRes> {
  factory CopyWith$Mutation$Orders_CreateBuy(
    Mutation$Orders_CreateBuy instance,
    TRes Function(Mutation$Orders_CreateBuy) then,
  ) = _CopyWithImpl$Mutation$Orders_CreateBuy;

  factory CopyWith$Mutation$Orders_CreateBuy.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Orders_CreateBuy;

  TRes call({
    Mutation$Orders_CreateBuy$orders_CreateBuy? orders_CreateBuy,
    String? $__typename,
  });
  CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes>
      get orders_CreateBuy;
}

class _CopyWithImpl$Mutation$Orders_CreateBuy<TRes>
    implements CopyWith$Mutation$Orders_CreateBuy<TRes> {
  _CopyWithImpl$Mutation$Orders_CreateBuy(
    this._instance,
    this._then,
  );

  final Mutation$Orders_CreateBuy _instance;

  final TRes Function(Mutation$Orders_CreateBuy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders_CreateBuy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Orders_CreateBuy(
        orders_CreateBuy: orders_CreateBuy == _undefined ||
                orders_CreateBuy == null
            ? _instance.orders_CreateBuy
            : (orders_CreateBuy as Mutation$Orders_CreateBuy$orders_CreateBuy),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes>
      get orders_CreateBuy {
    final local$orders_CreateBuy = _instance.orders_CreateBuy;
    return CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy(
        local$orders_CreateBuy, (e) => call(orders_CreateBuy: e));
  }
}

class _CopyWithStubImpl$Mutation$Orders_CreateBuy<TRes>
    implements CopyWith$Mutation$Orders_CreateBuy<TRes> {
  _CopyWithStubImpl$Mutation$Orders_CreateBuy(this._res);

  TRes _res;

  call({
    Mutation$Orders_CreateBuy$orders_CreateBuy? orders_CreateBuy,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes>
      get orders_CreateBuy =>
          CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy.stub(_res);
}

const documentNodeMutationOrders_CreateBuy = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Orders_CreateBuy'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Order_CreteBuyInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders_CreateBuy'),
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
            name: NameNode(value: 'message'),
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
Mutation$Orders_CreateBuy _parserFn$Mutation$Orders_CreateBuy(
        Map<String, dynamic> data) =>
    Mutation$Orders_CreateBuy.fromJson(data);
typedef OnMutationCompleted$Mutation$Orders_CreateBuy = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Orders_CreateBuy?,
);

class Options$Mutation$Orders_CreateBuy
    extends graphql.MutationOptions<Mutation$Orders_CreateBuy> {
  Options$Mutation$Orders_CreateBuy({
    String? operationName,
    required Variables$Mutation$Orders_CreateBuy variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Orders_CreateBuy? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Orders_CreateBuy? onCompleted,
    graphql.OnMutationUpdate<Mutation$Orders_CreateBuy>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
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
                        : _parserFn$Mutation$Orders_CreateBuy(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationOrders_CreateBuy,
          parserFn: _parserFn$Mutation$Orders_CreateBuy,
        );

  final OnMutationCompleted$Mutation$Orders_CreateBuy? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Orders_CreateBuy
    extends graphql.WatchQueryOptions<Mutation$Orders_CreateBuy> {
  WatchOptions$Mutation$Orders_CreateBuy({
    String? operationName,
    required Variables$Mutation$Orders_CreateBuy variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Orders_CreateBuy? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationOrders_CreateBuy,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Orders_CreateBuy,
        );
}

extension ClientExtension$Mutation$Orders_CreateBuy on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Orders_CreateBuy>>
      mutate$Orders_CreateBuy(
              Options$Mutation$Orders_CreateBuy options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Orders_CreateBuy>
      watchMutation$Orders_CreateBuy(
              WatchOptions$Mutation$Orders_CreateBuy options) =>
          this.watchMutation(options);
}

class Mutation$Orders_CreateBuy$HookResult {
  Mutation$Orders_CreateBuy$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Orders_CreateBuy runMutation;

  final graphql.QueryResult<Mutation$Orders_CreateBuy> result;
}

Mutation$Orders_CreateBuy$HookResult useMutation$Orders_CreateBuy(
    [WidgetOptions$Mutation$Orders_CreateBuy? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Orders_CreateBuy());
  return Mutation$Orders_CreateBuy$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Orders_CreateBuy>
    useWatchMutation$Orders_CreateBuy(
            WatchOptions$Mutation$Orders_CreateBuy options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Orders_CreateBuy
    extends graphql.MutationOptions<Mutation$Orders_CreateBuy> {
  WidgetOptions$Mutation$Orders_CreateBuy({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Orders_CreateBuy? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Orders_CreateBuy? onCompleted,
    graphql.OnMutationUpdate<Mutation$Orders_CreateBuy>? update,
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
                        : _parserFn$Mutation$Orders_CreateBuy(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationOrders_CreateBuy,
          parserFn: _parserFn$Mutation$Orders_CreateBuy,
        );

  final OnMutationCompleted$Mutation$Orders_CreateBuy? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Orders_CreateBuy
    = graphql.MultiSourceResult<Mutation$Orders_CreateBuy> Function(
  Variables$Mutation$Orders_CreateBuy, {
  Object? optimisticResult,
  Mutation$Orders_CreateBuy? typedOptimisticResult,
});
typedef Builder$Mutation$Orders_CreateBuy = widgets.Widget Function(
  RunMutation$Mutation$Orders_CreateBuy,
  graphql.QueryResult<Mutation$Orders_CreateBuy>?,
);

class Mutation$Orders_CreateBuy$Widget
    extends graphql_flutter.Mutation<Mutation$Orders_CreateBuy> {
  Mutation$Orders_CreateBuy$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Orders_CreateBuy? options,
    required Builder$Mutation$Orders_CreateBuy builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Orders_CreateBuy(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$Orders_CreateBuy$orders_CreateBuy {
  Mutation$Orders_CreateBuy$orders_CreateBuy({
    required this.message,
    this.$__typename = 'Order_CreteBuyResponse',
  });

  factory Mutation$Orders_CreateBuy$orders_CreateBuy.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Orders_CreateBuy$orders_CreateBuy(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Orders_CreateBuy$orders_CreateBuy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$Orders_CreateBuy$orders_CreateBuy
    on Mutation$Orders_CreateBuy$orders_CreateBuy {
  CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy<
          Mutation$Orders_CreateBuy$orders_CreateBuy>
      get copyWith => CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes> {
  factory CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy(
    Mutation$Orders_CreateBuy$orders_CreateBuy instance,
    TRes Function(Mutation$Orders_CreateBuy$orders_CreateBuy) then,
  ) = _CopyWithImpl$Mutation$Orders_CreateBuy$orders_CreateBuy;

  factory CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Orders_CreateBuy$orders_CreateBuy;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes>
    implements CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes> {
  _CopyWithImpl$Mutation$Orders_CreateBuy$orders_CreateBuy(
    this._instance,
    this._then,
  );

  final Mutation$Orders_CreateBuy$orders_CreateBuy _instance;

  final TRes Function(Mutation$Orders_CreateBuy$orders_CreateBuy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Orders_CreateBuy$orders_CreateBuy(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes>
    implements CopyWith$Mutation$Orders_CreateBuy$orders_CreateBuy<TRes> {
  _CopyWithStubImpl$Mutation$Orders_CreateBuy$orders_CreateBuy(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Query$orders_GetTransferAccount {
  Query$orders_GetTransferAccount({
    required this.orders_GetTransferAccount,
    this.$__typename = 'Query',
  });

  factory Query$orders_GetTransferAccount.fromJson(Map<String, dynamic> json) {
    final l$orders_GetTransferAccount = json['orders_GetTransferAccount'];
    final l$$__typename = json['__typename'];
    return Query$orders_GetTransferAccount(
      orders_GetTransferAccount: (l$orders_GetTransferAccount as List<dynamic>)
          .map((e) => Query$orders_GetTransferAccount$orders_GetTransferAccount
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$orders_GetTransferAccount$orders_GetTransferAccount>
      orders_GetTransferAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders_GetTransferAccount = orders_GetTransferAccount;
    _resultData['orders_GetTransferAccount'] =
        l$orders_GetTransferAccount.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders_GetTransferAccount = orders_GetTransferAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$orders_GetTransferAccount.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$orders_GetTransferAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders_GetTransferAccount = orders_GetTransferAccount;
    final lOther$orders_GetTransferAccount = other.orders_GetTransferAccount;
    if (l$orders_GetTransferAccount.length !=
        lOther$orders_GetTransferAccount.length) {
      return false;
    }
    for (int i = 0; i < l$orders_GetTransferAccount.length; i++) {
      final l$orders_GetTransferAccount$entry = l$orders_GetTransferAccount[i];
      final lOther$orders_GetTransferAccount$entry =
          lOther$orders_GetTransferAccount[i];
      if (l$orders_GetTransferAccount$entry !=
          lOther$orders_GetTransferAccount$entry) {
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

extension UtilityExtension$Query$orders_GetTransferAccount
    on Query$orders_GetTransferAccount {
  CopyWith$Query$orders_GetTransferAccount<Query$orders_GetTransferAccount>
      get copyWith => CopyWith$Query$orders_GetTransferAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$orders_GetTransferAccount<TRes> {
  factory CopyWith$Query$orders_GetTransferAccount(
    Query$orders_GetTransferAccount instance,
    TRes Function(Query$orders_GetTransferAccount) then,
  ) = _CopyWithImpl$Query$orders_GetTransferAccount;

  factory CopyWith$Query$orders_GetTransferAccount.stub(TRes res) =
      _CopyWithStubImpl$Query$orders_GetTransferAccount;

  TRes call({
    List<Query$orders_GetTransferAccount$orders_GetTransferAccount>?
        orders_GetTransferAccount,
    String? $__typename,
  });
  TRes orders_GetTransferAccount(
      Iterable<Query$orders_GetTransferAccount$orders_GetTransferAccount> Function(
              Iterable<
                  CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount<
                      Query$orders_GetTransferAccount$orders_GetTransferAccount>>)
          _fn);
}

class _CopyWithImpl$Query$orders_GetTransferAccount<TRes>
    implements CopyWith$Query$orders_GetTransferAccount<TRes> {
  _CopyWithImpl$Query$orders_GetTransferAccount(
    this._instance,
    this._then,
  );

  final Query$orders_GetTransferAccount _instance;

  final TRes Function(Query$orders_GetTransferAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders_GetTransferAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$orders_GetTransferAccount(
        orders_GetTransferAccount: orders_GetTransferAccount == _undefined ||
                orders_GetTransferAccount == null
            ? _instance.orders_GetTransferAccount
            : (orders_GetTransferAccount as List<
                Query$orders_GetTransferAccount$orders_GetTransferAccount>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes orders_GetTransferAccount(
          Iterable<Query$orders_GetTransferAccount$orders_GetTransferAccount> Function(
                  Iterable<
                      CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount<
                          Query$orders_GetTransferAccount$orders_GetTransferAccount>>)
              _fn) =>
      call(
          orders_GetTransferAccount: _fn(_instance.orders_GetTransferAccount
              .map((e) =>
                  CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$orders_GetTransferAccount<TRes>
    implements CopyWith$Query$orders_GetTransferAccount<TRes> {
  _CopyWithStubImpl$Query$orders_GetTransferAccount(this._res);

  TRes _res;

  call({
    List<Query$orders_GetTransferAccount$orders_GetTransferAccount>?
        orders_GetTransferAccount,
    String? $__typename,
  }) =>
      _res;

  orders_GetTransferAccount(_fn) => _res;
}

const documentNodeQueryorders_GetTransferAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'orders_GetTransferAccount'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders_GetTransferAccount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'bankName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'accountNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'accountName'),
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
Query$orders_GetTransferAccount _parserFn$Query$orders_GetTransferAccount(
        Map<String, dynamic> data) =>
    Query$orders_GetTransferAccount.fromJson(data);
typedef OnQueryComplete$Query$orders_GetTransferAccount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$orders_GetTransferAccount?,
);

class Options$Query$orders_GetTransferAccount
    extends graphql.QueryOptions<Query$orders_GetTransferAccount> {
  Options$Query$orders_GetTransferAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$orders_GetTransferAccount? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$orders_GetTransferAccount? onComplete,
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
                        : _parserFn$Query$orders_GetTransferAccount(data),
                  ),
          onError: onError,
          document: documentNodeQueryorders_GetTransferAccount,
          parserFn: _parserFn$Query$orders_GetTransferAccount,
        );

  final OnQueryComplete$Query$orders_GetTransferAccount? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$orders_GetTransferAccount
    extends graphql.WatchQueryOptions<Query$orders_GetTransferAccount> {
  WatchOptions$Query$orders_GetTransferAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$orders_GetTransferAccount? typedOptimisticResult,
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
          document: documentNodeQueryorders_GetTransferAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$orders_GetTransferAccount,
        );
}

class FetchMoreOptions$Query$orders_GetTransferAccount
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$orders_GetTransferAccount(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryorders_GetTransferAccount,
        );
}

extension ClientExtension$Query$orders_GetTransferAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$orders_GetTransferAccount>>
      query$orders_GetTransferAccount(
              [Options$Query$orders_GetTransferAccount? options]) async =>
          await this
              .query(options ?? Options$Query$orders_GetTransferAccount());
  graphql.ObservableQuery<Query$orders_GetTransferAccount>
      watchQuery$orders_GetTransferAccount(
              [WatchOptions$Query$orders_GetTransferAccount? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$orders_GetTransferAccount());
  void writeQuery$orders_GetTransferAccount({
    required Query$orders_GetTransferAccount data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryorders_GetTransferAccount)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$orders_GetTransferAccount? readQuery$orders_GetTransferAccount(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryorders_GetTransferAccount)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$orders_GetTransferAccount.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$orders_GetTransferAccount>
    useQuery$orders_GetTransferAccount(
            [Options$Query$orders_GetTransferAccount? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$orders_GetTransferAccount());
graphql.ObservableQuery<Query$orders_GetTransferAccount>
    useWatchQuery$orders_GetTransferAccount(
            [WatchOptions$Query$orders_GetTransferAccount? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$orders_GetTransferAccount());

class Query$orders_GetTransferAccount$Widget
    extends graphql_flutter.Query<Query$orders_GetTransferAccount> {
  Query$orders_GetTransferAccount$Widget({
    widgets.Key? key,
    Options$Query$orders_GetTransferAccount? options,
    required graphql_flutter.QueryBuilder<Query$orders_GetTransferAccount>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$orders_GetTransferAccount(),
          builder: builder,
        );
}

class Query$orders_GetTransferAccount$orders_GetTransferAccount {
  Query$orders_GetTransferAccount$orders_GetTransferAccount({
    required this.bankName,
    required this.accountNo,
    required this.accountName,
    this.$__typename = 'Order_RecipientAccountDetailsResponse',
  });

  factory Query$orders_GetTransferAccount$orders_GetTransferAccount.fromJson(
      Map<String, dynamic> json) {
    final l$bankName = json['bankName'];
    final l$accountNo = json['accountNo'];
    final l$accountName = json['accountName'];
    final l$$__typename = json['__typename'];
    return Query$orders_GetTransferAccount$orders_GetTransferAccount(
      bankName: (l$bankName as String),
      accountNo: (l$accountNo as String),
      accountName: (l$accountName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String bankName;

  final String accountNo;

  final String accountName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$accountNo = accountNo;
    _resultData['accountNo'] = l$accountNo;
    final l$accountName = accountName;
    _resultData['accountName'] = l$accountName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankName = bankName;
    final l$accountNo = accountNo;
    final l$accountName = accountName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankName,
      l$accountNo,
      l$accountName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$orders_GetTransferAccount$orders_GetTransferAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountNo = accountNo;
    final lOther$accountNo = other.accountNo;
    if (l$accountNo != lOther$accountNo) {
      return false;
    }
    final l$accountName = accountName;
    final lOther$accountName = other.accountName;
    if (l$accountName != lOther$accountName) {
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

extension UtilityExtension$Query$orders_GetTransferAccount$orders_GetTransferAccount
    on Query$orders_GetTransferAccount$orders_GetTransferAccount {
  CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount<
          Query$orders_GetTransferAccount$orders_GetTransferAccount>
      get copyWith =>
          CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount<
    TRes> {
  factory CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount(
    Query$orders_GetTransferAccount$orders_GetTransferAccount instance,
    TRes Function(Query$orders_GetTransferAccount$orders_GetTransferAccount)
        then,
  ) = _CopyWithImpl$Query$orders_GetTransferAccount$orders_GetTransferAccount;

  factory CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Query$orders_GetTransferAccount$orders_GetTransferAccount;

  TRes call({
    String? bankName,
    String? accountNo,
    String? accountName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$orders_GetTransferAccount$orders_GetTransferAccount<
        TRes>
    implements
        CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount<
            TRes> {
  _CopyWithImpl$Query$orders_GetTransferAccount$orders_GetTransferAccount(
    this._instance,
    this._then,
  );

  final Query$orders_GetTransferAccount$orders_GetTransferAccount _instance;

  final TRes Function(Query$orders_GetTransferAccount$orders_GetTransferAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankName = _undefined,
    Object? accountNo = _undefined,
    Object? accountName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$orders_GetTransferAccount$orders_GetTransferAccount(
        bankName: bankName == _undefined || bankName == null
            ? _instance.bankName
            : (bankName as String),
        accountNo: accountNo == _undefined || accountNo == null
            ? _instance.accountNo
            : (accountNo as String),
        accountName: accountName == _undefined || accountName == null
            ? _instance.accountName
            : (accountName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$orders_GetTransferAccount$orders_GetTransferAccount<
        TRes>
    implements
        CopyWith$Query$orders_GetTransferAccount$orders_GetTransferAccount<
            TRes> {
  _CopyWithStubImpl$Query$orders_GetTransferAccount$orders_GetTransferAccount(
      this._res);

  TRes _res;

  call({
    String? bankName,
    String? accountNo,
    String? accountName,
    String? $__typename,
  }) =>
      _res;
}
