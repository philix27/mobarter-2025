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
            name: NameNode(value: 'amount_fiat'),
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
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'currency_fiat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency_crypto'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'estimated_duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchant_id'),
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
            name: NameNode(value: 'wallet_customer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_merchant'),
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
            name: NameNode(value: 'mode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'txn_hash'),
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
    this.amount_fiat,
    this.amount_crypto,
    this.bank_id,
    this.currency_fiat,
    this.currency_crypto,
    this.estimated_duration,
    this.merchant_id,
    this.status,
    this.trade_type,
    this.wallet_customer,
    this.wallet_merchant,
    this.action_user,
    this.action_merchant,
    this.mode,
    this.txn_hash,
    this.$__typename = 'Order_CreteSellResponse',
  });

  factory Mutation$Orders_CreateSell$orders_CreateSell.fromJson(
      Map<String, dynamic> json) {
    final l$amount_fiat = json['amount_fiat'];
    final l$amount_crypto = json['amount_crypto'];
    final l$bank_id = json['bank_id'];
    final l$currency_fiat = json['currency_fiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$estimated_duration = json['estimated_duration'];
    final l$merchant_id = json['merchant_id'];
    final l$status = json['status'];
    final l$trade_type = json['trade_type'];
    final l$wallet_customer = json['wallet_customer'];
    final l$wallet_merchant = json['wallet_merchant'];
    final l$action_user = json['action_user'];
    final l$action_merchant = json['action_merchant'];
    final l$mode = json['mode'];
    final l$txn_hash = json['txn_hash'];
    final l$$__typename = json['__typename'];
    return Mutation$Orders_CreateSell$orders_CreateSell(
      amount_fiat: (l$amount_fiat as num?)?.toDouble(),
      amount_crypto: (l$amount_crypto as num?)?.toDouble(),
      bank_id: (l$bank_id as num?)?.toDouble(),
      currency_fiat: l$currency_fiat == null
          ? null
          : fromJson$Enum$Country((l$currency_fiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      estimated_duration: (l$estimated_duration as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      status: l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String)),
      trade_type: l$trade_type == null
          ? null
          : fromJson$Enum$TradeType((l$trade_type as String)),
      wallet_customer: (l$wallet_customer as String?),
      wallet_merchant: (l$wallet_merchant as String?),
      action_user: l$action_user == null
          ? null
          : fromJson$Enum$OrderActions((l$action_user as String)),
      action_merchant: l$action_merchant == null
          ? null
          : fromJson$Enum$OrderActions((l$action_merchant as String)),
      mode: l$mode == null ? null : fromJson$Enum$OrderMode((l$mode as String)),
      txn_hash: (l$txn_hash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? amount_fiat;

  final double? amount_crypto;

  final double? bank_id;

  final Enum$Country? currency_fiat;

  final String? currency_crypto;

  final String? estimated_duration;

  final double? merchant_id;

  final Enum$OrderStatus? status;

  final Enum$TradeType? trade_type;

  final String? wallet_customer;

  final String? wallet_merchant;

  final Enum$OrderActions? action_user;

  final Enum$OrderActions? action_merchant;

  final Enum$OrderMode? mode;

  final String? txn_hash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount_fiat = amount_fiat;
    _resultData['amount_fiat'] = l$amount_fiat;
    final l$amount_crypto = amount_crypto;
    _resultData['amount_crypto'] = l$amount_crypto;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$currency_fiat = currency_fiat;
    _resultData['currency_fiat'] =
        l$currency_fiat == null ? null : toJson$Enum$Country(l$currency_fiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$estimated_duration = estimated_duration;
    _resultData['estimated_duration'] = l$estimated_duration;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    final l$trade_type = trade_type;
    _resultData['trade_type'] =
        l$trade_type == null ? null : toJson$Enum$TradeType(l$trade_type);
    final l$wallet_customer = wallet_customer;
    _resultData['wallet_customer'] = l$wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    _resultData['wallet_merchant'] = l$wallet_merchant;
    final l$action_user = action_user;
    _resultData['action_user'] =
        l$action_user == null ? null : toJson$Enum$OrderActions(l$action_user);
    final l$action_merchant = action_merchant;
    _resultData['action_merchant'] = l$action_merchant == null
        ? null
        : toJson$Enum$OrderActions(l$action_merchant);
    final l$mode = mode;
    _resultData['mode'] = l$mode == null ? null : toJson$Enum$OrderMode(l$mode);
    final l$txn_hash = txn_hash;
    _resultData['txn_hash'] = l$txn_hash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount_fiat = amount_fiat;
    final l$amount_crypto = amount_crypto;
    final l$bank_id = bank_id;
    final l$currency_fiat = currency_fiat;
    final l$currency_crypto = currency_crypto;
    final l$estimated_duration = estimated_duration;
    final l$merchant_id = merchant_id;
    final l$status = status;
    final l$trade_type = trade_type;
    final l$wallet_customer = wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    final l$action_user = action_user;
    final l$action_merchant = action_merchant;
    final l$mode = mode;
    final l$txn_hash = txn_hash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount_fiat,
      l$amount_crypto,
      l$bank_id,
      l$currency_fiat,
      l$currency_crypto,
      l$estimated_duration,
      l$merchant_id,
      l$status,
      l$trade_type,
      l$wallet_customer,
      l$wallet_merchant,
      l$action_user,
      l$action_merchant,
      l$mode,
      l$txn_hash,
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
    final l$amount_fiat = amount_fiat;
    final lOther$amount_fiat = other.amount_fiat;
    if (l$amount_fiat != lOther$amount_fiat) {
      return false;
    }
    final l$amount_crypto = amount_crypto;
    final lOther$amount_crypto = other.amount_crypto;
    if (l$amount_crypto != lOther$amount_crypto) {
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
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$estimated_duration = estimated_duration;
    final lOther$estimated_duration = other.estimated_duration;
    if (l$estimated_duration != lOther$estimated_duration) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$trade_type = trade_type;
    final lOther$trade_type = other.trade_type;
    if (l$trade_type != lOther$trade_type) {
      return false;
    }
    final l$wallet_customer = wallet_customer;
    final lOther$wallet_customer = other.wallet_customer;
    if (l$wallet_customer != lOther$wallet_customer) {
      return false;
    }
    final l$wallet_merchant = wallet_merchant;
    final lOther$wallet_merchant = other.wallet_merchant;
    if (l$wallet_merchant != lOther$wallet_merchant) {
      return false;
    }
    final l$action_user = action_user;
    final lOther$action_user = other.action_user;
    if (l$action_user != lOther$action_user) {
      return false;
    }
    final l$action_merchant = action_merchant;
    final lOther$action_merchant = other.action_merchant;
    if (l$action_merchant != lOther$action_merchant) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$txn_hash = txn_hash;
    final lOther$txn_hash = other.txn_hash;
    if (l$txn_hash != lOther$txn_hash) {
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
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? currency_crypto,
    String? estimated_duration,
    double? merchant_id,
    Enum$OrderStatus? status,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_user,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
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
    Object? amount_fiat = _undefined,
    Object? amount_crypto = _undefined,
    Object? bank_id = _undefined,
    Object? currency_fiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? estimated_duration = _undefined,
    Object? merchant_id = _undefined,
    Object? status = _undefined,
    Object? trade_type = _undefined,
    Object? wallet_customer = _undefined,
    Object? wallet_merchant = _undefined,
    Object? action_user = _undefined,
    Object? action_merchant = _undefined,
    Object? mode = _undefined,
    Object? txn_hash = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Orders_CreateSell$orders_CreateSell(
        amount_fiat: amount_fiat == _undefined
            ? _instance.amount_fiat
            : (amount_fiat as double?),
        amount_crypto: amount_crypto == _undefined
            ? _instance.amount_crypto
            : (amount_crypto as double?),
        bank_id:
            bank_id == _undefined ? _instance.bank_id : (bank_id as double?),
        currency_fiat: currency_fiat == _undefined
            ? _instance.currency_fiat
            : (currency_fiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        estimated_duration: estimated_duration == _undefined
            ? _instance.estimated_duration
            : (estimated_duration as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$OrderStatus?),
        trade_type: trade_type == _undefined
            ? _instance.trade_type
            : (trade_type as Enum$TradeType?),
        wallet_customer: wallet_customer == _undefined
            ? _instance.wallet_customer
            : (wallet_customer as String?),
        wallet_merchant: wallet_merchant == _undefined
            ? _instance.wallet_merchant
            : (wallet_merchant as String?),
        action_user: action_user == _undefined
            ? _instance.action_user
            : (action_user as Enum$OrderActions?),
        action_merchant: action_merchant == _undefined
            ? _instance.action_merchant
            : (action_merchant as Enum$OrderActions?),
        mode: mode == _undefined ? _instance.mode : (mode as Enum$OrderMode?),
        txn_hash:
            txn_hash == _undefined ? _instance.txn_hash : (txn_hash as String?),
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
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? currency_crypto,
    String? estimated_duration,
    double? merchant_id,
    Enum$OrderStatus? status,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_user,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
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
            name: NameNode(value: 'amount_fiat'),
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
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'currency_fiat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency_crypto'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'estimated_duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchant_id'),
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
            name: NameNode(value: 'wallet_customer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_merchant'),
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
            name: NameNode(value: 'mode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'txn_hash'),
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
    this.status,
    this.amount_fiat,
    this.amount_crypto,
    this.bank_id,
    this.currency_fiat,
    this.currency_crypto,
    this.estimated_duration,
    this.merchant_id,
    this.trade_type,
    this.wallet_customer,
    this.wallet_merchant,
    this.action_merchant,
    this.mode,
    this.txn_hash,
    this.$__typename = 'Order_Response',
  });

  factory Query$Orders_GetAll$orders_GetAll.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$action_user = json['action_user'];
    final l$status = json['status'];
    final l$amount_fiat = json['amount_fiat'];
    final l$amount_crypto = json['amount_crypto'];
    final l$bank_id = json['bank_id'];
    final l$currency_fiat = json['currency_fiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$estimated_duration = json['estimated_duration'];
    final l$merchant_id = json['merchant_id'];
    final l$trade_type = json['trade_type'];
    final l$wallet_customer = json['wallet_customer'];
    final l$wallet_merchant = json['wallet_merchant'];
    final l$action_merchant = json['action_merchant'];
    final l$mode = json['mode'];
    final l$txn_hash = json['txn_hash'];
    final l$$__typename = json['__typename'];
    return Query$Orders_GetAll$orders_GetAll(
      id: (l$id as String),
      action_user: l$action_user == null
          ? null
          : fromJson$Enum$OrderActions((l$action_user as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String)),
      amount_fiat: (l$amount_fiat as num?)?.toDouble(),
      amount_crypto: (l$amount_crypto as num?)?.toDouble(),
      bank_id: (l$bank_id as num?)?.toDouble(),
      currency_fiat: l$currency_fiat == null
          ? null
          : fromJson$Enum$Country((l$currency_fiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      estimated_duration: (l$estimated_duration as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      trade_type: l$trade_type == null
          ? null
          : fromJson$Enum$TradeType((l$trade_type as String)),
      wallet_customer: (l$wallet_customer as String?),
      wallet_merchant: (l$wallet_merchant as String?),
      action_merchant: l$action_merchant == null
          ? null
          : fromJson$Enum$OrderActions((l$action_merchant as String)),
      mode: l$mode == null ? null : fromJson$Enum$OrderMode((l$mode as String)),
      txn_hash: (l$txn_hash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$OrderActions? action_user;

  final Enum$OrderStatus? status;

  final double? amount_fiat;

  final double? amount_crypto;

  final double? bank_id;

  final Enum$Country? currency_fiat;

  final String? currency_crypto;

  final String? estimated_duration;

  final double? merchant_id;

  final Enum$TradeType? trade_type;

  final String? wallet_customer;

  final String? wallet_merchant;

  final Enum$OrderActions? action_merchant;

  final Enum$OrderMode? mode;

  final String? txn_hash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$action_user = action_user;
    _resultData['action_user'] =
        l$action_user == null ? null : toJson$Enum$OrderActions(l$action_user);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    final l$amount_fiat = amount_fiat;
    _resultData['amount_fiat'] = l$amount_fiat;
    final l$amount_crypto = amount_crypto;
    _resultData['amount_crypto'] = l$amount_crypto;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$currency_fiat = currency_fiat;
    _resultData['currency_fiat'] =
        l$currency_fiat == null ? null : toJson$Enum$Country(l$currency_fiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$estimated_duration = estimated_duration;
    _resultData['estimated_duration'] = l$estimated_duration;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$trade_type = trade_type;
    _resultData['trade_type'] =
        l$trade_type == null ? null : toJson$Enum$TradeType(l$trade_type);
    final l$wallet_customer = wallet_customer;
    _resultData['wallet_customer'] = l$wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    _resultData['wallet_merchant'] = l$wallet_merchant;
    final l$action_merchant = action_merchant;
    _resultData['action_merchant'] = l$action_merchant == null
        ? null
        : toJson$Enum$OrderActions(l$action_merchant);
    final l$mode = mode;
    _resultData['mode'] = l$mode == null ? null : toJson$Enum$OrderMode(l$mode);
    final l$txn_hash = txn_hash;
    _resultData['txn_hash'] = l$txn_hash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$action_user = action_user;
    final l$status = status;
    final l$amount_fiat = amount_fiat;
    final l$amount_crypto = amount_crypto;
    final l$bank_id = bank_id;
    final l$currency_fiat = currency_fiat;
    final l$currency_crypto = currency_crypto;
    final l$estimated_duration = estimated_duration;
    final l$merchant_id = merchant_id;
    final l$trade_type = trade_type;
    final l$wallet_customer = wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    final l$action_merchant = action_merchant;
    final l$mode = mode;
    final l$txn_hash = txn_hash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$action_user,
      l$status,
      l$amount_fiat,
      l$amount_crypto,
      l$bank_id,
      l$currency_fiat,
      l$currency_crypto,
      l$estimated_duration,
      l$merchant_id,
      l$trade_type,
      l$wallet_customer,
      l$wallet_merchant,
      l$action_merchant,
      l$mode,
      l$txn_hash,
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
    final l$amount_fiat = amount_fiat;
    final lOther$amount_fiat = other.amount_fiat;
    if (l$amount_fiat != lOther$amount_fiat) {
      return false;
    }
    final l$amount_crypto = amount_crypto;
    final lOther$amount_crypto = other.amount_crypto;
    if (l$amount_crypto != lOther$amount_crypto) {
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
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$estimated_duration = estimated_duration;
    final lOther$estimated_duration = other.estimated_duration;
    if (l$estimated_duration != lOther$estimated_duration) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$trade_type = trade_type;
    final lOther$trade_type = other.trade_type;
    if (l$trade_type != lOther$trade_type) {
      return false;
    }
    final l$wallet_customer = wallet_customer;
    final lOther$wallet_customer = other.wallet_customer;
    if (l$wallet_customer != lOther$wallet_customer) {
      return false;
    }
    final l$wallet_merchant = wallet_merchant;
    final lOther$wallet_merchant = other.wallet_merchant;
    if (l$wallet_merchant != lOther$wallet_merchant) {
      return false;
    }
    final l$action_merchant = action_merchant;
    final lOther$action_merchant = other.action_merchant;
    if (l$action_merchant != lOther$action_merchant) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$txn_hash = txn_hash;
    final lOther$txn_hash = other.txn_hash;
    if (l$txn_hash != lOther$txn_hash) {
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
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? currency_crypto,
    String? estimated_duration,
    double? merchant_id,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
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
    Object? amount_fiat = _undefined,
    Object? amount_crypto = _undefined,
    Object? bank_id = _undefined,
    Object? currency_fiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? estimated_duration = _undefined,
    Object? merchant_id = _undefined,
    Object? trade_type = _undefined,
    Object? wallet_customer = _undefined,
    Object? wallet_merchant = _undefined,
    Object? action_merchant = _undefined,
    Object? mode = _undefined,
    Object? txn_hash = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders_GetAll$orders_GetAll(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        action_user: action_user == _undefined
            ? _instance.action_user
            : (action_user as Enum$OrderActions?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$OrderStatus?),
        amount_fiat: amount_fiat == _undefined
            ? _instance.amount_fiat
            : (amount_fiat as double?),
        amount_crypto: amount_crypto == _undefined
            ? _instance.amount_crypto
            : (amount_crypto as double?),
        bank_id:
            bank_id == _undefined ? _instance.bank_id : (bank_id as double?),
        currency_fiat: currency_fiat == _undefined
            ? _instance.currency_fiat
            : (currency_fiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        estimated_duration: estimated_duration == _undefined
            ? _instance.estimated_duration
            : (estimated_duration as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        trade_type: trade_type == _undefined
            ? _instance.trade_type
            : (trade_type as Enum$TradeType?),
        wallet_customer: wallet_customer == _undefined
            ? _instance.wallet_customer
            : (wallet_customer as String?),
        wallet_merchant: wallet_merchant == _undefined
            ? _instance.wallet_merchant
            : (wallet_merchant as String?),
        action_merchant: action_merchant == _undefined
            ? _instance.action_merchant
            : (action_merchant as Enum$OrderActions?),
        mode: mode == _undefined ? _instance.mode : (mode as Enum$OrderMode?),
        txn_hash:
            txn_hash == _undefined ? _instance.txn_hash : (txn_hash as String?),
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
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? currency_crypto,
    String? estimated_duration,
    double? merchant_id,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Orders_GetOne {
  factory Variables$Query$Orders_GetOne(
          {required Input$Order_GetOneInput input}) =>
      Variables$Query$Orders_GetOne._({
        r'input': input,
      });

  Variables$Query$Orders_GetOne._(this._$data);

  factory Variables$Query$Orders_GetOne.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Order_GetOneInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$Orders_GetOne._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Order_GetOneInput get input =>
      (_$data['input'] as Input$Order_GetOneInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Orders_GetOne<Variables$Query$Orders_GetOne>
      get copyWith => CopyWith$Variables$Query$Orders_GetOne(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Orders_GetOne ||
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

abstract class CopyWith$Variables$Query$Orders_GetOne<TRes> {
  factory CopyWith$Variables$Query$Orders_GetOne(
    Variables$Query$Orders_GetOne instance,
    TRes Function(Variables$Query$Orders_GetOne) then,
  ) = _CopyWithImpl$Variables$Query$Orders_GetOne;

  factory CopyWith$Variables$Query$Orders_GetOne.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Orders_GetOne;

  TRes call({Input$Order_GetOneInput? input});
}

class _CopyWithImpl$Variables$Query$Orders_GetOne<TRes>
    implements CopyWith$Variables$Query$Orders_GetOne<TRes> {
  _CopyWithImpl$Variables$Query$Orders_GetOne(
    this._instance,
    this._then,
  );

  final Variables$Query$Orders_GetOne _instance;

  final TRes Function(Variables$Query$Orders_GetOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$Orders_GetOne._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Order_GetOneInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Orders_GetOne<TRes>
    implements CopyWith$Variables$Query$Orders_GetOne<TRes> {
  _CopyWithStubImpl$Variables$Query$Orders_GetOne(this._res);

  TRes _res;

  call({Input$Order_GetOneInput? input}) => _res;
}

class Query$Orders_GetOne {
  Query$Orders_GetOne({
    required this.orders_GetOne,
    this.$__typename = 'Query',
  });

  factory Query$Orders_GetOne.fromJson(Map<String, dynamic> json) {
    final l$orders_GetOne = json['orders_GetOne'];
    final l$$__typename = json['__typename'];
    return Query$Orders_GetOne(
      orders_GetOne: Query$Orders_GetOne$orders_GetOne.fromJson(
          (l$orders_GetOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Orders_GetOne$orders_GetOne orders_GetOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders_GetOne = orders_GetOne;
    _resultData['orders_GetOne'] = l$orders_GetOne.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders_GetOne = orders_GetOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orders_GetOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Orders_GetOne || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders_GetOne = orders_GetOne;
    final lOther$orders_GetOne = other.orders_GetOne;
    if (l$orders_GetOne != lOther$orders_GetOne) {
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

extension UtilityExtension$Query$Orders_GetOne on Query$Orders_GetOne {
  CopyWith$Query$Orders_GetOne<Query$Orders_GetOne> get copyWith =>
      CopyWith$Query$Orders_GetOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Orders_GetOne<TRes> {
  factory CopyWith$Query$Orders_GetOne(
    Query$Orders_GetOne instance,
    TRes Function(Query$Orders_GetOne) then,
  ) = _CopyWithImpl$Query$Orders_GetOne;

  factory CopyWith$Query$Orders_GetOne.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders_GetOne;

  TRes call({
    Query$Orders_GetOne$orders_GetOne? orders_GetOne,
    String? $__typename,
  });
  CopyWith$Query$Orders_GetOne$orders_GetOne<TRes> get orders_GetOne;
}

class _CopyWithImpl$Query$Orders_GetOne<TRes>
    implements CopyWith$Query$Orders_GetOne<TRes> {
  _CopyWithImpl$Query$Orders_GetOne(
    this._instance,
    this._then,
  );

  final Query$Orders_GetOne _instance;

  final TRes Function(Query$Orders_GetOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders_GetOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders_GetOne(
        orders_GetOne: orders_GetOne == _undefined || orders_GetOne == null
            ? _instance.orders_GetOne
            : (orders_GetOne as Query$Orders_GetOne$orders_GetOne),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Orders_GetOne$orders_GetOne<TRes> get orders_GetOne {
    final local$orders_GetOne = _instance.orders_GetOne;
    return CopyWith$Query$Orders_GetOne$orders_GetOne(
        local$orders_GetOne, (e) => call(orders_GetOne: e));
  }
}

class _CopyWithStubImpl$Query$Orders_GetOne<TRes>
    implements CopyWith$Query$Orders_GetOne<TRes> {
  _CopyWithStubImpl$Query$Orders_GetOne(this._res);

  TRes _res;

  call({
    Query$Orders_GetOne$orders_GetOne? orders_GetOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Orders_GetOne$orders_GetOne<TRes> get orders_GetOne =>
      CopyWith$Query$Orders_GetOne$orders_GetOne.stub(_res);
}

const documentNodeQueryOrders_GetOne = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Orders_GetOne'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Order_GetOneInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders_GetOne'),
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
            name: NameNode(value: 'amount_fiat'),
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
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'currency_fiat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'estimated_duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchant_id'),
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
            name: NameNode(value: 'wallet_customer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_merchant'),
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
            name: NameNode(value: 'mode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'txn_hash'),
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
Query$Orders_GetOne _parserFn$Query$Orders_GetOne(Map<String, dynamic> data) =>
    Query$Orders_GetOne.fromJson(data);
typedef OnQueryComplete$Query$Orders_GetOne = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Orders_GetOne?,
);

class Options$Query$Orders_GetOne
    extends graphql.QueryOptions<Query$Orders_GetOne> {
  Options$Query$Orders_GetOne({
    String? operationName,
    required Variables$Query$Orders_GetOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders_GetOne? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Orders_GetOne? onComplete,
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
                    data == null ? null : _parserFn$Query$Orders_GetOne(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrders_GetOne,
          parserFn: _parserFn$Query$Orders_GetOne,
        );

  final OnQueryComplete$Query$Orders_GetOne? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Orders_GetOne
    extends graphql.WatchQueryOptions<Query$Orders_GetOne> {
  WatchOptions$Query$Orders_GetOne({
    String? operationName,
    required Variables$Query$Orders_GetOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders_GetOne? typedOptimisticResult,
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
          document: documentNodeQueryOrders_GetOne,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Orders_GetOne,
        );
}

class FetchMoreOptions$Query$Orders_GetOne extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Orders_GetOne({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Orders_GetOne variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryOrders_GetOne,
        );
}

extension ClientExtension$Query$Orders_GetOne on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Orders_GetOne>> query$Orders_GetOne(
          Options$Query$Orders_GetOne options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Orders_GetOne> watchQuery$Orders_GetOne(
          WatchOptions$Query$Orders_GetOne options) =>
      this.watchQuery(options);
  void writeQuery$Orders_GetOne({
    required Query$Orders_GetOne data,
    required Variables$Query$Orders_GetOne variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryOrders_GetOne),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Orders_GetOne? readQuery$Orders_GetOne({
    required Variables$Query$Orders_GetOne variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOrders_GetOne),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Orders_GetOne.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Orders_GetOne> useQuery$Orders_GetOne(
        Options$Query$Orders_GetOne options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Orders_GetOne> useWatchQuery$Orders_GetOne(
        WatchOptions$Query$Orders_GetOne options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Orders_GetOne$Widget
    extends graphql_flutter.Query<Query$Orders_GetOne> {
  Query$Orders_GetOne$Widget({
    widgets.Key? key,
    required Options$Query$Orders_GetOne options,
    required graphql_flutter.QueryBuilder<Query$Orders_GetOne> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Orders_GetOne$orders_GetOne {
  Query$Orders_GetOne$orders_GetOne({
    required this.id,
    this.action_user,
    this.status,
    this.amount_fiat,
    this.amount_crypto,
    this.bank_id,
    this.currency_fiat,
    this.estimated_duration,
    this.merchant_id,
    this.trade_type,
    this.wallet_customer,
    this.wallet_merchant,
    this.action_merchant,
    this.mode,
    this.txn_hash,
    this.$__typename = 'Order_Response',
  });

  factory Query$Orders_GetOne$orders_GetOne.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$action_user = json['action_user'];
    final l$status = json['status'];
    final l$amount_fiat = json['amount_fiat'];
    final l$amount_crypto = json['amount_crypto'];
    final l$bank_id = json['bank_id'];
    final l$currency_fiat = json['currency_fiat'];
    final l$estimated_duration = json['estimated_duration'];
    final l$merchant_id = json['merchant_id'];
    final l$trade_type = json['trade_type'];
    final l$wallet_customer = json['wallet_customer'];
    final l$wallet_merchant = json['wallet_merchant'];
    final l$action_merchant = json['action_merchant'];
    final l$mode = json['mode'];
    final l$txn_hash = json['txn_hash'];
    final l$$__typename = json['__typename'];
    return Query$Orders_GetOne$orders_GetOne(
      id: (l$id as String),
      action_user: l$action_user == null
          ? null
          : fromJson$Enum$OrderActions((l$action_user as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String)),
      amount_fiat: (l$amount_fiat as num?)?.toDouble(),
      amount_crypto: (l$amount_crypto as num?)?.toDouble(),
      bank_id: (l$bank_id as num?)?.toDouble(),
      currency_fiat: l$currency_fiat == null
          ? null
          : fromJson$Enum$Country((l$currency_fiat as String)),
      estimated_duration: (l$estimated_duration as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      trade_type: l$trade_type == null
          ? null
          : fromJson$Enum$TradeType((l$trade_type as String)),
      wallet_customer: (l$wallet_customer as String?),
      wallet_merchant: (l$wallet_merchant as String?),
      action_merchant: l$action_merchant == null
          ? null
          : fromJson$Enum$OrderActions((l$action_merchant as String)),
      mode: l$mode == null ? null : fromJson$Enum$OrderMode((l$mode as String)),
      txn_hash: (l$txn_hash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$OrderActions? action_user;

  final Enum$OrderStatus? status;

  final double? amount_fiat;

  final double? amount_crypto;

  final double? bank_id;

  final Enum$Country? currency_fiat;

  final String? estimated_duration;

  final double? merchant_id;

  final Enum$TradeType? trade_type;

  final String? wallet_customer;

  final String? wallet_merchant;

  final Enum$OrderActions? action_merchant;

  final Enum$OrderMode? mode;

  final String? txn_hash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$action_user = action_user;
    _resultData['action_user'] =
        l$action_user == null ? null : toJson$Enum$OrderActions(l$action_user);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    final l$amount_fiat = amount_fiat;
    _resultData['amount_fiat'] = l$amount_fiat;
    final l$amount_crypto = amount_crypto;
    _resultData['amount_crypto'] = l$amount_crypto;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$currency_fiat = currency_fiat;
    _resultData['currency_fiat'] =
        l$currency_fiat == null ? null : toJson$Enum$Country(l$currency_fiat);
    final l$estimated_duration = estimated_duration;
    _resultData['estimated_duration'] = l$estimated_duration;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$trade_type = trade_type;
    _resultData['trade_type'] =
        l$trade_type == null ? null : toJson$Enum$TradeType(l$trade_type);
    final l$wallet_customer = wallet_customer;
    _resultData['wallet_customer'] = l$wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    _resultData['wallet_merchant'] = l$wallet_merchant;
    final l$action_merchant = action_merchant;
    _resultData['action_merchant'] = l$action_merchant == null
        ? null
        : toJson$Enum$OrderActions(l$action_merchant);
    final l$mode = mode;
    _resultData['mode'] = l$mode == null ? null : toJson$Enum$OrderMode(l$mode);
    final l$txn_hash = txn_hash;
    _resultData['txn_hash'] = l$txn_hash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$action_user = action_user;
    final l$status = status;
    final l$amount_fiat = amount_fiat;
    final l$amount_crypto = amount_crypto;
    final l$bank_id = bank_id;
    final l$currency_fiat = currency_fiat;
    final l$estimated_duration = estimated_duration;
    final l$merchant_id = merchant_id;
    final l$trade_type = trade_type;
    final l$wallet_customer = wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    final l$action_merchant = action_merchant;
    final l$mode = mode;
    final l$txn_hash = txn_hash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$action_user,
      l$status,
      l$amount_fiat,
      l$amount_crypto,
      l$bank_id,
      l$currency_fiat,
      l$estimated_duration,
      l$merchant_id,
      l$trade_type,
      l$wallet_customer,
      l$wallet_merchant,
      l$action_merchant,
      l$mode,
      l$txn_hash,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Orders_GetOne$orders_GetOne ||
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
    final l$amount_fiat = amount_fiat;
    final lOther$amount_fiat = other.amount_fiat;
    if (l$amount_fiat != lOther$amount_fiat) {
      return false;
    }
    final l$amount_crypto = amount_crypto;
    final lOther$amount_crypto = other.amount_crypto;
    if (l$amount_crypto != lOther$amount_crypto) {
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
    final l$estimated_duration = estimated_duration;
    final lOther$estimated_duration = other.estimated_duration;
    if (l$estimated_duration != lOther$estimated_duration) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$trade_type = trade_type;
    final lOther$trade_type = other.trade_type;
    if (l$trade_type != lOther$trade_type) {
      return false;
    }
    final l$wallet_customer = wallet_customer;
    final lOther$wallet_customer = other.wallet_customer;
    if (l$wallet_customer != lOther$wallet_customer) {
      return false;
    }
    final l$wallet_merchant = wallet_merchant;
    final lOther$wallet_merchant = other.wallet_merchant;
    if (l$wallet_merchant != lOther$wallet_merchant) {
      return false;
    }
    final l$action_merchant = action_merchant;
    final lOther$action_merchant = other.action_merchant;
    if (l$action_merchant != lOther$action_merchant) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$txn_hash = txn_hash;
    final lOther$txn_hash = other.txn_hash;
    if (l$txn_hash != lOther$txn_hash) {
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

extension UtilityExtension$Query$Orders_GetOne$orders_GetOne
    on Query$Orders_GetOne$orders_GetOne {
  CopyWith$Query$Orders_GetOne$orders_GetOne<Query$Orders_GetOne$orders_GetOne>
      get copyWith => CopyWith$Query$Orders_GetOne$orders_GetOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Orders_GetOne$orders_GetOne<TRes> {
  factory CopyWith$Query$Orders_GetOne$orders_GetOne(
    Query$Orders_GetOne$orders_GetOne instance,
    TRes Function(Query$Orders_GetOne$orders_GetOne) then,
  ) = _CopyWithImpl$Query$Orders_GetOne$orders_GetOne;

  factory CopyWith$Query$Orders_GetOne$orders_GetOne.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders_GetOne$orders_GetOne;

  TRes call({
    String? id,
    Enum$OrderActions? action_user,
    Enum$OrderStatus? status,
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? estimated_duration,
    double? merchant_id,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Orders_GetOne$orders_GetOne<TRes>
    implements CopyWith$Query$Orders_GetOne$orders_GetOne<TRes> {
  _CopyWithImpl$Query$Orders_GetOne$orders_GetOne(
    this._instance,
    this._then,
  );

  final Query$Orders_GetOne$orders_GetOne _instance;

  final TRes Function(Query$Orders_GetOne$orders_GetOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? action_user = _undefined,
    Object? status = _undefined,
    Object? amount_fiat = _undefined,
    Object? amount_crypto = _undefined,
    Object? bank_id = _undefined,
    Object? currency_fiat = _undefined,
    Object? estimated_duration = _undefined,
    Object? merchant_id = _undefined,
    Object? trade_type = _undefined,
    Object? wallet_customer = _undefined,
    Object? wallet_merchant = _undefined,
    Object? action_merchant = _undefined,
    Object? mode = _undefined,
    Object? txn_hash = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders_GetOne$orders_GetOne(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        action_user: action_user == _undefined
            ? _instance.action_user
            : (action_user as Enum$OrderActions?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$OrderStatus?),
        amount_fiat: amount_fiat == _undefined
            ? _instance.amount_fiat
            : (amount_fiat as double?),
        amount_crypto: amount_crypto == _undefined
            ? _instance.amount_crypto
            : (amount_crypto as double?),
        bank_id:
            bank_id == _undefined ? _instance.bank_id : (bank_id as double?),
        currency_fiat: currency_fiat == _undefined
            ? _instance.currency_fiat
            : (currency_fiat as Enum$Country?),
        estimated_duration: estimated_duration == _undefined
            ? _instance.estimated_duration
            : (estimated_duration as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        trade_type: trade_type == _undefined
            ? _instance.trade_type
            : (trade_type as Enum$TradeType?),
        wallet_customer: wallet_customer == _undefined
            ? _instance.wallet_customer
            : (wallet_customer as String?),
        wallet_merchant: wallet_merchant == _undefined
            ? _instance.wallet_merchant
            : (wallet_merchant as String?),
        action_merchant: action_merchant == _undefined
            ? _instance.action_merchant
            : (action_merchant as Enum$OrderActions?),
        mode: mode == _undefined ? _instance.mode : (mode as Enum$OrderMode?),
        txn_hash:
            txn_hash == _undefined ? _instance.txn_hash : (txn_hash as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Orders_GetOne$orders_GetOne<TRes>
    implements CopyWith$Query$Orders_GetOne$orders_GetOne<TRes> {
  _CopyWithStubImpl$Query$Orders_GetOne$orders_GetOne(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderActions? action_user,
    Enum$OrderStatus? status,
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? estimated_duration,
    double? merchant_id,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Orders_GetAllForAdmin {
  factory Variables$Query$Orders_GetAllForAdmin(
          {required Input$Order_GetAllInput input}) =>
      Variables$Query$Orders_GetAllForAdmin._({
        r'input': input,
      });

  Variables$Query$Orders_GetAllForAdmin._(this._$data);

  factory Variables$Query$Orders_GetAllForAdmin.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Order_GetAllInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$Orders_GetAllForAdmin._(result$data);
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

  CopyWith$Variables$Query$Orders_GetAllForAdmin<
          Variables$Query$Orders_GetAllForAdmin>
      get copyWith => CopyWith$Variables$Query$Orders_GetAllForAdmin(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Orders_GetAllForAdmin ||
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

abstract class CopyWith$Variables$Query$Orders_GetAllForAdmin<TRes> {
  factory CopyWith$Variables$Query$Orders_GetAllForAdmin(
    Variables$Query$Orders_GetAllForAdmin instance,
    TRes Function(Variables$Query$Orders_GetAllForAdmin) then,
  ) = _CopyWithImpl$Variables$Query$Orders_GetAllForAdmin;

  factory CopyWith$Variables$Query$Orders_GetAllForAdmin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Orders_GetAllForAdmin;

  TRes call({Input$Order_GetAllInput? input});
}

class _CopyWithImpl$Variables$Query$Orders_GetAllForAdmin<TRes>
    implements CopyWith$Variables$Query$Orders_GetAllForAdmin<TRes> {
  _CopyWithImpl$Variables$Query$Orders_GetAllForAdmin(
    this._instance,
    this._then,
  );

  final Variables$Query$Orders_GetAllForAdmin _instance;

  final TRes Function(Variables$Query$Orders_GetAllForAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$Orders_GetAllForAdmin._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Order_GetAllInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Orders_GetAllForAdmin<TRes>
    implements CopyWith$Variables$Query$Orders_GetAllForAdmin<TRes> {
  _CopyWithStubImpl$Variables$Query$Orders_GetAllForAdmin(this._res);

  TRes _res;

  call({Input$Order_GetAllInput? input}) => _res;
}

class Query$Orders_GetAllForAdmin {
  Query$Orders_GetAllForAdmin({
    required this.orders_GetAllForAdmin,
    this.$__typename = 'Query',
  });

  factory Query$Orders_GetAllForAdmin.fromJson(Map<String, dynamic> json) {
    final l$orders_GetAllForAdmin = json['orders_GetAllForAdmin'];
    final l$$__typename = json['__typename'];
    return Query$Orders_GetAllForAdmin(
      orders_GetAllForAdmin: (l$orders_GetAllForAdmin as List<dynamic>)
          .map((e) =>
              Query$Orders_GetAllForAdmin$orders_GetAllForAdmin.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Orders_GetAllForAdmin$orders_GetAllForAdmin>
      orders_GetAllForAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders_GetAllForAdmin = orders_GetAllForAdmin;
    _resultData['orders_GetAllForAdmin'] =
        l$orders_GetAllForAdmin.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders_GetAllForAdmin = orders_GetAllForAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$orders_GetAllForAdmin.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Orders_GetAllForAdmin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders_GetAllForAdmin = orders_GetAllForAdmin;
    final lOther$orders_GetAllForAdmin = other.orders_GetAllForAdmin;
    if (l$orders_GetAllForAdmin.length != lOther$orders_GetAllForAdmin.length) {
      return false;
    }
    for (int i = 0; i < l$orders_GetAllForAdmin.length; i++) {
      final l$orders_GetAllForAdmin$entry = l$orders_GetAllForAdmin[i];
      final lOther$orders_GetAllForAdmin$entry =
          lOther$orders_GetAllForAdmin[i];
      if (l$orders_GetAllForAdmin$entry != lOther$orders_GetAllForAdmin$entry) {
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

extension UtilityExtension$Query$Orders_GetAllForAdmin
    on Query$Orders_GetAllForAdmin {
  CopyWith$Query$Orders_GetAllForAdmin<Query$Orders_GetAllForAdmin>
      get copyWith => CopyWith$Query$Orders_GetAllForAdmin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Orders_GetAllForAdmin<TRes> {
  factory CopyWith$Query$Orders_GetAllForAdmin(
    Query$Orders_GetAllForAdmin instance,
    TRes Function(Query$Orders_GetAllForAdmin) then,
  ) = _CopyWithImpl$Query$Orders_GetAllForAdmin;

  factory CopyWith$Query$Orders_GetAllForAdmin.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders_GetAllForAdmin;

  TRes call({
    List<Query$Orders_GetAllForAdmin$orders_GetAllForAdmin>?
        orders_GetAllForAdmin,
    String? $__typename,
  });
  TRes orders_GetAllForAdmin(
      Iterable<Query$Orders_GetAllForAdmin$orders_GetAllForAdmin> Function(
              Iterable<
                  CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<
                      Query$Orders_GetAllForAdmin$orders_GetAllForAdmin>>)
          _fn);
}

class _CopyWithImpl$Query$Orders_GetAllForAdmin<TRes>
    implements CopyWith$Query$Orders_GetAllForAdmin<TRes> {
  _CopyWithImpl$Query$Orders_GetAllForAdmin(
    this._instance,
    this._then,
  );

  final Query$Orders_GetAllForAdmin _instance;

  final TRes Function(Query$Orders_GetAllForAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders_GetAllForAdmin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders_GetAllForAdmin(
        orders_GetAllForAdmin:
            orders_GetAllForAdmin == _undefined || orders_GetAllForAdmin == null
                ? _instance.orders_GetAllForAdmin
                : (orders_GetAllForAdmin
                    as List<Query$Orders_GetAllForAdmin$orders_GetAllForAdmin>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes orders_GetAllForAdmin(
          Iterable<Query$Orders_GetAllForAdmin$orders_GetAllForAdmin> Function(
                  Iterable<
                      CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<
                          Query$Orders_GetAllForAdmin$orders_GetAllForAdmin>>)
              _fn) =>
      call(
          orders_GetAllForAdmin: _fn(_instance.orders_GetAllForAdmin.map(
              (e) => CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Orders_GetAllForAdmin<TRes>
    implements CopyWith$Query$Orders_GetAllForAdmin<TRes> {
  _CopyWithStubImpl$Query$Orders_GetAllForAdmin(this._res);

  TRes _res;

  call({
    List<Query$Orders_GetAllForAdmin$orders_GetAllForAdmin>?
        orders_GetAllForAdmin,
    String? $__typename,
  }) =>
      _res;

  orders_GetAllForAdmin(_fn) => _res;
}

const documentNodeQueryOrders_GetAllForAdmin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Orders_GetAllForAdmin'),
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
        name: NameNode(value: 'orders_GetAllForAdmin'),
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
            name: NameNode(value: 'amount_fiat'),
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
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'currency_fiat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency_crypto'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'estimated_duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchant_id'),
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
            name: NameNode(value: 'wallet_customer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_merchant'),
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
            name: NameNode(value: 'mode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'txn_hash'),
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
Query$Orders_GetAllForAdmin _parserFn$Query$Orders_GetAllForAdmin(
        Map<String, dynamic> data) =>
    Query$Orders_GetAllForAdmin.fromJson(data);
typedef OnQueryComplete$Query$Orders_GetAllForAdmin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Orders_GetAllForAdmin?,
);

class Options$Query$Orders_GetAllForAdmin
    extends graphql.QueryOptions<Query$Orders_GetAllForAdmin> {
  Options$Query$Orders_GetAllForAdmin({
    String? operationName,
    required Variables$Query$Orders_GetAllForAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders_GetAllForAdmin? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Orders_GetAllForAdmin? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$Orders_GetAllForAdmin(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrders_GetAllForAdmin,
          parserFn: _parserFn$Query$Orders_GetAllForAdmin,
        );

  final OnQueryComplete$Query$Orders_GetAllForAdmin? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Orders_GetAllForAdmin
    extends graphql.WatchQueryOptions<Query$Orders_GetAllForAdmin> {
  WatchOptions$Query$Orders_GetAllForAdmin({
    String? operationName,
    required Variables$Query$Orders_GetAllForAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders_GetAllForAdmin? typedOptimisticResult,
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
          document: documentNodeQueryOrders_GetAllForAdmin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Orders_GetAllForAdmin,
        );
}

class FetchMoreOptions$Query$Orders_GetAllForAdmin
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Orders_GetAllForAdmin({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Orders_GetAllForAdmin variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryOrders_GetAllForAdmin,
        );
}

extension ClientExtension$Query$Orders_GetAllForAdmin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Orders_GetAllForAdmin>>
      query$Orders_GetAllForAdmin(
              Options$Query$Orders_GetAllForAdmin options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$Orders_GetAllForAdmin>
      watchQuery$Orders_GetAllForAdmin(
              WatchOptions$Query$Orders_GetAllForAdmin options) =>
          this.watchQuery(options);
  void writeQuery$Orders_GetAllForAdmin({
    required Query$Orders_GetAllForAdmin data,
    required Variables$Query$Orders_GetAllForAdmin variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryOrders_GetAllForAdmin),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Orders_GetAllForAdmin? readQuery$Orders_GetAllForAdmin({
    required Variables$Query$Orders_GetAllForAdmin variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryOrders_GetAllForAdmin),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Orders_GetAllForAdmin.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Orders_GetAllForAdmin>
    useQuery$Orders_GetAllForAdmin(
            Options$Query$Orders_GetAllForAdmin options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Orders_GetAllForAdmin>
    useWatchQuery$Orders_GetAllForAdmin(
            WatchOptions$Query$Orders_GetAllForAdmin options) =>
        graphql_flutter.useWatchQuery(options);

class Query$Orders_GetAllForAdmin$Widget
    extends graphql_flutter.Query<Query$Orders_GetAllForAdmin> {
  Query$Orders_GetAllForAdmin$Widget({
    widgets.Key? key,
    required Options$Query$Orders_GetAllForAdmin options,
    required graphql_flutter.QueryBuilder<Query$Orders_GetAllForAdmin> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Orders_GetAllForAdmin$orders_GetAllForAdmin {
  Query$Orders_GetAllForAdmin$orders_GetAllForAdmin({
    required this.id,
    this.action_user,
    this.status,
    this.amount_fiat,
    this.amount_crypto,
    this.bank_id,
    this.currency_fiat,
    this.currency_crypto,
    this.estimated_duration,
    this.merchant_id,
    this.trade_type,
    this.wallet_customer,
    this.wallet_merchant,
    this.action_merchant,
    this.mode,
    this.txn_hash,
    this.$__typename = 'Order_Response',
  });

  factory Query$Orders_GetAllForAdmin$orders_GetAllForAdmin.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$action_user = json['action_user'];
    final l$status = json['status'];
    final l$amount_fiat = json['amount_fiat'];
    final l$amount_crypto = json['amount_crypto'];
    final l$bank_id = json['bank_id'];
    final l$currency_fiat = json['currency_fiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$estimated_duration = json['estimated_duration'];
    final l$merchant_id = json['merchant_id'];
    final l$trade_type = json['trade_type'];
    final l$wallet_customer = json['wallet_customer'];
    final l$wallet_merchant = json['wallet_merchant'];
    final l$action_merchant = json['action_merchant'];
    final l$mode = json['mode'];
    final l$txn_hash = json['txn_hash'];
    final l$$__typename = json['__typename'];
    return Query$Orders_GetAllForAdmin$orders_GetAllForAdmin(
      id: (l$id as String),
      action_user: l$action_user == null
          ? null
          : fromJson$Enum$OrderActions((l$action_user as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String)),
      amount_fiat: (l$amount_fiat as num?)?.toDouble(),
      amount_crypto: (l$amount_crypto as num?)?.toDouble(),
      bank_id: (l$bank_id as num?)?.toDouble(),
      currency_fiat: l$currency_fiat == null
          ? null
          : fromJson$Enum$Country((l$currency_fiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      estimated_duration: (l$estimated_duration as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      trade_type: l$trade_type == null
          ? null
          : fromJson$Enum$TradeType((l$trade_type as String)),
      wallet_customer: (l$wallet_customer as String?),
      wallet_merchant: (l$wallet_merchant as String?),
      action_merchant: l$action_merchant == null
          ? null
          : fromJson$Enum$OrderActions((l$action_merchant as String)),
      mode: l$mode == null ? null : fromJson$Enum$OrderMode((l$mode as String)),
      txn_hash: (l$txn_hash as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$OrderActions? action_user;

  final Enum$OrderStatus? status;

  final double? amount_fiat;

  final double? amount_crypto;

  final double? bank_id;

  final Enum$Country? currency_fiat;

  final String? currency_crypto;

  final String? estimated_duration;

  final double? merchant_id;

  final Enum$TradeType? trade_type;

  final String? wallet_customer;

  final String? wallet_merchant;

  final Enum$OrderActions? action_merchant;

  final Enum$OrderMode? mode;

  final String? txn_hash;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$action_user = action_user;
    _resultData['action_user'] =
        l$action_user == null ? null : toJson$Enum$OrderActions(l$action_user);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    final l$amount_fiat = amount_fiat;
    _resultData['amount_fiat'] = l$amount_fiat;
    final l$amount_crypto = amount_crypto;
    _resultData['amount_crypto'] = l$amount_crypto;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$currency_fiat = currency_fiat;
    _resultData['currency_fiat'] =
        l$currency_fiat == null ? null : toJson$Enum$Country(l$currency_fiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$estimated_duration = estimated_duration;
    _resultData['estimated_duration'] = l$estimated_duration;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$trade_type = trade_type;
    _resultData['trade_type'] =
        l$trade_type == null ? null : toJson$Enum$TradeType(l$trade_type);
    final l$wallet_customer = wallet_customer;
    _resultData['wallet_customer'] = l$wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    _resultData['wallet_merchant'] = l$wallet_merchant;
    final l$action_merchant = action_merchant;
    _resultData['action_merchant'] = l$action_merchant == null
        ? null
        : toJson$Enum$OrderActions(l$action_merchant);
    final l$mode = mode;
    _resultData['mode'] = l$mode == null ? null : toJson$Enum$OrderMode(l$mode);
    final l$txn_hash = txn_hash;
    _resultData['txn_hash'] = l$txn_hash;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$action_user = action_user;
    final l$status = status;
    final l$amount_fiat = amount_fiat;
    final l$amount_crypto = amount_crypto;
    final l$bank_id = bank_id;
    final l$currency_fiat = currency_fiat;
    final l$currency_crypto = currency_crypto;
    final l$estimated_duration = estimated_duration;
    final l$merchant_id = merchant_id;
    final l$trade_type = trade_type;
    final l$wallet_customer = wallet_customer;
    final l$wallet_merchant = wallet_merchant;
    final l$action_merchant = action_merchant;
    final l$mode = mode;
    final l$txn_hash = txn_hash;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$action_user,
      l$status,
      l$amount_fiat,
      l$amount_crypto,
      l$bank_id,
      l$currency_fiat,
      l$currency_crypto,
      l$estimated_duration,
      l$merchant_id,
      l$trade_type,
      l$wallet_customer,
      l$wallet_merchant,
      l$action_merchant,
      l$mode,
      l$txn_hash,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Orders_GetAllForAdmin$orders_GetAllForAdmin ||
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
    final l$amount_fiat = amount_fiat;
    final lOther$amount_fiat = other.amount_fiat;
    if (l$amount_fiat != lOther$amount_fiat) {
      return false;
    }
    final l$amount_crypto = amount_crypto;
    final lOther$amount_crypto = other.amount_crypto;
    if (l$amount_crypto != lOther$amount_crypto) {
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
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$estimated_duration = estimated_duration;
    final lOther$estimated_duration = other.estimated_duration;
    if (l$estimated_duration != lOther$estimated_duration) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$trade_type = trade_type;
    final lOther$trade_type = other.trade_type;
    if (l$trade_type != lOther$trade_type) {
      return false;
    }
    final l$wallet_customer = wallet_customer;
    final lOther$wallet_customer = other.wallet_customer;
    if (l$wallet_customer != lOther$wallet_customer) {
      return false;
    }
    final l$wallet_merchant = wallet_merchant;
    final lOther$wallet_merchant = other.wallet_merchant;
    if (l$wallet_merchant != lOther$wallet_merchant) {
      return false;
    }
    final l$action_merchant = action_merchant;
    final lOther$action_merchant = other.action_merchant;
    if (l$action_merchant != lOther$action_merchant) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$txn_hash = txn_hash;
    final lOther$txn_hash = other.txn_hash;
    if (l$txn_hash != lOther$txn_hash) {
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

extension UtilityExtension$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin
    on Query$Orders_GetAllForAdmin$orders_GetAllForAdmin {
  CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<
          Query$Orders_GetAllForAdmin$orders_GetAllForAdmin>
      get copyWith =>
          CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<
    TRes> {
  factory CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin(
    Query$Orders_GetAllForAdmin$orders_GetAllForAdmin instance,
    TRes Function(Query$Orders_GetAllForAdmin$orders_GetAllForAdmin) then,
  ) = _CopyWithImpl$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin;

  factory CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin;

  TRes call({
    String? id,
    Enum$OrderActions? action_user,
    Enum$OrderStatus? status,
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? currency_crypto,
    String? estimated_duration,
    double? merchant_id,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<TRes>
    implements
        CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<TRes> {
  _CopyWithImpl$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin(
    this._instance,
    this._then,
  );

  final Query$Orders_GetAllForAdmin$orders_GetAllForAdmin _instance;

  final TRes Function(Query$Orders_GetAllForAdmin$orders_GetAllForAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? action_user = _undefined,
    Object? status = _undefined,
    Object? amount_fiat = _undefined,
    Object? amount_crypto = _undefined,
    Object? bank_id = _undefined,
    Object? currency_fiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? estimated_duration = _undefined,
    Object? merchant_id = _undefined,
    Object? trade_type = _undefined,
    Object? wallet_customer = _undefined,
    Object? wallet_merchant = _undefined,
    Object? action_merchant = _undefined,
    Object? mode = _undefined,
    Object? txn_hash = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders_GetAllForAdmin$orders_GetAllForAdmin(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        action_user: action_user == _undefined
            ? _instance.action_user
            : (action_user as Enum$OrderActions?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$OrderStatus?),
        amount_fiat: amount_fiat == _undefined
            ? _instance.amount_fiat
            : (amount_fiat as double?),
        amount_crypto: amount_crypto == _undefined
            ? _instance.amount_crypto
            : (amount_crypto as double?),
        bank_id:
            bank_id == _undefined ? _instance.bank_id : (bank_id as double?),
        currency_fiat: currency_fiat == _undefined
            ? _instance.currency_fiat
            : (currency_fiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        estimated_duration: estimated_duration == _undefined
            ? _instance.estimated_duration
            : (estimated_duration as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        trade_type: trade_type == _undefined
            ? _instance.trade_type
            : (trade_type as Enum$TradeType?),
        wallet_customer: wallet_customer == _undefined
            ? _instance.wallet_customer
            : (wallet_customer as String?),
        wallet_merchant: wallet_merchant == _undefined
            ? _instance.wallet_merchant
            : (wallet_merchant as String?),
        action_merchant: action_merchant == _undefined
            ? _instance.action_merchant
            : (action_merchant as Enum$OrderActions?),
        mode: mode == _undefined ? _instance.mode : (mode as Enum$OrderMode?),
        txn_hash:
            txn_hash == _undefined ? _instance.txn_hash : (txn_hash as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<TRes>
    implements
        CopyWith$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin<TRes> {
  _CopyWithStubImpl$Query$Orders_GetAllForAdmin$orders_GetAllForAdmin(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderActions? action_user,
    Enum$OrderStatus? status,
    double? amount_fiat,
    double? amount_crypto,
    double? bank_id,
    Enum$Country? currency_fiat,
    String? currency_crypto,
    String? estimated_duration,
    double? merchant_id,
    Enum$TradeType? trade_type,
    String? wallet_customer,
    String? wallet_merchant,
    Enum$OrderActions? action_merchant,
    Enum$OrderMode? mode,
    String? txn_hash,
    String? $__typename,
  }) =>
      _res;
}
