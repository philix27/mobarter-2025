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
