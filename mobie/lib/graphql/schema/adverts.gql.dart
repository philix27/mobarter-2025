import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$Adverts_update {
  factory Variables$Mutation$Adverts_update(
          {required Input$Advert_UpdateInput input}) =>
      Variables$Mutation$Adverts_update._({
        r'input': input,
      });

  Variables$Mutation$Adverts_update._(this._$data);

  factory Variables$Mutation$Adverts_update.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Advert_UpdateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$Adverts_update._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Advert_UpdateInput get input =>
      (_$data['input'] as Input$Advert_UpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Adverts_update<Variables$Mutation$Adverts_update>
      get copyWith => CopyWith$Variables$Mutation$Adverts_update(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Adverts_update ||
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

abstract class CopyWith$Variables$Mutation$Adverts_update<TRes> {
  factory CopyWith$Variables$Mutation$Adverts_update(
    Variables$Mutation$Adverts_update instance,
    TRes Function(Variables$Mutation$Adverts_update) then,
  ) = _CopyWithImpl$Variables$Mutation$Adverts_update;

  factory CopyWith$Variables$Mutation$Adverts_update.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Adverts_update;

  TRes call({Input$Advert_UpdateInput? input});
}

class _CopyWithImpl$Variables$Mutation$Adverts_update<TRes>
    implements CopyWith$Variables$Mutation$Adverts_update<TRes> {
  _CopyWithImpl$Variables$Mutation$Adverts_update(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Adverts_update _instance;

  final TRes Function(Variables$Mutation$Adverts_update) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Adverts_update._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Advert_UpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Adverts_update<TRes>
    implements CopyWith$Variables$Mutation$Adverts_update<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Adverts_update(this._res);

  TRes _res;

  call({Input$Advert_UpdateInput? input}) => _res;
}

class Mutation$Adverts_update {
  Mutation$Adverts_update({
    required this.adverts_update,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Adverts_update.fromJson(Map<String, dynamic> json) {
    final l$adverts_update = json['adverts_update'];
    final l$$__typename = json['__typename'];
    return Mutation$Adverts_update(
      adverts_update: Mutation$Adverts_update$adverts_update.fromJson(
          (l$adverts_update as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Adverts_update$adverts_update adverts_update;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adverts_update = adverts_update;
    _resultData['adverts_update'] = l$adverts_update.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adverts_update = adverts_update;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$adverts_update,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Adverts_update || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adverts_update = adverts_update;
    final lOther$adverts_update = other.adverts_update;
    if (l$adverts_update != lOther$adverts_update) {
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

extension UtilityExtension$Mutation$Adverts_update on Mutation$Adverts_update {
  CopyWith$Mutation$Adverts_update<Mutation$Adverts_update> get copyWith =>
      CopyWith$Mutation$Adverts_update(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Adverts_update<TRes> {
  factory CopyWith$Mutation$Adverts_update(
    Mutation$Adverts_update instance,
    TRes Function(Mutation$Adverts_update) then,
  ) = _CopyWithImpl$Mutation$Adverts_update;

  factory CopyWith$Mutation$Adverts_update.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Adverts_update;

  TRes call({
    Mutation$Adverts_update$adverts_update? adverts_update,
    String? $__typename,
  });
  CopyWith$Mutation$Adverts_update$adverts_update<TRes> get adverts_update;
}

class _CopyWithImpl$Mutation$Adverts_update<TRes>
    implements CopyWith$Mutation$Adverts_update<TRes> {
  _CopyWithImpl$Mutation$Adverts_update(
    this._instance,
    this._then,
  );

  final Mutation$Adverts_update _instance;

  final TRes Function(Mutation$Adverts_update) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adverts_update = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Adverts_update(
        adverts_update: adverts_update == _undefined || adverts_update == null
            ? _instance.adverts_update
            : (adverts_update as Mutation$Adverts_update$adverts_update),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Adverts_update$adverts_update<TRes> get adverts_update {
    final local$adverts_update = _instance.adverts_update;
    return CopyWith$Mutation$Adverts_update$adverts_update(
        local$adverts_update, (e) => call(adverts_update: e));
  }
}

class _CopyWithStubImpl$Mutation$Adverts_update<TRes>
    implements CopyWith$Mutation$Adverts_update<TRes> {
  _CopyWithStubImpl$Mutation$Adverts_update(this._res);

  TRes _res;

  call({
    Mutation$Adverts_update$adverts_update? adverts_update,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Adverts_update$adverts_update<TRes> get adverts_update =>
      CopyWith$Mutation$Adverts_update$adverts_update.stub(_res);
}

const documentNodeMutationAdverts_update = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Adverts_update'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Advert_UpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'adverts_update'),
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
            name: NameNode(value: 'currencyFiat'),
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
            name: NameNode(value: 'advertStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
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
            name: NameNode(value: 'limitLower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitUpper'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFixed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFloat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFloatRate'),
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
Mutation$Adverts_update _parserFn$Mutation$Adverts_update(
        Map<String, dynamic> data) =>
    Mutation$Adverts_update.fromJson(data);
typedef OnMutationCompleted$Mutation$Adverts_update = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Adverts_update?,
);

class Options$Mutation$Adverts_update
    extends graphql.MutationOptions<Mutation$Adverts_update> {
  Options$Mutation$Adverts_update({
    String? operationName,
    required Variables$Mutation$Adverts_update variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_update? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Adverts_update? onCompleted,
    graphql.OnMutationUpdate<Mutation$Adverts_update>? update,
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
                        : _parserFn$Mutation$Adverts_update(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAdverts_update,
          parserFn: _parserFn$Mutation$Adverts_update,
        );

  final OnMutationCompleted$Mutation$Adverts_update? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Adverts_update
    extends graphql.WatchQueryOptions<Mutation$Adverts_update> {
  WatchOptions$Mutation$Adverts_update({
    String? operationName,
    required Variables$Mutation$Adverts_update variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_update? typedOptimisticResult,
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
          document: documentNodeMutationAdverts_update,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Adverts_update,
        );
}

extension ClientExtension$Mutation$Adverts_update on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Adverts_update>> mutate$Adverts_update(
          Options$Mutation$Adverts_update options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Adverts_update> watchMutation$Adverts_update(
          WatchOptions$Mutation$Adverts_update options) =>
      this.watchMutation(options);
}

class Mutation$Adverts_update$HookResult {
  Mutation$Adverts_update$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Adverts_update runMutation;

  final graphql.QueryResult<Mutation$Adverts_update> result;
}

Mutation$Adverts_update$HookResult useMutation$Adverts_update(
    [WidgetOptions$Mutation$Adverts_update? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Adverts_update());
  return Mutation$Adverts_update$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Adverts_update>
    useWatchMutation$Adverts_update(
            WatchOptions$Mutation$Adverts_update options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Adverts_update
    extends graphql.MutationOptions<Mutation$Adverts_update> {
  WidgetOptions$Mutation$Adverts_update({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_update? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Adverts_update? onCompleted,
    graphql.OnMutationUpdate<Mutation$Adverts_update>? update,
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
                        : _parserFn$Mutation$Adverts_update(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAdverts_update,
          parserFn: _parserFn$Mutation$Adverts_update,
        );

  final OnMutationCompleted$Mutation$Adverts_update? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Adverts_update
    = graphql.MultiSourceResult<Mutation$Adverts_update> Function(
  Variables$Mutation$Adverts_update, {
  Object? optimisticResult,
  Mutation$Adverts_update? typedOptimisticResult,
});
typedef Builder$Mutation$Adverts_update = widgets.Widget Function(
  RunMutation$Mutation$Adverts_update,
  graphql.QueryResult<Mutation$Adverts_update>?,
);

class Mutation$Adverts_update$Widget
    extends graphql_flutter.Mutation<Mutation$Adverts_update> {
  Mutation$Adverts_update$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Adverts_update? options,
    required Builder$Mutation$Adverts_update builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Adverts_update(),
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

class Mutation$Adverts_update$adverts_update {
  Mutation$Adverts_update$adverts_update({
    this.currencyFiat,
    this.currency_crypto,
    this.advertStatus,
    this.duration,
    this.merchant_id,
    this.limitLower,
    this.limitUpper,
    this.tradeType,
    this.rateFixed,
    this.rateFloat,
    this.isFloatRate,
    this.$__typename = 'Advert_GetResponse',
  });

  factory Mutation$Adverts_update$adverts_update.fromJson(
      Map<String, dynamic> json) {
    final l$currencyFiat = json['currencyFiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$advertStatus = json['advertStatus'];
    final l$duration = json['duration'];
    final l$merchant_id = json['merchant_id'];
    final l$limitLower = json['limitLower'];
    final l$limitUpper = json['limitUpper'];
    final l$tradeType = json['tradeType'];
    final l$rateFixed = json['rateFixed'];
    final l$rateFloat = json['rateFloat'];
    final l$isFloatRate = json['isFloatRate'];
    final l$$__typename = json['__typename'];
    return Mutation$Adverts_update$adverts_update(
      currencyFiat: l$currencyFiat == null
          ? null
          : fromJson$Enum$Country((l$currencyFiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      advertStatus: l$advertStatus == null
          ? null
          : fromJson$Enum$AdvertStatus((l$advertStatus as String)),
      duration: (l$duration as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      limitLower: (l$limitLower as num?)?.toDouble(),
      limitUpper: (l$limitUpper as num?)?.toDouble(),
      tradeType: l$tradeType == null
          ? null
          : fromJson$Enum$TradeType((l$tradeType as String)),
      rateFixed: (l$rateFixed as num?)?.toDouble(),
      rateFloat: (l$rateFloat as num?)?.toDouble(),
      isFloatRate: (l$isFloatRate as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Country? currencyFiat;

  final String? currency_crypto;

  final Enum$AdvertStatus? advertStatus;

  final String? duration;

  final double? merchant_id;

  final double? limitLower;

  final double? limitUpper;

  final Enum$TradeType? tradeType;

  final double? rateFixed;

  final double? rateFloat;

  final bool? isFloatRate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currencyFiat = currencyFiat;
    _resultData['currencyFiat'] =
        l$currencyFiat == null ? null : toJson$Enum$Country(l$currencyFiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$advertStatus = advertStatus;
    _resultData['advertStatus'] = l$advertStatus == null
        ? null
        : toJson$Enum$AdvertStatus(l$advertStatus);
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$limitLower = limitLower;
    _resultData['limitLower'] = l$limitLower;
    final l$limitUpper = limitUpper;
    _resultData['limitUpper'] = l$limitUpper;
    final l$tradeType = tradeType;
    _resultData['tradeType'] =
        l$tradeType == null ? null : toJson$Enum$TradeType(l$tradeType);
    final l$rateFixed = rateFixed;
    _resultData['rateFixed'] = l$rateFixed;
    final l$rateFloat = rateFloat;
    _resultData['rateFloat'] = l$rateFloat;
    final l$isFloatRate = isFloatRate;
    _resultData['isFloatRate'] = l$isFloatRate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currencyFiat = currencyFiat;
    final l$currency_crypto = currency_crypto;
    final l$advertStatus = advertStatus;
    final l$duration = duration;
    final l$merchant_id = merchant_id;
    final l$limitLower = limitLower;
    final l$limitUpper = limitUpper;
    final l$tradeType = tradeType;
    final l$rateFixed = rateFixed;
    final l$rateFloat = rateFloat;
    final l$isFloatRate = isFloatRate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currencyFiat,
      l$currency_crypto,
      l$advertStatus,
      l$duration,
      l$merchant_id,
      l$limitLower,
      l$limitUpper,
      l$tradeType,
      l$rateFixed,
      l$rateFloat,
      l$isFloatRate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Adverts_update$adverts_update ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currencyFiat = currencyFiat;
    final lOther$currencyFiat = other.currencyFiat;
    if (l$currencyFiat != lOther$currencyFiat) {
      return false;
    }
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$advertStatus = advertStatus;
    final lOther$advertStatus = other.advertStatus;
    if (l$advertStatus != lOther$advertStatus) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$limitLower = limitLower;
    final lOther$limitLower = other.limitLower;
    if (l$limitLower != lOther$limitLower) {
      return false;
    }
    final l$limitUpper = limitUpper;
    final lOther$limitUpper = other.limitUpper;
    if (l$limitUpper != lOther$limitUpper) {
      return false;
    }
    final l$tradeType = tradeType;
    final lOther$tradeType = other.tradeType;
    if (l$tradeType != lOther$tradeType) {
      return false;
    }
    final l$rateFixed = rateFixed;
    final lOther$rateFixed = other.rateFixed;
    if (l$rateFixed != lOther$rateFixed) {
      return false;
    }
    final l$rateFloat = rateFloat;
    final lOther$rateFloat = other.rateFloat;
    if (l$rateFloat != lOther$rateFloat) {
      return false;
    }
    final l$isFloatRate = isFloatRate;
    final lOther$isFloatRate = other.isFloatRate;
    if (l$isFloatRate != lOther$isFloatRate) {
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

extension UtilityExtension$Mutation$Adverts_update$adverts_update
    on Mutation$Adverts_update$adverts_update {
  CopyWith$Mutation$Adverts_update$adverts_update<
          Mutation$Adverts_update$adverts_update>
      get copyWith => CopyWith$Mutation$Adverts_update$adverts_update(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Adverts_update$adverts_update<TRes> {
  factory CopyWith$Mutation$Adverts_update$adverts_update(
    Mutation$Adverts_update$adverts_update instance,
    TRes Function(Mutation$Adverts_update$adverts_update) then,
  ) = _CopyWithImpl$Mutation$Adverts_update$adverts_update;

  factory CopyWith$Mutation$Adverts_update$adverts_update.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Adverts_update$adverts_update;

  TRes call({
    Enum$Country? currencyFiat,
    String? currency_crypto,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    double? merchant_id,
    double? limitLower,
    double? limitUpper,
    Enum$TradeType? tradeType,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Adverts_update$adverts_update<TRes>
    implements CopyWith$Mutation$Adverts_update$adverts_update<TRes> {
  _CopyWithImpl$Mutation$Adverts_update$adverts_update(
    this._instance,
    this._then,
  );

  final Mutation$Adverts_update$adverts_update _instance;

  final TRes Function(Mutation$Adverts_update$adverts_update) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currencyFiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? advertStatus = _undefined,
    Object? duration = _undefined,
    Object? merchant_id = _undefined,
    Object? limitLower = _undefined,
    Object? limitUpper = _undefined,
    Object? tradeType = _undefined,
    Object? rateFixed = _undefined,
    Object? rateFloat = _undefined,
    Object? isFloatRate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Adverts_update$adverts_update(
        currencyFiat: currencyFiat == _undefined
            ? _instance.currencyFiat
            : (currencyFiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        advertStatus: advertStatus == _undefined
            ? _instance.advertStatus
            : (advertStatus as Enum$AdvertStatus?),
        duration:
            duration == _undefined ? _instance.duration : (duration as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        limitLower: limitLower == _undefined
            ? _instance.limitLower
            : (limitLower as double?),
        limitUpper: limitUpper == _undefined
            ? _instance.limitUpper
            : (limitUpper as double?),
        tradeType: tradeType == _undefined
            ? _instance.tradeType
            : (tradeType as Enum$TradeType?),
        rateFixed: rateFixed == _undefined
            ? _instance.rateFixed
            : (rateFixed as double?),
        rateFloat: rateFloat == _undefined
            ? _instance.rateFloat
            : (rateFloat as double?),
        isFloatRate: isFloatRate == _undefined
            ? _instance.isFloatRate
            : (isFloatRate as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Adverts_update$adverts_update<TRes>
    implements CopyWith$Mutation$Adverts_update$adverts_update<TRes> {
  _CopyWithStubImpl$Mutation$Adverts_update$adverts_update(this._res);

  TRes _res;

  call({
    Enum$Country? currencyFiat,
    String? currency_crypto,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    double? merchant_id,
    double? limitLower,
    double? limitUpper,
    Enum$TradeType? tradeType,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Adverts_create {
  factory Variables$Mutation$Adverts_create(
          {required Input$Advert_CreateInput input}) =>
      Variables$Mutation$Adverts_create._({
        r'input': input,
      });

  Variables$Mutation$Adverts_create._(this._$data);

  factory Variables$Mutation$Adverts_create.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Advert_CreateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$Adverts_create._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Advert_CreateInput get input =>
      (_$data['input'] as Input$Advert_CreateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Adverts_create<Variables$Mutation$Adverts_create>
      get copyWith => CopyWith$Variables$Mutation$Adverts_create(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Adverts_create ||
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

abstract class CopyWith$Variables$Mutation$Adverts_create<TRes> {
  factory CopyWith$Variables$Mutation$Adverts_create(
    Variables$Mutation$Adverts_create instance,
    TRes Function(Variables$Mutation$Adverts_create) then,
  ) = _CopyWithImpl$Variables$Mutation$Adverts_create;

  factory CopyWith$Variables$Mutation$Adverts_create.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Adverts_create;

  TRes call({Input$Advert_CreateInput? input});
}

class _CopyWithImpl$Variables$Mutation$Adverts_create<TRes>
    implements CopyWith$Variables$Mutation$Adverts_create<TRes> {
  _CopyWithImpl$Variables$Mutation$Adverts_create(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Adverts_create _instance;

  final TRes Function(Variables$Mutation$Adverts_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Adverts_create._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Advert_CreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Adverts_create<TRes>
    implements CopyWith$Variables$Mutation$Adverts_create<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Adverts_create(this._res);

  TRes _res;

  call({Input$Advert_CreateInput? input}) => _res;
}

class Mutation$Adverts_create {
  Mutation$Adverts_create({
    required this.adverts_create,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Adverts_create.fromJson(Map<String, dynamic> json) {
    final l$adverts_create = json['adverts_create'];
    final l$$__typename = json['__typename'];
    return Mutation$Adverts_create(
      adverts_create: Mutation$Adverts_create$adverts_create.fromJson(
          (l$adverts_create as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Adverts_create$adverts_create adverts_create;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adverts_create = adverts_create;
    _resultData['adverts_create'] = l$adverts_create.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adverts_create = adverts_create;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$adverts_create,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Adverts_create || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adverts_create = adverts_create;
    final lOther$adverts_create = other.adverts_create;
    if (l$adverts_create != lOther$adverts_create) {
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

extension UtilityExtension$Mutation$Adverts_create on Mutation$Adverts_create {
  CopyWith$Mutation$Adverts_create<Mutation$Adverts_create> get copyWith =>
      CopyWith$Mutation$Adverts_create(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Adverts_create<TRes> {
  factory CopyWith$Mutation$Adverts_create(
    Mutation$Adverts_create instance,
    TRes Function(Mutation$Adverts_create) then,
  ) = _CopyWithImpl$Mutation$Adverts_create;

  factory CopyWith$Mutation$Adverts_create.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Adverts_create;

  TRes call({
    Mutation$Adverts_create$adverts_create? adverts_create,
    String? $__typename,
  });
  CopyWith$Mutation$Adverts_create$adverts_create<TRes> get adverts_create;
}

class _CopyWithImpl$Mutation$Adverts_create<TRes>
    implements CopyWith$Mutation$Adverts_create<TRes> {
  _CopyWithImpl$Mutation$Adverts_create(
    this._instance,
    this._then,
  );

  final Mutation$Adverts_create _instance;

  final TRes Function(Mutation$Adverts_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adverts_create = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Adverts_create(
        adverts_create: adverts_create == _undefined || adverts_create == null
            ? _instance.adverts_create
            : (adverts_create as Mutation$Adverts_create$adverts_create),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Adverts_create$adverts_create<TRes> get adverts_create {
    final local$adverts_create = _instance.adverts_create;
    return CopyWith$Mutation$Adverts_create$adverts_create(
        local$adverts_create, (e) => call(adverts_create: e));
  }
}

class _CopyWithStubImpl$Mutation$Adverts_create<TRes>
    implements CopyWith$Mutation$Adverts_create<TRes> {
  _CopyWithStubImpl$Mutation$Adverts_create(this._res);

  TRes _res;

  call({
    Mutation$Adverts_create$adverts_create? adverts_create,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Adverts_create$adverts_create<TRes> get adverts_create =>
      CopyWith$Mutation$Adverts_create$adverts_create.stub(_res);
}

const documentNodeMutationAdverts_create = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Adverts_create'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Advert_CreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'adverts_create'),
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
            name: NameNode(value: 'rateFixed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFloat'),
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
            name: NameNode(value: 'isFloatRate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'advertStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitLower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitUpper'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencyFiat'),
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
            name: NameNode(value: 'wallet_address'),
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
Mutation$Adverts_create _parserFn$Mutation$Adverts_create(
        Map<String, dynamic> data) =>
    Mutation$Adverts_create.fromJson(data);
typedef OnMutationCompleted$Mutation$Adverts_create = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Adverts_create?,
);

class Options$Mutation$Adverts_create
    extends graphql.MutationOptions<Mutation$Adverts_create> {
  Options$Mutation$Adverts_create({
    String? operationName,
    required Variables$Mutation$Adverts_create variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_create? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Adverts_create? onCompleted,
    graphql.OnMutationUpdate<Mutation$Adverts_create>? update,
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
                        : _parserFn$Mutation$Adverts_create(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAdverts_create,
          parserFn: _parserFn$Mutation$Adverts_create,
        );

  final OnMutationCompleted$Mutation$Adverts_create? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Adverts_create
    extends graphql.WatchQueryOptions<Mutation$Adverts_create> {
  WatchOptions$Mutation$Adverts_create({
    String? operationName,
    required Variables$Mutation$Adverts_create variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_create? typedOptimisticResult,
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
          document: documentNodeMutationAdverts_create,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Adverts_create,
        );
}

extension ClientExtension$Mutation$Adverts_create on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Adverts_create>> mutate$Adverts_create(
          Options$Mutation$Adverts_create options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Adverts_create> watchMutation$Adverts_create(
          WatchOptions$Mutation$Adverts_create options) =>
      this.watchMutation(options);
}

class Mutation$Adverts_create$HookResult {
  Mutation$Adverts_create$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Adverts_create runMutation;

  final graphql.QueryResult<Mutation$Adverts_create> result;
}

Mutation$Adverts_create$HookResult useMutation$Adverts_create(
    [WidgetOptions$Mutation$Adverts_create? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Adverts_create());
  return Mutation$Adverts_create$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Adverts_create>
    useWatchMutation$Adverts_create(
            WatchOptions$Mutation$Adverts_create options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Adverts_create
    extends graphql.MutationOptions<Mutation$Adverts_create> {
  WidgetOptions$Mutation$Adverts_create({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_create? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Adverts_create? onCompleted,
    graphql.OnMutationUpdate<Mutation$Adverts_create>? update,
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
                        : _parserFn$Mutation$Adverts_create(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAdverts_create,
          parserFn: _parserFn$Mutation$Adverts_create,
        );

  final OnMutationCompleted$Mutation$Adverts_create? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Adverts_create
    = graphql.MultiSourceResult<Mutation$Adverts_create> Function(
  Variables$Mutation$Adverts_create, {
  Object? optimisticResult,
  Mutation$Adverts_create? typedOptimisticResult,
});
typedef Builder$Mutation$Adverts_create = widgets.Widget Function(
  RunMutation$Mutation$Adverts_create,
  graphql.QueryResult<Mutation$Adverts_create>?,
);

class Mutation$Adverts_create$Widget
    extends graphql_flutter.Mutation<Mutation$Adverts_create> {
  Mutation$Adverts_create$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Adverts_create? options,
    required Builder$Mutation$Adverts_create builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Adverts_create(),
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

class Mutation$Adverts_create$adverts_create {
  Mutation$Adverts_create$adverts_create({
    this.rateFixed,
    this.rateFloat,
    this.merchant_id,
    this.isFloatRate,
    this.advertStatus,
    this.limitLower,
    this.limitUpper,
    this.tradeType,
    this.currencyFiat,
    this.currency_crypto,
    this.wallet_address,
    this.$__typename = 'Advert_GetResponse',
  });

  factory Mutation$Adverts_create$adverts_create.fromJson(
      Map<String, dynamic> json) {
    final l$rateFixed = json['rateFixed'];
    final l$rateFloat = json['rateFloat'];
    final l$merchant_id = json['merchant_id'];
    final l$isFloatRate = json['isFloatRate'];
    final l$advertStatus = json['advertStatus'];
    final l$limitLower = json['limitLower'];
    final l$limitUpper = json['limitUpper'];
    final l$tradeType = json['tradeType'];
    final l$currencyFiat = json['currencyFiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$wallet_address = json['wallet_address'];
    final l$$__typename = json['__typename'];
    return Mutation$Adverts_create$adverts_create(
      rateFixed: (l$rateFixed as num?)?.toDouble(),
      rateFloat: (l$rateFloat as num?)?.toDouble(),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      isFloatRate: (l$isFloatRate as bool?),
      advertStatus: l$advertStatus == null
          ? null
          : fromJson$Enum$AdvertStatus((l$advertStatus as String)),
      limitLower: (l$limitLower as num?)?.toDouble(),
      limitUpper: (l$limitUpper as num?)?.toDouble(),
      tradeType: l$tradeType == null
          ? null
          : fromJson$Enum$TradeType((l$tradeType as String)),
      currencyFiat: l$currencyFiat == null
          ? null
          : fromJson$Enum$Country((l$currencyFiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      wallet_address: (l$wallet_address as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? rateFixed;

  final double? rateFloat;

  final double? merchant_id;

  final bool? isFloatRate;

  final Enum$AdvertStatus? advertStatus;

  final double? limitLower;

  final double? limitUpper;

  final Enum$TradeType? tradeType;

  final Enum$Country? currencyFiat;

  final String? currency_crypto;

  final String? wallet_address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rateFixed = rateFixed;
    _resultData['rateFixed'] = l$rateFixed;
    final l$rateFloat = rateFloat;
    _resultData['rateFloat'] = l$rateFloat;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$isFloatRate = isFloatRate;
    _resultData['isFloatRate'] = l$isFloatRate;
    final l$advertStatus = advertStatus;
    _resultData['advertStatus'] = l$advertStatus == null
        ? null
        : toJson$Enum$AdvertStatus(l$advertStatus);
    final l$limitLower = limitLower;
    _resultData['limitLower'] = l$limitLower;
    final l$limitUpper = limitUpper;
    _resultData['limitUpper'] = l$limitUpper;
    final l$tradeType = tradeType;
    _resultData['tradeType'] =
        l$tradeType == null ? null : toJson$Enum$TradeType(l$tradeType);
    final l$currencyFiat = currencyFiat;
    _resultData['currencyFiat'] =
        l$currencyFiat == null ? null : toJson$Enum$Country(l$currencyFiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$wallet_address = wallet_address;
    _resultData['wallet_address'] = l$wallet_address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rateFixed = rateFixed;
    final l$rateFloat = rateFloat;
    final l$merchant_id = merchant_id;
    final l$isFloatRate = isFloatRate;
    final l$advertStatus = advertStatus;
    final l$limitLower = limitLower;
    final l$limitUpper = limitUpper;
    final l$tradeType = tradeType;
    final l$currencyFiat = currencyFiat;
    final l$currency_crypto = currency_crypto;
    final l$wallet_address = wallet_address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rateFixed,
      l$rateFloat,
      l$merchant_id,
      l$isFloatRate,
      l$advertStatus,
      l$limitLower,
      l$limitUpper,
      l$tradeType,
      l$currencyFiat,
      l$currency_crypto,
      l$wallet_address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Adverts_create$adverts_create ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rateFixed = rateFixed;
    final lOther$rateFixed = other.rateFixed;
    if (l$rateFixed != lOther$rateFixed) {
      return false;
    }
    final l$rateFloat = rateFloat;
    final lOther$rateFloat = other.rateFloat;
    if (l$rateFloat != lOther$rateFloat) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$isFloatRate = isFloatRate;
    final lOther$isFloatRate = other.isFloatRate;
    if (l$isFloatRate != lOther$isFloatRate) {
      return false;
    }
    final l$advertStatus = advertStatus;
    final lOther$advertStatus = other.advertStatus;
    if (l$advertStatus != lOther$advertStatus) {
      return false;
    }
    final l$limitLower = limitLower;
    final lOther$limitLower = other.limitLower;
    if (l$limitLower != lOther$limitLower) {
      return false;
    }
    final l$limitUpper = limitUpper;
    final lOther$limitUpper = other.limitUpper;
    if (l$limitUpper != lOther$limitUpper) {
      return false;
    }
    final l$tradeType = tradeType;
    final lOther$tradeType = other.tradeType;
    if (l$tradeType != lOther$tradeType) {
      return false;
    }
    final l$currencyFiat = currencyFiat;
    final lOther$currencyFiat = other.currencyFiat;
    if (l$currencyFiat != lOther$currencyFiat) {
      return false;
    }
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$wallet_address = wallet_address;
    final lOther$wallet_address = other.wallet_address;
    if (l$wallet_address != lOther$wallet_address) {
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

extension UtilityExtension$Mutation$Adverts_create$adverts_create
    on Mutation$Adverts_create$adverts_create {
  CopyWith$Mutation$Adverts_create$adverts_create<
          Mutation$Adverts_create$adverts_create>
      get copyWith => CopyWith$Mutation$Adverts_create$adverts_create(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Adverts_create$adverts_create<TRes> {
  factory CopyWith$Mutation$Adverts_create$adverts_create(
    Mutation$Adverts_create$adverts_create instance,
    TRes Function(Mutation$Adverts_create$adverts_create) then,
  ) = _CopyWithImpl$Mutation$Adverts_create$adverts_create;

  factory CopyWith$Mutation$Adverts_create$adverts_create.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Adverts_create$adverts_create;

  TRes call({
    double? rateFixed,
    double? rateFloat,
    double? merchant_id,
    bool? isFloatRate,
    Enum$AdvertStatus? advertStatus,
    double? limitLower,
    double? limitUpper,
    Enum$TradeType? tradeType,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Adverts_create$adverts_create<TRes>
    implements CopyWith$Mutation$Adverts_create$adverts_create<TRes> {
  _CopyWithImpl$Mutation$Adverts_create$adverts_create(
    this._instance,
    this._then,
  );

  final Mutation$Adverts_create$adverts_create _instance;

  final TRes Function(Mutation$Adverts_create$adverts_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rateFixed = _undefined,
    Object? rateFloat = _undefined,
    Object? merchant_id = _undefined,
    Object? isFloatRate = _undefined,
    Object? advertStatus = _undefined,
    Object? limitLower = _undefined,
    Object? limitUpper = _undefined,
    Object? tradeType = _undefined,
    Object? currencyFiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? wallet_address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Adverts_create$adverts_create(
        rateFixed: rateFixed == _undefined
            ? _instance.rateFixed
            : (rateFixed as double?),
        rateFloat: rateFloat == _undefined
            ? _instance.rateFloat
            : (rateFloat as double?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        isFloatRate: isFloatRate == _undefined
            ? _instance.isFloatRate
            : (isFloatRate as bool?),
        advertStatus: advertStatus == _undefined
            ? _instance.advertStatus
            : (advertStatus as Enum$AdvertStatus?),
        limitLower: limitLower == _undefined
            ? _instance.limitLower
            : (limitLower as double?),
        limitUpper: limitUpper == _undefined
            ? _instance.limitUpper
            : (limitUpper as double?),
        tradeType: tradeType == _undefined
            ? _instance.tradeType
            : (tradeType as Enum$TradeType?),
        currencyFiat: currencyFiat == _undefined
            ? _instance.currencyFiat
            : (currencyFiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        wallet_address: wallet_address == _undefined
            ? _instance.wallet_address
            : (wallet_address as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Adverts_create$adverts_create<TRes>
    implements CopyWith$Mutation$Adverts_create$adverts_create<TRes> {
  _CopyWithStubImpl$Mutation$Adverts_create$adverts_create(this._res);

  TRes _res;

  call({
    double? rateFixed,
    double? rateFloat,
    double? merchant_id,
    bool? isFloatRate,
    Enum$AdvertStatus? advertStatus,
    double? limitLower,
    double? limitUpper,
    Enum$TradeType? tradeType,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Adverts_delete {
  factory Variables$Mutation$Adverts_delete(
          {required Input$Advert_DeleteInput input}) =>
      Variables$Mutation$Adverts_delete._({
        r'input': input,
      });

  Variables$Mutation$Adverts_delete._(this._$data);

  factory Variables$Mutation$Adverts_delete.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Advert_DeleteInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$Adverts_delete._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Advert_DeleteInput get input =>
      (_$data['input'] as Input$Advert_DeleteInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Adverts_delete<Variables$Mutation$Adverts_delete>
      get copyWith => CopyWith$Variables$Mutation$Adverts_delete(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Adverts_delete ||
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

abstract class CopyWith$Variables$Mutation$Adverts_delete<TRes> {
  factory CopyWith$Variables$Mutation$Adverts_delete(
    Variables$Mutation$Adverts_delete instance,
    TRes Function(Variables$Mutation$Adverts_delete) then,
  ) = _CopyWithImpl$Variables$Mutation$Adverts_delete;

  factory CopyWith$Variables$Mutation$Adverts_delete.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Adverts_delete;

  TRes call({Input$Advert_DeleteInput? input});
}

class _CopyWithImpl$Variables$Mutation$Adverts_delete<TRes>
    implements CopyWith$Variables$Mutation$Adverts_delete<TRes> {
  _CopyWithImpl$Variables$Mutation$Adverts_delete(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Adverts_delete _instance;

  final TRes Function(Variables$Mutation$Adverts_delete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Adverts_delete._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Advert_DeleteInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Adverts_delete<TRes>
    implements CopyWith$Variables$Mutation$Adverts_delete<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Adverts_delete(this._res);

  TRes _res;

  call({Input$Advert_DeleteInput? input}) => _res;
}

class Mutation$Adverts_delete {
  Mutation$Adverts_delete({
    required this.adverts_delete,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Adverts_delete.fromJson(Map<String, dynamic> json) {
    final l$adverts_delete = json['adverts_delete'];
    final l$$__typename = json['__typename'];
    return Mutation$Adverts_delete(
      adverts_delete: Mutation$Adverts_delete$adverts_delete.fromJson(
          (l$adverts_delete as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Adverts_delete$adverts_delete adverts_delete;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adverts_delete = adverts_delete;
    _resultData['adverts_delete'] = l$adverts_delete.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adverts_delete = adverts_delete;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$adverts_delete,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Adverts_delete || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adverts_delete = adverts_delete;
    final lOther$adverts_delete = other.adverts_delete;
    if (l$adverts_delete != lOther$adverts_delete) {
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

extension UtilityExtension$Mutation$Adverts_delete on Mutation$Adverts_delete {
  CopyWith$Mutation$Adverts_delete<Mutation$Adverts_delete> get copyWith =>
      CopyWith$Mutation$Adverts_delete(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Adverts_delete<TRes> {
  factory CopyWith$Mutation$Adverts_delete(
    Mutation$Adverts_delete instance,
    TRes Function(Mutation$Adverts_delete) then,
  ) = _CopyWithImpl$Mutation$Adverts_delete;

  factory CopyWith$Mutation$Adverts_delete.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Adverts_delete;

  TRes call({
    Mutation$Adverts_delete$adverts_delete? adverts_delete,
    String? $__typename,
  });
  CopyWith$Mutation$Adverts_delete$adverts_delete<TRes> get adverts_delete;
}

class _CopyWithImpl$Mutation$Adverts_delete<TRes>
    implements CopyWith$Mutation$Adverts_delete<TRes> {
  _CopyWithImpl$Mutation$Adverts_delete(
    this._instance,
    this._then,
  );

  final Mutation$Adverts_delete _instance;

  final TRes Function(Mutation$Adverts_delete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adverts_delete = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Adverts_delete(
        adverts_delete: adverts_delete == _undefined || adverts_delete == null
            ? _instance.adverts_delete
            : (adverts_delete as Mutation$Adverts_delete$adverts_delete),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Adverts_delete$adverts_delete<TRes> get adverts_delete {
    final local$adverts_delete = _instance.adverts_delete;
    return CopyWith$Mutation$Adverts_delete$adverts_delete(
        local$adverts_delete, (e) => call(adverts_delete: e));
  }
}

class _CopyWithStubImpl$Mutation$Adverts_delete<TRes>
    implements CopyWith$Mutation$Adverts_delete<TRes> {
  _CopyWithStubImpl$Mutation$Adverts_delete(this._res);

  TRes _res;

  call({
    Mutation$Adverts_delete$adverts_delete? adverts_delete,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Adverts_delete$adverts_delete<TRes> get adverts_delete =>
      CopyWith$Mutation$Adverts_delete$adverts_delete.stub(_res);
}

const documentNodeMutationAdverts_delete = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Adverts_delete'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Advert_DeleteInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'adverts_delete'),
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
            name: NameNode(value: 'merchant_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFixed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFloat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFloatRate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencyFiat'),
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
            name: NameNode(value: 'advertStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitLower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitUpper'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_address'),
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
Mutation$Adverts_delete _parserFn$Mutation$Adverts_delete(
        Map<String, dynamic> data) =>
    Mutation$Adverts_delete.fromJson(data);
typedef OnMutationCompleted$Mutation$Adverts_delete = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Adverts_delete?,
);

class Options$Mutation$Adverts_delete
    extends graphql.MutationOptions<Mutation$Adverts_delete> {
  Options$Mutation$Adverts_delete({
    String? operationName,
    required Variables$Mutation$Adverts_delete variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_delete? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Adverts_delete? onCompleted,
    graphql.OnMutationUpdate<Mutation$Adverts_delete>? update,
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
                        : _parserFn$Mutation$Adverts_delete(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAdverts_delete,
          parserFn: _parserFn$Mutation$Adverts_delete,
        );

  final OnMutationCompleted$Mutation$Adverts_delete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Adverts_delete
    extends graphql.WatchQueryOptions<Mutation$Adverts_delete> {
  WatchOptions$Mutation$Adverts_delete({
    String? operationName,
    required Variables$Mutation$Adverts_delete variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_delete? typedOptimisticResult,
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
          document: documentNodeMutationAdverts_delete,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Adverts_delete,
        );
}

extension ClientExtension$Mutation$Adverts_delete on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Adverts_delete>> mutate$Adverts_delete(
          Options$Mutation$Adverts_delete options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Adverts_delete> watchMutation$Adverts_delete(
          WatchOptions$Mutation$Adverts_delete options) =>
      this.watchMutation(options);
}

class Mutation$Adverts_delete$HookResult {
  Mutation$Adverts_delete$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Adverts_delete runMutation;

  final graphql.QueryResult<Mutation$Adverts_delete> result;
}

Mutation$Adverts_delete$HookResult useMutation$Adverts_delete(
    [WidgetOptions$Mutation$Adverts_delete? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Adverts_delete());
  return Mutation$Adverts_delete$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Adverts_delete>
    useWatchMutation$Adverts_delete(
            WatchOptions$Mutation$Adverts_delete options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Adverts_delete
    extends graphql.MutationOptions<Mutation$Adverts_delete> {
  WidgetOptions$Mutation$Adverts_delete({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Adverts_delete? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Adverts_delete? onCompleted,
    graphql.OnMutationUpdate<Mutation$Adverts_delete>? update,
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
                        : _parserFn$Mutation$Adverts_delete(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAdverts_delete,
          parserFn: _parserFn$Mutation$Adverts_delete,
        );

  final OnMutationCompleted$Mutation$Adverts_delete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Adverts_delete
    = graphql.MultiSourceResult<Mutation$Adverts_delete> Function(
  Variables$Mutation$Adverts_delete, {
  Object? optimisticResult,
  Mutation$Adverts_delete? typedOptimisticResult,
});
typedef Builder$Mutation$Adverts_delete = widgets.Widget Function(
  RunMutation$Mutation$Adverts_delete,
  graphql.QueryResult<Mutation$Adverts_delete>?,
);

class Mutation$Adverts_delete$Widget
    extends graphql_flutter.Mutation<Mutation$Adverts_delete> {
  Mutation$Adverts_delete$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Adverts_delete? options,
    required Builder$Mutation$Adverts_delete builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Adverts_delete(),
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

class Mutation$Adverts_delete$adverts_delete {
  Mutation$Adverts_delete$adverts_delete({
    this.merchant_id,
    this.rateFixed,
    this.rateFloat,
    this.isFloatRate,
    this.currencyFiat,
    this.currency_crypto,
    this.advertStatus,
    this.duration,
    this.limitLower,
    this.limitUpper,
    this.tradeType,
    this.wallet_address,
    this.$__typename = 'Advert_GetResponse',
  });

  factory Mutation$Adverts_delete$adverts_delete.fromJson(
      Map<String, dynamic> json) {
    final l$merchant_id = json['merchant_id'];
    final l$rateFixed = json['rateFixed'];
    final l$rateFloat = json['rateFloat'];
    final l$isFloatRate = json['isFloatRate'];
    final l$currencyFiat = json['currencyFiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$advertStatus = json['advertStatus'];
    final l$duration = json['duration'];
    final l$limitLower = json['limitLower'];
    final l$limitUpper = json['limitUpper'];
    final l$tradeType = json['tradeType'];
    final l$wallet_address = json['wallet_address'];
    final l$$__typename = json['__typename'];
    return Mutation$Adverts_delete$adverts_delete(
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      rateFixed: (l$rateFixed as num?)?.toDouble(),
      rateFloat: (l$rateFloat as num?)?.toDouble(),
      isFloatRate: (l$isFloatRate as bool?),
      currencyFiat: l$currencyFiat == null
          ? null
          : fromJson$Enum$Country((l$currencyFiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      advertStatus: l$advertStatus == null
          ? null
          : fromJson$Enum$AdvertStatus((l$advertStatus as String)),
      duration: (l$duration as String?),
      limitLower: (l$limitLower as num?)?.toDouble(),
      limitUpper: (l$limitUpper as num?)?.toDouble(),
      tradeType: l$tradeType == null
          ? null
          : fromJson$Enum$TradeType((l$tradeType as String)),
      wallet_address: (l$wallet_address as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? merchant_id;

  final double? rateFixed;

  final double? rateFloat;

  final bool? isFloatRate;

  final Enum$Country? currencyFiat;

  final String? currency_crypto;

  final Enum$AdvertStatus? advertStatus;

  final String? duration;

  final double? limitLower;

  final double? limitUpper;

  final Enum$TradeType? tradeType;

  final String? wallet_address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$rateFixed = rateFixed;
    _resultData['rateFixed'] = l$rateFixed;
    final l$rateFloat = rateFloat;
    _resultData['rateFloat'] = l$rateFloat;
    final l$isFloatRate = isFloatRate;
    _resultData['isFloatRate'] = l$isFloatRate;
    final l$currencyFiat = currencyFiat;
    _resultData['currencyFiat'] =
        l$currencyFiat == null ? null : toJson$Enum$Country(l$currencyFiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$advertStatus = advertStatus;
    _resultData['advertStatus'] = l$advertStatus == null
        ? null
        : toJson$Enum$AdvertStatus(l$advertStatus);
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$limitLower = limitLower;
    _resultData['limitLower'] = l$limitLower;
    final l$limitUpper = limitUpper;
    _resultData['limitUpper'] = l$limitUpper;
    final l$tradeType = tradeType;
    _resultData['tradeType'] =
        l$tradeType == null ? null : toJson$Enum$TradeType(l$tradeType);
    final l$wallet_address = wallet_address;
    _resultData['wallet_address'] = l$wallet_address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$merchant_id = merchant_id;
    final l$rateFixed = rateFixed;
    final l$rateFloat = rateFloat;
    final l$isFloatRate = isFloatRate;
    final l$currencyFiat = currencyFiat;
    final l$currency_crypto = currency_crypto;
    final l$advertStatus = advertStatus;
    final l$duration = duration;
    final l$limitLower = limitLower;
    final l$limitUpper = limitUpper;
    final l$tradeType = tradeType;
    final l$wallet_address = wallet_address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$merchant_id,
      l$rateFixed,
      l$rateFloat,
      l$isFloatRate,
      l$currencyFiat,
      l$currency_crypto,
      l$advertStatus,
      l$duration,
      l$limitLower,
      l$limitUpper,
      l$tradeType,
      l$wallet_address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Adverts_delete$adverts_delete ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$rateFixed = rateFixed;
    final lOther$rateFixed = other.rateFixed;
    if (l$rateFixed != lOther$rateFixed) {
      return false;
    }
    final l$rateFloat = rateFloat;
    final lOther$rateFloat = other.rateFloat;
    if (l$rateFloat != lOther$rateFloat) {
      return false;
    }
    final l$isFloatRate = isFloatRate;
    final lOther$isFloatRate = other.isFloatRate;
    if (l$isFloatRate != lOther$isFloatRate) {
      return false;
    }
    final l$currencyFiat = currencyFiat;
    final lOther$currencyFiat = other.currencyFiat;
    if (l$currencyFiat != lOther$currencyFiat) {
      return false;
    }
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$advertStatus = advertStatus;
    final lOther$advertStatus = other.advertStatus;
    if (l$advertStatus != lOther$advertStatus) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$limitLower = limitLower;
    final lOther$limitLower = other.limitLower;
    if (l$limitLower != lOther$limitLower) {
      return false;
    }
    final l$limitUpper = limitUpper;
    final lOther$limitUpper = other.limitUpper;
    if (l$limitUpper != lOther$limitUpper) {
      return false;
    }
    final l$tradeType = tradeType;
    final lOther$tradeType = other.tradeType;
    if (l$tradeType != lOther$tradeType) {
      return false;
    }
    final l$wallet_address = wallet_address;
    final lOther$wallet_address = other.wallet_address;
    if (l$wallet_address != lOther$wallet_address) {
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

extension UtilityExtension$Mutation$Adverts_delete$adverts_delete
    on Mutation$Adverts_delete$adverts_delete {
  CopyWith$Mutation$Adverts_delete$adverts_delete<
          Mutation$Adverts_delete$adverts_delete>
      get copyWith => CopyWith$Mutation$Adverts_delete$adverts_delete(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Adverts_delete$adverts_delete<TRes> {
  factory CopyWith$Mutation$Adverts_delete$adverts_delete(
    Mutation$Adverts_delete$adverts_delete instance,
    TRes Function(Mutation$Adverts_delete$adverts_delete) then,
  ) = _CopyWithImpl$Mutation$Adverts_delete$adverts_delete;

  factory CopyWith$Mutation$Adverts_delete$adverts_delete.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Adverts_delete$adverts_delete;

  TRes call({
    double? merchant_id,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    double? limitLower,
    double? limitUpper,
    Enum$TradeType? tradeType,
    String? wallet_address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Adverts_delete$adverts_delete<TRes>
    implements CopyWith$Mutation$Adverts_delete$adverts_delete<TRes> {
  _CopyWithImpl$Mutation$Adverts_delete$adverts_delete(
    this._instance,
    this._then,
  );

  final Mutation$Adverts_delete$adverts_delete _instance;

  final TRes Function(Mutation$Adverts_delete$adverts_delete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? merchant_id = _undefined,
    Object? rateFixed = _undefined,
    Object? rateFloat = _undefined,
    Object? isFloatRate = _undefined,
    Object? currencyFiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? advertStatus = _undefined,
    Object? duration = _undefined,
    Object? limitLower = _undefined,
    Object? limitUpper = _undefined,
    Object? tradeType = _undefined,
    Object? wallet_address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Adverts_delete$adverts_delete(
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        rateFixed: rateFixed == _undefined
            ? _instance.rateFixed
            : (rateFixed as double?),
        rateFloat: rateFloat == _undefined
            ? _instance.rateFloat
            : (rateFloat as double?),
        isFloatRate: isFloatRate == _undefined
            ? _instance.isFloatRate
            : (isFloatRate as bool?),
        currencyFiat: currencyFiat == _undefined
            ? _instance.currencyFiat
            : (currencyFiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        advertStatus: advertStatus == _undefined
            ? _instance.advertStatus
            : (advertStatus as Enum$AdvertStatus?),
        duration:
            duration == _undefined ? _instance.duration : (duration as String?),
        limitLower: limitLower == _undefined
            ? _instance.limitLower
            : (limitLower as double?),
        limitUpper: limitUpper == _undefined
            ? _instance.limitUpper
            : (limitUpper as double?),
        tradeType: tradeType == _undefined
            ? _instance.tradeType
            : (tradeType as Enum$TradeType?),
        wallet_address: wallet_address == _undefined
            ? _instance.wallet_address
            : (wallet_address as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Adverts_delete$adverts_delete<TRes>
    implements CopyWith$Mutation$Adverts_delete$adverts_delete<TRes> {
  _CopyWithStubImpl$Mutation$Adverts_delete$adverts_delete(this._res);

  TRes _res;

  call({
    double? merchant_id,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    double? limitLower,
    double? limitUpper,
    Enum$TradeType? tradeType,
    String? wallet_address,
    String? $__typename,
  }) =>
      _res;
}

class Query$Adverts_getAll {
  Query$Adverts_getAll({
    required this.adverts_getAll,
    this.$__typename = 'Query',
  });

  factory Query$Adverts_getAll.fromJson(Map<String, dynamic> json) {
    final l$adverts_getAll = json['adverts_getAll'];
    final l$$__typename = json['__typename'];
    return Query$Adverts_getAll(
      adverts_getAll: (l$adverts_getAll as List<dynamic>)
          .map((e) => Query$Adverts_getAll$adverts_getAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Adverts_getAll$adverts_getAll> adverts_getAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adverts_getAll = adverts_getAll;
    _resultData['adverts_getAll'] =
        l$adverts_getAll.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adverts_getAll = adverts_getAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$adverts_getAll.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Adverts_getAll || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adverts_getAll = adverts_getAll;
    final lOther$adverts_getAll = other.adverts_getAll;
    if (l$adverts_getAll.length != lOther$adverts_getAll.length) {
      return false;
    }
    for (int i = 0; i < l$adverts_getAll.length; i++) {
      final l$adverts_getAll$entry = l$adverts_getAll[i];
      final lOther$adverts_getAll$entry = lOther$adverts_getAll[i];
      if (l$adverts_getAll$entry != lOther$adverts_getAll$entry) {
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

extension UtilityExtension$Query$Adverts_getAll on Query$Adverts_getAll {
  CopyWith$Query$Adverts_getAll<Query$Adverts_getAll> get copyWith =>
      CopyWith$Query$Adverts_getAll(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Adverts_getAll<TRes> {
  factory CopyWith$Query$Adverts_getAll(
    Query$Adverts_getAll instance,
    TRes Function(Query$Adverts_getAll) then,
  ) = _CopyWithImpl$Query$Adverts_getAll;

  factory CopyWith$Query$Adverts_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$Adverts_getAll;

  TRes call({
    List<Query$Adverts_getAll$adverts_getAll>? adverts_getAll,
    String? $__typename,
  });
  TRes adverts_getAll(
      Iterable<Query$Adverts_getAll$adverts_getAll> Function(
              Iterable<
                  CopyWith$Query$Adverts_getAll$adverts_getAll<
                      Query$Adverts_getAll$adverts_getAll>>)
          _fn);
}

class _CopyWithImpl$Query$Adverts_getAll<TRes>
    implements CopyWith$Query$Adverts_getAll<TRes> {
  _CopyWithImpl$Query$Adverts_getAll(
    this._instance,
    this._then,
  );

  final Query$Adverts_getAll _instance;

  final TRes Function(Query$Adverts_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adverts_getAll = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Adverts_getAll(
        adverts_getAll: adverts_getAll == _undefined || adverts_getAll == null
            ? _instance.adverts_getAll
            : (adverts_getAll as List<Query$Adverts_getAll$adverts_getAll>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes adverts_getAll(
          Iterable<Query$Adverts_getAll$adverts_getAll> Function(
                  Iterable<
                      CopyWith$Query$Adverts_getAll$adverts_getAll<
                          Query$Adverts_getAll$adverts_getAll>>)
              _fn) =>
      call(
          adverts_getAll: _fn(_instance.adverts_getAll
              .map((e) => CopyWith$Query$Adverts_getAll$adverts_getAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Adverts_getAll<TRes>
    implements CopyWith$Query$Adverts_getAll<TRes> {
  _CopyWithStubImpl$Query$Adverts_getAll(this._res);

  TRes _res;

  call({
    List<Query$Adverts_getAll$adverts_getAll>? adverts_getAll,
    String? $__typename,
  }) =>
      _res;

  adverts_getAll(_fn) => _res;
}

const documentNodeQueryAdverts_getAll = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Adverts_getAll'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'adverts_getAll'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'rateFixed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFloat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFloatRate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'advertStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'instructions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitLower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitUpper'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencyFiat'),
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
            name: NameNode(value: 'wallet_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchant_nickname'),
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
            name: NameNode(value: 'merchant_trade_count'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fiatAmountPerCrypto'),
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
Query$Adverts_getAll _parserFn$Query$Adverts_getAll(
        Map<String, dynamic> data) =>
    Query$Adverts_getAll.fromJson(data);
typedef OnQueryComplete$Query$Adverts_getAll = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Adverts_getAll?,
);

class Options$Query$Adverts_getAll
    extends graphql.QueryOptions<Query$Adverts_getAll> {
  Options$Query$Adverts_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Adverts_getAll? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Adverts_getAll? onComplete,
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
                    data == null ? null : _parserFn$Query$Adverts_getAll(data),
                  ),
          onError: onError,
          document: documentNodeQueryAdverts_getAll,
          parserFn: _parserFn$Query$Adverts_getAll,
        );

  final OnQueryComplete$Query$Adverts_getAll? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Adverts_getAll
    extends graphql.WatchQueryOptions<Query$Adverts_getAll> {
  WatchOptions$Query$Adverts_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Adverts_getAll? typedOptimisticResult,
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
          document: documentNodeQueryAdverts_getAll,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Adverts_getAll,
        );
}

class FetchMoreOptions$Query$Adverts_getAll extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Adverts_getAll(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAdverts_getAll,
        );
}

extension ClientExtension$Query$Adverts_getAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Adverts_getAll>> query$Adverts_getAll(
          [Options$Query$Adverts_getAll? options]) async =>
      await this.query(options ?? Options$Query$Adverts_getAll());
  graphql.ObservableQuery<Query$Adverts_getAll> watchQuery$Adverts_getAll(
          [WatchOptions$Query$Adverts_getAll? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Adverts_getAll());
  void writeQuery$Adverts_getAll({
    required Query$Adverts_getAll data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAdverts_getAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Adverts_getAll? readQuery$Adverts_getAll({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAdverts_getAll)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Adverts_getAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Adverts_getAll> useQuery$Adverts_getAll(
        [Options$Query$Adverts_getAll? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Adverts_getAll());
graphql.ObservableQuery<Query$Adverts_getAll> useWatchQuery$Adverts_getAll(
        [WatchOptions$Query$Adverts_getAll? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$Adverts_getAll());

class Query$Adverts_getAll$Widget
    extends graphql_flutter.Query<Query$Adverts_getAll> {
  Query$Adverts_getAll$Widget({
    widgets.Key? key,
    Options$Query$Adverts_getAll? options,
    required graphql_flutter.QueryBuilder<Query$Adverts_getAll> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Adverts_getAll(),
          builder: builder,
        );
}

class Query$Adverts_getAll$adverts_getAll {
  Query$Adverts_getAll$adverts_getAll({
    required this.id,
    this.rateFixed,
    this.rateFloat,
    this.isFloatRate,
    this.advertStatus,
    this.duration,
    this.tradeType,
    this.instructions,
    this.limitLower,
    this.limitUpper,
    this.currencyFiat,
    this.currency_crypto,
    this.wallet_address,
    this.merchant_nickname,
    this.merchant_id,
    this.merchant_trade_count,
    this.fiatAmountPerCrypto,
    this.$__typename = 'Advert_GetResponse',
  });

  factory Query$Adverts_getAll$adverts_getAll.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rateFixed = json['rateFixed'];
    final l$rateFloat = json['rateFloat'];
    final l$isFloatRate = json['isFloatRate'];
    final l$advertStatus = json['advertStatus'];
    final l$duration = json['duration'];
    final l$tradeType = json['tradeType'];
    final l$instructions = json['instructions'];
    final l$limitLower = json['limitLower'];
    final l$limitUpper = json['limitUpper'];
    final l$currencyFiat = json['currencyFiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$wallet_address = json['wallet_address'];
    final l$merchant_nickname = json['merchant_nickname'];
    final l$merchant_id = json['merchant_id'];
    final l$merchant_trade_count = json['merchant_trade_count'];
    final l$fiatAmountPerCrypto = json['fiatAmountPerCrypto'];
    final l$$__typename = json['__typename'];
    return Query$Adverts_getAll$adverts_getAll(
      id: (l$id as String),
      rateFixed: (l$rateFixed as num?)?.toDouble(),
      rateFloat: (l$rateFloat as num?)?.toDouble(),
      isFloatRate: (l$isFloatRate as bool?),
      advertStatus: l$advertStatus == null
          ? null
          : fromJson$Enum$AdvertStatus((l$advertStatus as String)),
      duration: (l$duration as String?),
      tradeType: l$tradeType == null
          ? null
          : fromJson$Enum$TradeType((l$tradeType as String)),
      instructions: (l$instructions as String?),
      limitLower: (l$limitLower as num?)?.toDouble(),
      limitUpper: (l$limitUpper as num?)?.toDouble(),
      currencyFiat: l$currencyFiat == null
          ? null
          : fromJson$Enum$Country((l$currencyFiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      wallet_address: (l$wallet_address as String?),
      merchant_nickname: (l$merchant_nickname as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      merchant_trade_count: (l$merchant_trade_count as num?)?.toDouble(),
      fiatAmountPerCrypto: (l$fiatAmountPerCrypto as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double? rateFixed;

  final double? rateFloat;

  final bool? isFloatRate;

  final Enum$AdvertStatus? advertStatus;

  final String? duration;

  final Enum$TradeType? tradeType;

  final String? instructions;

  final double? limitLower;

  final double? limitUpper;

  final Enum$Country? currencyFiat;

  final String? currency_crypto;

  final String? wallet_address;

  final String? merchant_nickname;

  final double? merchant_id;

  final double? merchant_trade_count;

  final double? fiatAmountPerCrypto;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$rateFixed = rateFixed;
    _resultData['rateFixed'] = l$rateFixed;
    final l$rateFloat = rateFloat;
    _resultData['rateFloat'] = l$rateFloat;
    final l$isFloatRate = isFloatRate;
    _resultData['isFloatRate'] = l$isFloatRate;
    final l$advertStatus = advertStatus;
    _resultData['advertStatus'] = l$advertStatus == null
        ? null
        : toJson$Enum$AdvertStatus(l$advertStatus);
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$tradeType = tradeType;
    _resultData['tradeType'] =
        l$tradeType == null ? null : toJson$Enum$TradeType(l$tradeType);
    final l$instructions = instructions;
    _resultData['instructions'] = l$instructions;
    final l$limitLower = limitLower;
    _resultData['limitLower'] = l$limitLower;
    final l$limitUpper = limitUpper;
    _resultData['limitUpper'] = l$limitUpper;
    final l$currencyFiat = currencyFiat;
    _resultData['currencyFiat'] =
        l$currencyFiat == null ? null : toJson$Enum$Country(l$currencyFiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$wallet_address = wallet_address;
    _resultData['wallet_address'] = l$wallet_address;
    final l$merchant_nickname = merchant_nickname;
    _resultData['merchant_nickname'] = l$merchant_nickname;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$merchant_trade_count = merchant_trade_count;
    _resultData['merchant_trade_count'] = l$merchant_trade_count;
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    _resultData['fiatAmountPerCrypto'] = l$fiatAmountPerCrypto;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rateFixed = rateFixed;
    final l$rateFloat = rateFloat;
    final l$isFloatRate = isFloatRate;
    final l$advertStatus = advertStatus;
    final l$duration = duration;
    final l$tradeType = tradeType;
    final l$instructions = instructions;
    final l$limitLower = limitLower;
    final l$limitUpper = limitUpper;
    final l$currencyFiat = currencyFiat;
    final l$currency_crypto = currency_crypto;
    final l$wallet_address = wallet_address;
    final l$merchant_nickname = merchant_nickname;
    final l$merchant_id = merchant_id;
    final l$merchant_trade_count = merchant_trade_count;
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$rateFixed,
      l$rateFloat,
      l$isFloatRate,
      l$advertStatus,
      l$duration,
      l$tradeType,
      l$instructions,
      l$limitLower,
      l$limitUpper,
      l$currencyFiat,
      l$currency_crypto,
      l$wallet_address,
      l$merchant_nickname,
      l$merchant_id,
      l$merchant_trade_count,
      l$fiatAmountPerCrypto,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Adverts_getAll$adverts_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$rateFixed = rateFixed;
    final lOther$rateFixed = other.rateFixed;
    if (l$rateFixed != lOther$rateFixed) {
      return false;
    }
    final l$rateFloat = rateFloat;
    final lOther$rateFloat = other.rateFloat;
    if (l$rateFloat != lOther$rateFloat) {
      return false;
    }
    final l$isFloatRate = isFloatRate;
    final lOther$isFloatRate = other.isFloatRate;
    if (l$isFloatRate != lOther$isFloatRate) {
      return false;
    }
    final l$advertStatus = advertStatus;
    final lOther$advertStatus = other.advertStatus;
    if (l$advertStatus != lOther$advertStatus) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$tradeType = tradeType;
    final lOther$tradeType = other.tradeType;
    if (l$tradeType != lOther$tradeType) {
      return false;
    }
    final l$instructions = instructions;
    final lOther$instructions = other.instructions;
    if (l$instructions != lOther$instructions) {
      return false;
    }
    final l$limitLower = limitLower;
    final lOther$limitLower = other.limitLower;
    if (l$limitLower != lOther$limitLower) {
      return false;
    }
    final l$limitUpper = limitUpper;
    final lOther$limitUpper = other.limitUpper;
    if (l$limitUpper != lOther$limitUpper) {
      return false;
    }
    final l$currencyFiat = currencyFiat;
    final lOther$currencyFiat = other.currencyFiat;
    if (l$currencyFiat != lOther$currencyFiat) {
      return false;
    }
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$wallet_address = wallet_address;
    final lOther$wallet_address = other.wallet_address;
    if (l$wallet_address != lOther$wallet_address) {
      return false;
    }
    final l$merchant_nickname = merchant_nickname;
    final lOther$merchant_nickname = other.merchant_nickname;
    if (l$merchant_nickname != lOther$merchant_nickname) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$merchant_trade_count = merchant_trade_count;
    final lOther$merchant_trade_count = other.merchant_trade_count;
    if (l$merchant_trade_count != lOther$merchant_trade_count) {
      return false;
    }
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    final lOther$fiatAmountPerCrypto = other.fiatAmountPerCrypto;
    if (l$fiatAmountPerCrypto != lOther$fiatAmountPerCrypto) {
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

extension UtilityExtension$Query$Adverts_getAll$adverts_getAll
    on Query$Adverts_getAll$adverts_getAll {
  CopyWith$Query$Adverts_getAll$adverts_getAll<
          Query$Adverts_getAll$adverts_getAll>
      get copyWith => CopyWith$Query$Adverts_getAll$adverts_getAll(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Adverts_getAll$adverts_getAll<TRes> {
  factory CopyWith$Query$Adverts_getAll$adverts_getAll(
    Query$Adverts_getAll$adverts_getAll instance,
    TRes Function(Query$Adverts_getAll$adverts_getAll) then,
  ) = _CopyWithImpl$Query$Adverts_getAll$adverts_getAll;

  factory CopyWith$Query$Adverts_getAll$adverts_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$Adverts_getAll$adverts_getAll;

  TRes call({
    String? id,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    Enum$TradeType? tradeType,
    String? instructions,
    double? limitLower,
    double? limitUpper,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? merchant_nickname,
    double? merchant_id,
    double? merchant_trade_count,
    double? fiatAmountPerCrypto,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Adverts_getAll$adverts_getAll<TRes>
    implements CopyWith$Query$Adverts_getAll$adverts_getAll<TRes> {
  _CopyWithImpl$Query$Adverts_getAll$adverts_getAll(
    this._instance,
    this._then,
  );

  final Query$Adverts_getAll$adverts_getAll _instance;

  final TRes Function(Query$Adverts_getAll$adverts_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rateFixed = _undefined,
    Object? rateFloat = _undefined,
    Object? isFloatRate = _undefined,
    Object? advertStatus = _undefined,
    Object? duration = _undefined,
    Object? tradeType = _undefined,
    Object? instructions = _undefined,
    Object? limitLower = _undefined,
    Object? limitUpper = _undefined,
    Object? currencyFiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? wallet_address = _undefined,
    Object? merchant_nickname = _undefined,
    Object? merchant_id = _undefined,
    Object? merchant_trade_count = _undefined,
    Object? fiatAmountPerCrypto = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Adverts_getAll$adverts_getAll(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        rateFixed: rateFixed == _undefined
            ? _instance.rateFixed
            : (rateFixed as double?),
        rateFloat: rateFloat == _undefined
            ? _instance.rateFloat
            : (rateFloat as double?),
        isFloatRate: isFloatRate == _undefined
            ? _instance.isFloatRate
            : (isFloatRate as bool?),
        advertStatus: advertStatus == _undefined
            ? _instance.advertStatus
            : (advertStatus as Enum$AdvertStatus?),
        duration:
            duration == _undefined ? _instance.duration : (duration as String?),
        tradeType: tradeType == _undefined
            ? _instance.tradeType
            : (tradeType as Enum$TradeType?),
        instructions: instructions == _undefined
            ? _instance.instructions
            : (instructions as String?),
        limitLower: limitLower == _undefined
            ? _instance.limitLower
            : (limitLower as double?),
        limitUpper: limitUpper == _undefined
            ? _instance.limitUpper
            : (limitUpper as double?),
        currencyFiat: currencyFiat == _undefined
            ? _instance.currencyFiat
            : (currencyFiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        wallet_address: wallet_address == _undefined
            ? _instance.wallet_address
            : (wallet_address as String?),
        merchant_nickname: merchant_nickname == _undefined
            ? _instance.merchant_nickname
            : (merchant_nickname as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        merchant_trade_count: merchant_trade_count == _undefined
            ? _instance.merchant_trade_count
            : (merchant_trade_count as double?),
        fiatAmountPerCrypto: fiatAmountPerCrypto == _undefined
            ? _instance.fiatAmountPerCrypto
            : (fiatAmountPerCrypto as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Adverts_getAll$adverts_getAll<TRes>
    implements CopyWith$Query$Adverts_getAll$adverts_getAll<TRes> {
  _CopyWithStubImpl$Query$Adverts_getAll$adverts_getAll(this._res);

  TRes _res;

  call({
    String? id,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    Enum$TradeType? tradeType,
    String? instructions,
    double? limitLower,
    double? limitUpper,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? merchant_nickname,
    double? merchant_id,
    double? merchant_trade_count,
    double? fiatAmountPerCrypto,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Adverts_getOne {
  factory Variables$Query$Adverts_getOne(
          {required Input$Advert_GetOneInput input}) =>
      Variables$Query$Adverts_getOne._({
        r'input': input,
      });

  Variables$Query$Adverts_getOne._(this._$data);

  factory Variables$Query$Adverts_getOne.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Advert_GetOneInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$Adverts_getOne._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Advert_GetOneInput get input =>
      (_$data['input'] as Input$Advert_GetOneInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Adverts_getOne<Variables$Query$Adverts_getOne>
      get copyWith => CopyWith$Variables$Query$Adverts_getOne(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Adverts_getOne ||
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

abstract class CopyWith$Variables$Query$Adverts_getOne<TRes> {
  factory CopyWith$Variables$Query$Adverts_getOne(
    Variables$Query$Adverts_getOne instance,
    TRes Function(Variables$Query$Adverts_getOne) then,
  ) = _CopyWithImpl$Variables$Query$Adverts_getOne;

  factory CopyWith$Variables$Query$Adverts_getOne.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Adverts_getOne;

  TRes call({Input$Advert_GetOneInput? input});
}

class _CopyWithImpl$Variables$Query$Adverts_getOne<TRes>
    implements CopyWith$Variables$Query$Adverts_getOne<TRes> {
  _CopyWithImpl$Variables$Query$Adverts_getOne(
    this._instance,
    this._then,
  );

  final Variables$Query$Adverts_getOne _instance;

  final TRes Function(Variables$Query$Adverts_getOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$Adverts_getOne._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Advert_GetOneInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Adverts_getOne<TRes>
    implements CopyWith$Variables$Query$Adverts_getOne<TRes> {
  _CopyWithStubImpl$Variables$Query$Adverts_getOne(this._res);

  TRes _res;

  call({Input$Advert_GetOneInput? input}) => _res;
}

class Query$Adverts_getOne {
  Query$Adverts_getOne({
    required this.adverts_getOne,
    this.$__typename = 'Query',
  });

  factory Query$Adverts_getOne.fromJson(Map<String, dynamic> json) {
    final l$adverts_getOne = json['adverts_getOne'];
    final l$$__typename = json['__typename'];
    return Query$Adverts_getOne(
      adverts_getOne: Query$Adverts_getOne$adverts_getOne.fromJson(
          (l$adverts_getOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Adverts_getOne$adverts_getOne adverts_getOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adverts_getOne = adverts_getOne;
    _resultData['adverts_getOne'] = l$adverts_getOne.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adverts_getOne = adverts_getOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$adverts_getOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Adverts_getOne || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adverts_getOne = adverts_getOne;
    final lOther$adverts_getOne = other.adverts_getOne;
    if (l$adverts_getOne != lOther$adverts_getOne) {
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

extension UtilityExtension$Query$Adverts_getOne on Query$Adverts_getOne {
  CopyWith$Query$Adverts_getOne<Query$Adverts_getOne> get copyWith =>
      CopyWith$Query$Adverts_getOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Adverts_getOne<TRes> {
  factory CopyWith$Query$Adverts_getOne(
    Query$Adverts_getOne instance,
    TRes Function(Query$Adverts_getOne) then,
  ) = _CopyWithImpl$Query$Adverts_getOne;

  factory CopyWith$Query$Adverts_getOne.stub(TRes res) =
      _CopyWithStubImpl$Query$Adverts_getOne;

  TRes call({
    Query$Adverts_getOne$adverts_getOne? adverts_getOne,
    String? $__typename,
  });
  CopyWith$Query$Adverts_getOne$adverts_getOne<TRes> get adverts_getOne;
}

class _CopyWithImpl$Query$Adverts_getOne<TRes>
    implements CopyWith$Query$Adverts_getOne<TRes> {
  _CopyWithImpl$Query$Adverts_getOne(
    this._instance,
    this._then,
  );

  final Query$Adverts_getOne _instance;

  final TRes Function(Query$Adverts_getOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adverts_getOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Adverts_getOne(
        adverts_getOne: adverts_getOne == _undefined || adverts_getOne == null
            ? _instance.adverts_getOne
            : (adverts_getOne as Query$Adverts_getOne$adverts_getOne),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Adverts_getOne$adverts_getOne<TRes> get adverts_getOne {
    final local$adverts_getOne = _instance.adverts_getOne;
    return CopyWith$Query$Adverts_getOne$adverts_getOne(
        local$adverts_getOne, (e) => call(adverts_getOne: e));
  }
}

class _CopyWithStubImpl$Query$Adverts_getOne<TRes>
    implements CopyWith$Query$Adverts_getOne<TRes> {
  _CopyWithStubImpl$Query$Adverts_getOne(this._res);

  TRes _res;

  call({
    Query$Adverts_getOne$adverts_getOne? adverts_getOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Adverts_getOne$adverts_getOne<TRes> get adverts_getOne =>
      CopyWith$Query$Adverts_getOne$adverts_getOne.stub(_res);
}

const documentNodeQueryAdverts_getOne = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Adverts_getOne'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Advert_GetOneInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'adverts_getOne'),
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
            name: NameNode(value: 'advertStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFixed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFloat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFloatRate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'instructions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitLower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitUpper'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencyFiat'),
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
            name: NameNode(value: 'wallet_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchant_nickname'),
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
            name: NameNode(value: 'merchant_trade_count'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fiatAmountPerCrypto'),
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
Query$Adverts_getOne _parserFn$Query$Adverts_getOne(
        Map<String, dynamic> data) =>
    Query$Adverts_getOne.fromJson(data);
typedef OnQueryComplete$Query$Adverts_getOne = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Adverts_getOne?,
);

class Options$Query$Adverts_getOne
    extends graphql.QueryOptions<Query$Adverts_getOne> {
  Options$Query$Adverts_getOne({
    String? operationName,
    required Variables$Query$Adverts_getOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Adverts_getOne? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Adverts_getOne? onComplete,
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
                    data == null ? null : _parserFn$Query$Adverts_getOne(data),
                  ),
          onError: onError,
          document: documentNodeQueryAdverts_getOne,
          parserFn: _parserFn$Query$Adverts_getOne,
        );

  final OnQueryComplete$Query$Adverts_getOne? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Adverts_getOne
    extends graphql.WatchQueryOptions<Query$Adverts_getOne> {
  WatchOptions$Query$Adverts_getOne({
    String? operationName,
    required Variables$Query$Adverts_getOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Adverts_getOne? typedOptimisticResult,
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
          document: documentNodeQueryAdverts_getOne,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Adverts_getOne,
        );
}

class FetchMoreOptions$Query$Adverts_getOne extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Adverts_getOne({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Adverts_getOne variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryAdverts_getOne,
        );
}

extension ClientExtension$Query$Adverts_getOne on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Adverts_getOne>> query$Adverts_getOne(
          Options$Query$Adverts_getOne options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Adverts_getOne> watchQuery$Adverts_getOne(
          WatchOptions$Query$Adverts_getOne options) =>
      this.watchQuery(options);
  void writeQuery$Adverts_getOne({
    required Query$Adverts_getOne data,
    required Variables$Query$Adverts_getOne variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAdverts_getOne),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Adverts_getOne? readQuery$Adverts_getOne({
    required Variables$Query$Adverts_getOne variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryAdverts_getOne),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Adverts_getOne.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Adverts_getOne> useQuery$Adverts_getOne(
        Options$Query$Adverts_getOne options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Adverts_getOne> useWatchQuery$Adverts_getOne(
        WatchOptions$Query$Adverts_getOne options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Adverts_getOne$Widget
    extends graphql_flutter.Query<Query$Adverts_getOne> {
  Query$Adverts_getOne$Widget({
    widgets.Key? key,
    required Options$Query$Adverts_getOne options,
    required graphql_flutter.QueryBuilder<Query$Adverts_getOne> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Adverts_getOne$adverts_getOne {
  Query$Adverts_getOne$adverts_getOne({
    required this.id,
    this.advertStatus,
    this.duration,
    this.tradeType,
    this.rateFixed,
    this.rateFloat,
    this.isFloatRate,
    this.instructions,
    this.limitLower,
    this.limitUpper,
    this.currencyFiat,
    this.currency_crypto,
    this.wallet_address,
    this.merchant_nickname,
    this.merchant_id,
    this.merchant_trade_count,
    this.fiatAmountPerCrypto,
    this.$__typename = 'Advert_GetResponse',
  });

  factory Query$Adverts_getOne$adverts_getOne.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$advertStatus = json['advertStatus'];
    final l$duration = json['duration'];
    final l$tradeType = json['tradeType'];
    final l$rateFixed = json['rateFixed'];
    final l$rateFloat = json['rateFloat'];
    final l$isFloatRate = json['isFloatRate'];
    final l$instructions = json['instructions'];
    final l$limitLower = json['limitLower'];
    final l$limitUpper = json['limitUpper'];
    final l$currencyFiat = json['currencyFiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$wallet_address = json['wallet_address'];
    final l$merchant_nickname = json['merchant_nickname'];
    final l$merchant_id = json['merchant_id'];
    final l$merchant_trade_count = json['merchant_trade_count'];
    final l$fiatAmountPerCrypto = json['fiatAmountPerCrypto'];
    final l$$__typename = json['__typename'];
    return Query$Adverts_getOne$adverts_getOne(
      id: (l$id as String),
      advertStatus: l$advertStatus == null
          ? null
          : fromJson$Enum$AdvertStatus((l$advertStatus as String)),
      duration: (l$duration as String?),
      tradeType: l$tradeType == null
          ? null
          : fromJson$Enum$TradeType((l$tradeType as String)),
      rateFixed: (l$rateFixed as num?)?.toDouble(),
      rateFloat: (l$rateFloat as num?)?.toDouble(),
      isFloatRate: (l$isFloatRate as bool?),
      instructions: (l$instructions as String?),
      limitLower: (l$limitLower as num?)?.toDouble(),
      limitUpper: (l$limitUpper as num?)?.toDouble(),
      currencyFiat: l$currencyFiat == null
          ? null
          : fromJson$Enum$Country((l$currencyFiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      wallet_address: (l$wallet_address as String?),
      merchant_nickname: (l$merchant_nickname as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      merchant_trade_count: (l$merchant_trade_count as num?)?.toDouble(),
      fiatAmountPerCrypto: (l$fiatAmountPerCrypto as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$AdvertStatus? advertStatus;

  final String? duration;

  final Enum$TradeType? tradeType;

  final double? rateFixed;

  final double? rateFloat;

  final bool? isFloatRate;

  final String? instructions;

  final double? limitLower;

  final double? limitUpper;

  final Enum$Country? currencyFiat;

  final String? currency_crypto;

  final String? wallet_address;

  final String? merchant_nickname;

  final double? merchant_id;

  final double? merchant_trade_count;

  final double? fiatAmountPerCrypto;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$advertStatus = advertStatus;
    _resultData['advertStatus'] = l$advertStatus == null
        ? null
        : toJson$Enum$AdvertStatus(l$advertStatus);
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$tradeType = tradeType;
    _resultData['tradeType'] =
        l$tradeType == null ? null : toJson$Enum$TradeType(l$tradeType);
    final l$rateFixed = rateFixed;
    _resultData['rateFixed'] = l$rateFixed;
    final l$rateFloat = rateFloat;
    _resultData['rateFloat'] = l$rateFloat;
    final l$isFloatRate = isFloatRate;
    _resultData['isFloatRate'] = l$isFloatRate;
    final l$instructions = instructions;
    _resultData['instructions'] = l$instructions;
    final l$limitLower = limitLower;
    _resultData['limitLower'] = l$limitLower;
    final l$limitUpper = limitUpper;
    _resultData['limitUpper'] = l$limitUpper;
    final l$currencyFiat = currencyFiat;
    _resultData['currencyFiat'] =
        l$currencyFiat == null ? null : toJson$Enum$Country(l$currencyFiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$wallet_address = wallet_address;
    _resultData['wallet_address'] = l$wallet_address;
    final l$merchant_nickname = merchant_nickname;
    _resultData['merchant_nickname'] = l$merchant_nickname;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$merchant_trade_count = merchant_trade_count;
    _resultData['merchant_trade_count'] = l$merchant_trade_count;
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    _resultData['fiatAmountPerCrypto'] = l$fiatAmountPerCrypto;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$advertStatus = advertStatus;
    final l$duration = duration;
    final l$tradeType = tradeType;
    final l$rateFixed = rateFixed;
    final l$rateFloat = rateFloat;
    final l$isFloatRate = isFloatRate;
    final l$instructions = instructions;
    final l$limitLower = limitLower;
    final l$limitUpper = limitUpper;
    final l$currencyFiat = currencyFiat;
    final l$currency_crypto = currency_crypto;
    final l$wallet_address = wallet_address;
    final l$merchant_nickname = merchant_nickname;
    final l$merchant_id = merchant_id;
    final l$merchant_trade_count = merchant_trade_count;
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$advertStatus,
      l$duration,
      l$tradeType,
      l$rateFixed,
      l$rateFloat,
      l$isFloatRate,
      l$instructions,
      l$limitLower,
      l$limitUpper,
      l$currencyFiat,
      l$currency_crypto,
      l$wallet_address,
      l$merchant_nickname,
      l$merchant_id,
      l$merchant_trade_count,
      l$fiatAmountPerCrypto,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Adverts_getOne$adverts_getOne ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$advertStatus = advertStatus;
    final lOther$advertStatus = other.advertStatus;
    if (l$advertStatus != lOther$advertStatus) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$tradeType = tradeType;
    final lOther$tradeType = other.tradeType;
    if (l$tradeType != lOther$tradeType) {
      return false;
    }
    final l$rateFixed = rateFixed;
    final lOther$rateFixed = other.rateFixed;
    if (l$rateFixed != lOther$rateFixed) {
      return false;
    }
    final l$rateFloat = rateFloat;
    final lOther$rateFloat = other.rateFloat;
    if (l$rateFloat != lOther$rateFloat) {
      return false;
    }
    final l$isFloatRate = isFloatRate;
    final lOther$isFloatRate = other.isFloatRate;
    if (l$isFloatRate != lOther$isFloatRate) {
      return false;
    }
    final l$instructions = instructions;
    final lOther$instructions = other.instructions;
    if (l$instructions != lOther$instructions) {
      return false;
    }
    final l$limitLower = limitLower;
    final lOther$limitLower = other.limitLower;
    if (l$limitLower != lOther$limitLower) {
      return false;
    }
    final l$limitUpper = limitUpper;
    final lOther$limitUpper = other.limitUpper;
    if (l$limitUpper != lOther$limitUpper) {
      return false;
    }
    final l$currencyFiat = currencyFiat;
    final lOther$currencyFiat = other.currencyFiat;
    if (l$currencyFiat != lOther$currencyFiat) {
      return false;
    }
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$wallet_address = wallet_address;
    final lOther$wallet_address = other.wallet_address;
    if (l$wallet_address != lOther$wallet_address) {
      return false;
    }
    final l$merchant_nickname = merchant_nickname;
    final lOther$merchant_nickname = other.merchant_nickname;
    if (l$merchant_nickname != lOther$merchant_nickname) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$merchant_trade_count = merchant_trade_count;
    final lOther$merchant_trade_count = other.merchant_trade_count;
    if (l$merchant_trade_count != lOther$merchant_trade_count) {
      return false;
    }
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    final lOther$fiatAmountPerCrypto = other.fiatAmountPerCrypto;
    if (l$fiatAmountPerCrypto != lOther$fiatAmountPerCrypto) {
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

extension UtilityExtension$Query$Adverts_getOne$adverts_getOne
    on Query$Adverts_getOne$adverts_getOne {
  CopyWith$Query$Adverts_getOne$adverts_getOne<
          Query$Adverts_getOne$adverts_getOne>
      get copyWith => CopyWith$Query$Adverts_getOne$adverts_getOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Adverts_getOne$adverts_getOne<TRes> {
  factory CopyWith$Query$Adverts_getOne$adverts_getOne(
    Query$Adverts_getOne$adverts_getOne instance,
    TRes Function(Query$Adverts_getOne$adverts_getOne) then,
  ) = _CopyWithImpl$Query$Adverts_getOne$adverts_getOne;

  factory CopyWith$Query$Adverts_getOne$adverts_getOne.stub(TRes res) =
      _CopyWithStubImpl$Query$Adverts_getOne$adverts_getOne;

  TRes call({
    String? id,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    Enum$TradeType? tradeType,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    String? instructions,
    double? limitLower,
    double? limitUpper,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? merchant_nickname,
    double? merchant_id,
    double? merchant_trade_count,
    double? fiatAmountPerCrypto,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Adverts_getOne$adverts_getOne<TRes>
    implements CopyWith$Query$Adverts_getOne$adverts_getOne<TRes> {
  _CopyWithImpl$Query$Adverts_getOne$adverts_getOne(
    this._instance,
    this._then,
  );

  final Query$Adverts_getOne$adverts_getOne _instance;

  final TRes Function(Query$Adverts_getOne$adverts_getOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? advertStatus = _undefined,
    Object? duration = _undefined,
    Object? tradeType = _undefined,
    Object? rateFixed = _undefined,
    Object? rateFloat = _undefined,
    Object? isFloatRate = _undefined,
    Object? instructions = _undefined,
    Object? limitLower = _undefined,
    Object? limitUpper = _undefined,
    Object? currencyFiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? wallet_address = _undefined,
    Object? merchant_nickname = _undefined,
    Object? merchant_id = _undefined,
    Object? merchant_trade_count = _undefined,
    Object? fiatAmountPerCrypto = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Adverts_getOne$adverts_getOne(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        advertStatus: advertStatus == _undefined
            ? _instance.advertStatus
            : (advertStatus as Enum$AdvertStatus?),
        duration:
            duration == _undefined ? _instance.duration : (duration as String?),
        tradeType: tradeType == _undefined
            ? _instance.tradeType
            : (tradeType as Enum$TradeType?),
        rateFixed: rateFixed == _undefined
            ? _instance.rateFixed
            : (rateFixed as double?),
        rateFloat: rateFloat == _undefined
            ? _instance.rateFloat
            : (rateFloat as double?),
        isFloatRate: isFloatRate == _undefined
            ? _instance.isFloatRate
            : (isFloatRate as bool?),
        instructions: instructions == _undefined
            ? _instance.instructions
            : (instructions as String?),
        limitLower: limitLower == _undefined
            ? _instance.limitLower
            : (limitLower as double?),
        limitUpper: limitUpper == _undefined
            ? _instance.limitUpper
            : (limitUpper as double?),
        currencyFiat: currencyFiat == _undefined
            ? _instance.currencyFiat
            : (currencyFiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        wallet_address: wallet_address == _undefined
            ? _instance.wallet_address
            : (wallet_address as String?),
        merchant_nickname: merchant_nickname == _undefined
            ? _instance.merchant_nickname
            : (merchant_nickname as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        merchant_trade_count: merchant_trade_count == _undefined
            ? _instance.merchant_trade_count
            : (merchant_trade_count as double?),
        fiatAmountPerCrypto: fiatAmountPerCrypto == _undefined
            ? _instance.fiatAmountPerCrypto
            : (fiatAmountPerCrypto as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Adverts_getOne$adverts_getOne<TRes>
    implements CopyWith$Query$Adverts_getOne$adverts_getOne<TRes> {
  _CopyWithStubImpl$Query$Adverts_getOne$adverts_getOne(this._res);

  TRes _res;

  call({
    String? id,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    Enum$TradeType? tradeType,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    String? instructions,
    double? limitLower,
    double? limitUpper,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? merchant_nickname,
    double? merchant_id,
    double? merchant_trade_count,
    double? fiatAmountPerCrypto,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Adverts_getMerchantAdverts {
  factory Variables$Query$Adverts_getMerchantAdverts(
          {required Input$Advert_GetAllInput input}) =>
      Variables$Query$Adverts_getMerchantAdverts._({
        r'input': input,
      });

  Variables$Query$Adverts_getMerchantAdverts._(this._$data);

  factory Variables$Query$Adverts_getMerchantAdverts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Advert_GetAllInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$Adverts_getMerchantAdverts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Advert_GetAllInput get input =>
      (_$data['input'] as Input$Advert_GetAllInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Adverts_getMerchantAdverts<
          Variables$Query$Adverts_getMerchantAdverts>
      get copyWith => CopyWith$Variables$Query$Adverts_getMerchantAdverts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Adverts_getMerchantAdverts ||
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

abstract class CopyWith$Variables$Query$Adverts_getMerchantAdverts<TRes> {
  factory CopyWith$Variables$Query$Adverts_getMerchantAdverts(
    Variables$Query$Adverts_getMerchantAdverts instance,
    TRes Function(Variables$Query$Adverts_getMerchantAdverts) then,
  ) = _CopyWithImpl$Variables$Query$Adverts_getMerchantAdverts;

  factory CopyWith$Variables$Query$Adverts_getMerchantAdverts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Adverts_getMerchantAdverts;

  TRes call({Input$Advert_GetAllInput? input});
}

class _CopyWithImpl$Variables$Query$Adverts_getMerchantAdverts<TRes>
    implements CopyWith$Variables$Query$Adverts_getMerchantAdverts<TRes> {
  _CopyWithImpl$Variables$Query$Adverts_getMerchantAdverts(
    this._instance,
    this._then,
  );

  final Variables$Query$Adverts_getMerchantAdverts _instance;

  final TRes Function(Variables$Query$Adverts_getMerchantAdverts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$Adverts_getMerchantAdverts._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Advert_GetAllInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Adverts_getMerchantAdverts<TRes>
    implements CopyWith$Variables$Query$Adverts_getMerchantAdverts<TRes> {
  _CopyWithStubImpl$Variables$Query$Adverts_getMerchantAdverts(this._res);

  TRes _res;

  call({Input$Advert_GetAllInput? input}) => _res;
}

class Query$Adverts_getMerchantAdverts {
  Query$Adverts_getMerchantAdverts({
    required this.adverts_getMerchantAdverts,
    this.$__typename = 'Query',
  });

  factory Query$Adverts_getMerchantAdverts.fromJson(Map<String, dynamic> json) {
    final l$adverts_getMerchantAdverts = json['adverts_getMerchantAdverts'];
    final l$$__typename = json['__typename'];
    return Query$Adverts_getMerchantAdverts(
      adverts_getMerchantAdverts:
          (l$adverts_getMerchantAdverts as List<dynamic>)
              .map((e) =>
                  Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts
                      .fromJson((e as Map<String, dynamic>)))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts>
      adverts_getMerchantAdverts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adverts_getMerchantAdverts = adverts_getMerchantAdverts;
    _resultData['adverts_getMerchantAdverts'] =
        l$adverts_getMerchantAdverts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adverts_getMerchantAdverts = adverts_getMerchantAdverts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$adverts_getMerchantAdverts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Adverts_getMerchantAdverts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adverts_getMerchantAdverts = adverts_getMerchantAdverts;
    final lOther$adverts_getMerchantAdverts = other.adverts_getMerchantAdverts;
    if (l$adverts_getMerchantAdverts.length !=
        lOther$adverts_getMerchantAdverts.length) {
      return false;
    }
    for (int i = 0; i < l$adverts_getMerchantAdverts.length; i++) {
      final l$adverts_getMerchantAdverts$entry =
          l$adverts_getMerchantAdverts[i];
      final lOther$adverts_getMerchantAdverts$entry =
          lOther$adverts_getMerchantAdverts[i];
      if (l$adverts_getMerchantAdverts$entry !=
          lOther$adverts_getMerchantAdverts$entry) {
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

extension UtilityExtension$Query$Adverts_getMerchantAdverts
    on Query$Adverts_getMerchantAdverts {
  CopyWith$Query$Adverts_getMerchantAdverts<Query$Adverts_getMerchantAdverts>
      get copyWith => CopyWith$Query$Adverts_getMerchantAdverts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Adverts_getMerchantAdverts<TRes> {
  factory CopyWith$Query$Adverts_getMerchantAdverts(
    Query$Adverts_getMerchantAdverts instance,
    TRes Function(Query$Adverts_getMerchantAdverts) then,
  ) = _CopyWithImpl$Query$Adverts_getMerchantAdverts;

  factory CopyWith$Query$Adverts_getMerchantAdverts.stub(TRes res) =
      _CopyWithStubImpl$Query$Adverts_getMerchantAdverts;

  TRes call({
    List<Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts>?
        adverts_getMerchantAdverts,
    String? $__typename,
  });
  TRes adverts_getMerchantAdverts(
      Iterable<Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts> Function(
              Iterable<
                  CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
                      Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts>>)
          _fn);
}

class _CopyWithImpl$Query$Adverts_getMerchantAdverts<TRes>
    implements CopyWith$Query$Adverts_getMerchantAdverts<TRes> {
  _CopyWithImpl$Query$Adverts_getMerchantAdverts(
    this._instance,
    this._then,
  );

  final Query$Adverts_getMerchantAdverts _instance;

  final TRes Function(Query$Adverts_getMerchantAdverts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adverts_getMerchantAdverts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Adverts_getMerchantAdverts(
        adverts_getMerchantAdverts: adverts_getMerchantAdverts == _undefined ||
                adverts_getMerchantAdverts == null
            ? _instance.adverts_getMerchantAdverts
            : (adverts_getMerchantAdverts as List<
                Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes adverts_getMerchantAdverts(
          Iterable<Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts> Function(
                  Iterable<
                      CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
                          Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts>>)
              _fn) =>
      call(
          adverts_getMerchantAdverts: _fn(_instance.adverts_getMerchantAdverts
              .map((e) =>
                  CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Adverts_getMerchantAdverts<TRes>
    implements CopyWith$Query$Adverts_getMerchantAdverts<TRes> {
  _CopyWithStubImpl$Query$Adverts_getMerchantAdverts(this._res);

  TRes _res;

  call({
    List<Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts>?
        adverts_getMerchantAdverts,
    String? $__typename,
  }) =>
      _res;

  adverts_getMerchantAdverts(_fn) => _res;
}

const documentNodeQueryAdverts_getMerchantAdverts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Adverts_getMerchantAdverts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Advert_GetAllInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'adverts_getMerchantAdverts'),
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
            name: NameNode(value: 'advertStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFixed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rateFloat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFloatRate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'instructions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitLower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'limitUpper'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencyFiat'),
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
            name: NameNode(value: 'wallet_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchant_nickname'),
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
            name: NameNode(value: 'merchant_trade_count'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wallet_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fiatAmountPerCrypto'),
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
Query$Adverts_getMerchantAdverts _parserFn$Query$Adverts_getMerchantAdverts(
        Map<String, dynamic> data) =>
    Query$Adverts_getMerchantAdverts.fromJson(data);
typedef OnQueryComplete$Query$Adverts_getMerchantAdverts = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$Adverts_getMerchantAdverts?,
);

class Options$Query$Adverts_getMerchantAdverts
    extends graphql.QueryOptions<Query$Adverts_getMerchantAdverts> {
  Options$Query$Adverts_getMerchantAdverts({
    String? operationName,
    required Variables$Query$Adverts_getMerchantAdverts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Adverts_getMerchantAdverts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Adverts_getMerchantAdverts? onComplete,
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
                        : _parserFn$Query$Adverts_getMerchantAdverts(data),
                  ),
          onError: onError,
          document: documentNodeQueryAdverts_getMerchantAdverts,
          parserFn: _parserFn$Query$Adverts_getMerchantAdverts,
        );

  final OnQueryComplete$Query$Adverts_getMerchantAdverts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Adverts_getMerchantAdverts
    extends graphql.WatchQueryOptions<Query$Adverts_getMerchantAdverts> {
  WatchOptions$Query$Adverts_getMerchantAdverts({
    String? operationName,
    required Variables$Query$Adverts_getMerchantAdverts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Adverts_getMerchantAdverts? typedOptimisticResult,
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
          document: documentNodeQueryAdverts_getMerchantAdverts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Adverts_getMerchantAdverts,
        );
}

class FetchMoreOptions$Query$Adverts_getMerchantAdverts
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Adverts_getMerchantAdverts({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Adverts_getMerchantAdverts variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryAdverts_getMerchantAdverts,
        );
}

extension ClientExtension$Query$Adverts_getMerchantAdverts
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Adverts_getMerchantAdverts>>
      query$Adverts_getMerchantAdverts(
              Options$Query$Adverts_getMerchantAdverts options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$Adverts_getMerchantAdverts>
      watchQuery$Adverts_getMerchantAdverts(
              WatchOptions$Query$Adverts_getMerchantAdverts options) =>
          this.watchQuery(options);
  void writeQuery$Adverts_getMerchantAdverts({
    required Query$Adverts_getMerchantAdverts data,
    required Variables$Query$Adverts_getMerchantAdverts variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryAdverts_getMerchantAdverts),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Adverts_getMerchantAdverts? readQuery$Adverts_getMerchantAdverts({
    required Variables$Query$Adverts_getMerchantAdverts variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryAdverts_getMerchantAdverts),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$Adverts_getMerchantAdverts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Adverts_getMerchantAdverts>
    useQuery$Adverts_getMerchantAdverts(
            Options$Query$Adverts_getMerchantAdverts options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Adverts_getMerchantAdverts>
    useWatchQuery$Adverts_getMerchantAdverts(
            WatchOptions$Query$Adverts_getMerchantAdverts options) =>
        graphql_flutter.useWatchQuery(options);

class Query$Adverts_getMerchantAdverts$Widget
    extends graphql_flutter.Query<Query$Adverts_getMerchantAdverts> {
  Query$Adverts_getMerchantAdverts$Widget({
    widgets.Key? key,
    required Options$Query$Adverts_getMerchantAdverts options,
    required graphql_flutter.QueryBuilder<Query$Adverts_getMerchantAdverts>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts {
  Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts({
    required this.id,
    this.advertStatus,
    this.duration,
    this.tradeType,
    this.rateFixed,
    this.rateFloat,
    this.isFloatRate,
    this.instructions,
    this.limitLower,
    this.limitUpper,
    this.currencyFiat,
    this.currency_crypto,
    this.wallet_address,
    this.merchant_nickname,
    this.merchant_id,
    this.merchant_trade_count,
    this.fiatAmountPerCrypto,
    this.$__typename = 'Advert_GetResponse',
  });

  factory Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$advertStatus = json['advertStatus'];
    final l$duration = json['duration'];
    final l$tradeType = json['tradeType'];
    final l$rateFixed = json['rateFixed'];
    final l$rateFloat = json['rateFloat'];
    final l$isFloatRate = json['isFloatRate'];
    final l$instructions = json['instructions'];
    final l$limitLower = json['limitLower'];
    final l$limitUpper = json['limitUpper'];
    final l$currencyFiat = json['currencyFiat'];
    final l$currency_crypto = json['currency_crypto'];
    final l$wallet_address = json['wallet_address'];
    final l$merchant_nickname = json['merchant_nickname'];
    final l$merchant_id = json['merchant_id'];
    final l$merchant_trade_count = json['merchant_trade_count'];
    final l$fiatAmountPerCrypto = json['fiatAmountPerCrypto'];
    final l$$__typename = json['__typename'];
    return Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts(
      id: (l$id as String),
      advertStatus: l$advertStatus == null
          ? null
          : fromJson$Enum$AdvertStatus((l$advertStatus as String)),
      duration: (l$duration as String?),
      tradeType: l$tradeType == null
          ? null
          : fromJson$Enum$TradeType((l$tradeType as String)),
      rateFixed: (l$rateFixed as num?)?.toDouble(),
      rateFloat: (l$rateFloat as num?)?.toDouble(),
      isFloatRate: (l$isFloatRate as bool?),
      instructions: (l$instructions as String?),
      limitLower: (l$limitLower as num?)?.toDouble(),
      limitUpper: (l$limitUpper as num?)?.toDouble(),
      currencyFiat: l$currencyFiat == null
          ? null
          : fromJson$Enum$Country((l$currencyFiat as String)),
      currency_crypto: (l$currency_crypto as String?),
      wallet_address: (l$wallet_address as String?),
      merchant_nickname: (l$merchant_nickname as String?),
      merchant_id: (l$merchant_id as num?)?.toDouble(),
      merchant_trade_count: (l$merchant_trade_count as num?)?.toDouble(),
      fiatAmountPerCrypto: (l$fiatAmountPerCrypto as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$AdvertStatus? advertStatus;

  final String? duration;

  final Enum$TradeType? tradeType;

  final double? rateFixed;

  final double? rateFloat;

  final bool? isFloatRate;

  final String? instructions;

  final double? limitLower;

  final double? limitUpper;

  final Enum$Country? currencyFiat;

  final String? currency_crypto;

  final String? wallet_address;

  final String? merchant_nickname;

  final double? merchant_id;

  final double? merchant_trade_count;

  final double? fiatAmountPerCrypto;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$advertStatus = advertStatus;
    _resultData['advertStatus'] = l$advertStatus == null
        ? null
        : toJson$Enum$AdvertStatus(l$advertStatus);
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$tradeType = tradeType;
    _resultData['tradeType'] =
        l$tradeType == null ? null : toJson$Enum$TradeType(l$tradeType);
    final l$rateFixed = rateFixed;
    _resultData['rateFixed'] = l$rateFixed;
    final l$rateFloat = rateFloat;
    _resultData['rateFloat'] = l$rateFloat;
    final l$isFloatRate = isFloatRate;
    _resultData['isFloatRate'] = l$isFloatRate;
    final l$instructions = instructions;
    _resultData['instructions'] = l$instructions;
    final l$limitLower = limitLower;
    _resultData['limitLower'] = l$limitLower;
    final l$limitUpper = limitUpper;
    _resultData['limitUpper'] = l$limitUpper;
    final l$currencyFiat = currencyFiat;
    _resultData['currencyFiat'] =
        l$currencyFiat == null ? null : toJson$Enum$Country(l$currencyFiat);
    final l$currency_crypto = currency_crypto;
    _resultData['currency_crypto'] = l$currency_crypto;
    final l$wallet_address = wallet_address;
    _resultData['wallet_address'] = l$wallet_address;
    final l$merchant_nickname = merchant_nickname;
    _resultData['merchant_nickname'] = l$merchant_nickname;
    final l$merchant_id = merchant_id;
    _resultData['merchant_id'] = l$merchant_id;
    final l$merchant_trade_count = merchant_trade_count;
    _resultData['merchant_trade_count'] = l$merchant_trade_count;
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    _resultData['fiatAmountPerCrypto'] = l$fiatAmountPerCrypto;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$advertStatus = advertStatus;
    final l$duration = duration;
    final l$tradeType = tradeType;
    final l$rateFixed = rateFixed;
    final l$rateFloat = rateFloat;
    final l$isFloatRate = isFloatRate;
    final l$instructions = instructions;
    final l$limitLower = limitLower;
    final l$limitUpper = limitUpper;
    final l$currencyFiat = currencyFiat;
    final l$currency_crypto = currency_crypto;
    final l$wallet_address = wallet_address;
    final l$merchant_nickname = merchant_nickname;
    final l$merchant_id = merchant_id;
    final l$merchant_trade_count = merchant_trade_count;
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$advertStatus,
      l$duration,
      l$tradeType,
      l$rateFixed,
      l$rateFloat,
      l$isFloatRate,
      l$instructions,
      l$limitLower,
      l$limitUpper,
      l$currencyFiat,
      l$currency_crypto,
      l$wallet_address,
      l$merchant_nickname,
      l$merchant_id,
      l$merchant_trade_count,
      l$fiatAmountPerCrypto,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$advertStatus = advertStatus;
    final lOther$advertStatus = other.advertStatus;
    if (l$advertStatus != lOther$advertStatus) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$tradeType = tradeType;
    final lOther$tradeType = other.tradeType;
    if (l$tradeType != lOther$tradeType) {
      return false;
    }
    final l$rateFixed = rateFixed;
    final lOther$rateFixed = other.rateFixed;
    if (l$rateFixed != lOther$rateFixed) {
      return false;
    }
    final l$rateFloat = rateFloat;
    final lOther$rateFloat = other.rateFloat;
    if (l$rateFloat != lOther$rateFloat) {
      return false;
    }
    final l$isFloatRate = isFloatRate;
    final lOther$isFloatRate = other.isFloatRate;
    if (l$isFloatRate != lOther$isFloatRate) {
      return false;
    }
    final l$instructions = instructions;
    final lOther$instructions = other.instructions;
    if (l$instructions != lOther$instructions) {
      return false;
    }
    final l$limitLower = limitLower;
    final lOther$limitLower = other.limitLower;
    if (l$limitLower != lOther$limitLower) {
      return false;
    }
    final l$limitUpper = limitUpper;
    final lOther$limitUpper = other.limitUpper;
    if (l$limitUpper != lOther$limitUpper) {
      return false;
    }
    final l$currencyFiat = currencyFiat;
    final lOther$currencyFiat = other.currencyFiat;
    if (l$currencyFiat != lOther$currencyFiat) {
      return false;
    }
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$wallet_address = wallet_address;
    final lOther$wallet_address = other.wallet_address;
    if (l$wallet_address != lOther$wallet_address) {
      return false;
    }
    final l$merchant_nickname = merchant_nickname;
    final lOther$merchant_nickname = other.merchant_nickname;
    if (l$merchant_nickname != lOther$merchant_nickname) {
      return false;
    }
    final l$merchant_id = merchant_id;
    final lOther$merchant_id = other.merchant_id;
    if (l$merchant_id != lOther$merchant_id) {
      return false;
    }
    final l$merchant_trade_count = merchant_trade_count;
    final lOther$merchant_trade_count = other.merchant_trade_count;
    if (l$merchant_trade_count != lOther$merchant_trade_count) {
      return false;
    }
    final l$fiatAmountPerCrypto = fiatAmountPerCrypto;
    final lOther$fiatAmountPerCrypto = other.fiatAmountPerCrypto;
    if (l$fiatAmountPerCrypto != lOther$fiatAmountPerCrypto) {
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

extension UtilityExtension$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts
    on Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts {
  CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
          Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts>
      get copyWith =>
          CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
    TRes> {
  factory CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts(
    Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts instance,
    TRes Function(Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts)
        then,
  ) = _CopyWithImpl$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts;

  factory CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts;

  TRes call({
    String? id,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    Enum$TradeType? tradeType,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    String? instructions,
    double? limitLower,
    double? limitUpper,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? merchant_nickname,
    double? merchant_id,
    double? merchant_trade_count,
    double? fiatAmountPerCrypto,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
        TRes>
    implements
        CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
            TRes> {
  _CopyWithImpl$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts(
    this._instance,
    this._then,
  );

  final Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts _instance;

  final TRes Function(
      Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? advertStatus = _undefined,
    Object? duration = _undefined,
    Object? tradeType = _undefined,
    Object? rateFixed = _undefined,
    Object? rateFloat = _undefined,
    Object? isFloatRate = _undefined,
    Object? instructions = _undefined,
    Object? limitLower = _undefined,
    Object? limitUpper = _undefined,
    Object? currencyFiat = _undefined,
    Object? currency_crypto = _undefined,
    Object? wallet_address = _undefined,
    Object? merchant_nickname = _undefined,
    Object? merchant_id = _undefined,
    Object? merchant_trade_count = _undefined,
    Object? fiatAmountPerCrypto = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        advertStatus: advertStatus == _undefined
            ? _instance.advertStatus
            : (advertStatus as Enum$AdvertStatus?),
        duration:
            duration == _undefined ? _instance.duration : (duration as String?),
        tradeType: tradeType == _undefined
            ? _instance.tradeType
            : (tradeType as Enum$TradeType?),
        rateFixed: rateFixed == _undefined
            ? _instance.rateFixed
            : (rateFixed as double?),
        rateFloat: rateFloat == _undefined
            ? _instance.rateFloat
            : (rateFloat as double?),
        isFloatRate: isFloatRate == _undefined
            ? _instance.isFloatRate
            : (isFloatRate as bool?),
        instructions: instructions == _undefined
            ? _instance.instructions
            : (instructions as String?),
        limitLower: limitLower == _undefined
            ? _instance.limitLower
            : (limitLower as double?),
        limitUpper: limitUpper == _undefined
            ? _instance.limitUpper
            : (limitUpper as double?),
        currencyFiat: currencyFiat == _undefined
            ? _instance.currencyFiat
            : (currencyFiat as Enum$Country?),
        currency_crypto: currency_crypto == _undefined
            ? _instance.currency_crypto
            : (currency_crypto as String?),
        wallet_address: wallet_address == _undefined
            ? _instance.wallet_address
            : (wallet_address as String?),
        merchant_nickname: merchant_nickname == _undefined
            ? _instance.merchant_nickname
            : (merchant_nickname as String?),
        merchant_id: merchant_id == _undefined
            ? _instance.merchant_id
            : (merchant_id as double?),
        merchant_trade_count: merchant_trade_count == _undefined
            ? _instance.merchant_trade_count
            : (merchant_trade_count as double?),
        fiatAmountPerCrypto: fiatAmountPerCrypto == _undefined
            ? _instance.fiatAmountPerCrypto
            : (fiatAmountPerCrypto as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
        TRes>
    implements
        CopyWith$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts<
            TRes> {
  _CopyWithStubImpl$Query$Adverts_getMerchantAdverts$adverts_getMerchantAdverts(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$AdvertStatus? advertStatus,
    String? duration,
    Enum$TradeType? tradeType,
    double? rateFixed,
    double? rateFloat,
    bool? isFloatRate,
    String? instructions,
    double? limitLower,
    double? limitUpper,
    Enum$Country? currencyFiat,
    String? currency_crypto,
    String? wallet_address,
    String? merchant_nickname,
    double? merchant_id,
    double? merchant_trade_count,
    double? fiatAmountPerCrypto,
    String? $__typename,
  }) =>
      _res;
}
