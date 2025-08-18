import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$FxRate_GetAll {
  Query$FxRate_GetAll({
    required this.fxRate_GetAll,
    this.$__typename = 'Query',
  });

  factory Query$FxRate_GetAll.fromJson(Map<String, dynamic> json) {
    final l$fxrateGetall = json['fxRate_GetAll'];
    final l$$__typename = json['__typename'];
    return Query$FxRate_GetAll(
      fxRate_GetAll: Query$FxRate_GetAll$fxRate_GetAll.fromJson(
          (l$fxrateGetall as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FxRate_GetAll$fxRate_GetAll fxRate_GetAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$fxrateGetall = fxRate_GetAll;
    resultData['fxRate_GetAll'] = l$fxrateGetall.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$fxrateGetall = fxRate_GetAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fxrateGetall,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FxRate_GetAll || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fxrateGetall = fxRate_GetAll;
    final lother$fxrateGetall = other.fxRate_GetAll;
    if (l$fxrateGetall != lother$fxrateGetall) {
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

extension UtilityExtension$Query$FxRate_GetAll on Query$FxRate_GetAll {
  CopyWith$Query$FxRate_GetAll<Query$FxRate_GetAll> get copyWith =>
      CopyWith$Query$FxRate_GetAll(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FxRate_GetAll<TRes> {
  factory CopyWith$Query$FxRate_GetAll(
    Query$FxRate_GetAll instance,
    TRes Function(Query$FxRate_GetAll) then,
  ) = _CopyWithImpl$Query$FxRate_GetAll;

  factory CopyWith$Query$FxRate_GetAll.stub(TRes res) =
      _CopyWithStubImpl$Query$FxRate_GetAll;

  TRes call({
    Query$FxRate_GetAll$fxRate_GetAll? fxRate_GetAll,
    String? $__typename,
  });
  CopyWith$Query$FxRate_GetAll$fxRate_GetAll<TRes> get fxRate_GetAll;
}

class _CopyWithImpl$Query$FxRate_GetAll<TRes>
    implements CopyWith$Query$FxRate_GetAll<TRes> {
  _CopyWithImpl$Query$FxRate_GetAll(
    this._instance,
    this._then,
  );

  final Query$FxRate_GetAll _instance;

  final TRes Function(Query$FxRate_GetAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? fxRate_GetAll = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FxRate_GetAll(
        fxRate_GetAll: fxRate_GetAll == _undefined || fxRate_GetAll == null
            ? _instance.fxRate_GetAll
            : (fxRate_GetAll as Query$FxRate_GetAll$fxRate_GetAll),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$FxRate_GetAll$fxRate_GetAll<TRes> get fxRate_GetAll {
    final local$fxrateGetall = _instance.fxRate_GetAll;
    return CopyWith$Query$FxRate_GetAll$fxRate_GetAll(
        local$fxrateGetall, (e) => call(fxRate_GetAll: e));
  }
}

class _CopyWithStubImpl$Query$FxRate_GetAll<TRes>
    implements CopyWith$Query$FxRate_GetAll<TRes> {
  _CopyWithStubImpl$Query$FxRate_GetAll(this._res);

  final TRes _res;

  @override
  call({
    Query$FxRate_GetAll$fxRate_GetAll? fxRate_GetAll,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$FxRate_GetAll$fxRate_GetAll<TRes> get fxRate_GetAll =>
      CopyWith$Query$FxRate_GetAll$fxRate_GetAll.stub(_res);
}

const documentNodeQueryFxRate_GetAll = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FxRate_GetAll'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fxRate_GetAll'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'GH'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'NG'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'KE'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'UG'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'MW'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'TZ'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ZA'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'USD'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'EUR'),
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
Query$FxRate_GetAll _parserFn$Query$FxRate_GetAll(Map<String, dynamic> data) =>
    Query$FxRate_GetAll.fromJson(data);
typedef OnQueryComplete$Query$FxRate_GetAll = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FxRate_GetAll?,
);

class Options$Query$FxRate_GetAll
    extends graphql.QueryOptions<Query$FxRate_GetAll> {
  Options$Query$FxRate_GetAll({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$FxRate_GetAll? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$FxRate_GetAll? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$FxRate_GetAll(data),
                  ),
          document: documentNodeQueryFxRate_GetAll,
          parserFn: _parserFn$Query$FxRate_GetAll,
        );

  final OnQueryComplete$Query$FxRate_GetAll? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FxRate_GetAll
    extends graphql.WatchQueryOptions<Query$FxRate_GetAll> {
  WatchOptions$Query$FxRate_GetAll({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$FxRate_GetAll? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryFxRate_GetAll,
          parserFn: _parserFn$Query$FxRate_GetAll,
        );
}

class FetchMoreOptions$Query$FxRate_GetAll extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FxRate_GetAll(
      {required super.updateQuery})
      : super(
          document: documentNodeQueryFxRate_GetAll,
        );
}

extension ClientExtension$Query$FxRate_GetAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FxRate_GetAll>> query$FxRate_GetAll(
          [Options$Query$FxRate_GetAll? options]) async =>
      await query(options ?? Options$Query$FxRate_GetAll());
  graphql.ObservableQuery<Query$FxRate_GetAll> watchQuery$FxRate_GetAll(
          [WatchOptions$Query$FxRate_GetAll? options]) =>
      watchQuery(options ?? WatchOptions$Query$FxRate_GetAll());
  void writeQuery$FxRate_GetAll({
    required Query$FxRate_GetAll data,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFxRate_GetAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FxRate_GetAll? readQuery$FxRate_GetAll({bool optimistic = true}) {
    final result = readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFxRate_GetAll)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FxRate_GetAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FxRate_GetAll> useQuery$FxRate_GetAll(
        [Options$Query$FxRate_GetAll? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FxRate_GetAll());
graphql.ObservableQuery<Query$FxRate_GetAll> useWatchQuery$FxRate_GetAll(
        [WatchOptions$Query$FxRate_GetAll? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FxRate_GetAll());

class Query$FxRate_GetAll$Widget
    extends graphql_flutter.Query<Query$FxRate_GetAll> {
  Query$FxRate_GetAll$Widget({
    super.key,
    Options$Query$FxRate_GetAll? options,
    required super.builder,
  }) : super(
          options: options ?? Options$Query$FxRate_GetAll(),
        );
}

class Query$FxRate_GetAll$fxRate_GetAll {
  Query$FxRate_GetAll$fxRate_GetAll({
    required this.GH,
    required this.NG,
    required this.KE,
    required this.UG,
    required this.MW,
    required this.TZ,
    required this.ZA,
    required this.USD,
    required this.EUR,
    this.$__typename = 'ExchangeRate_Response',
  });

  factory Query$FxRate_GetAll$fxRate_GetAll.fromJson(
      Map<String, dynamic> json) {
    final l$GH = json['GH'];
    final l$NG = json['NG'];
    final l$KE = json['KE'];
    final l$UG = json['UG'];
    final l$MW = json['MW'];
    final l$TZ = json['TZ'];
    final l$ZA = json['ZA'];
    final l$USD = json['USD'];
    final l$EUR = json['EUR'];
    final l$$__typename = json['__typename'];
    return Query$FxRate_GetAll$fxRate_GetAll(
      GH: (l$GH as num).toDouble(),
      NG: (l$NG as num).toDouble(),
      KE: (l$KE as num).toDouble(),
      UG: (l$UG as num).toDouble(),
      MW: (l$MW as num).toDouble(),
      TZ: (l$TZ as num).toDouble(),
      ZA: (l$ZA as num).toDouble(),
      USD: (l$USD as num).toDouble(),
      EUR: (l$EUR as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double GH;

  final double NG;

  final double KE;

  final double UG;

  final double MW;

  final double TZ;

  final double ZA;

  final double USD;

  final double EUR;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$GH = GH;
    resultData['GH'] = l$GH;
    final l$NG = NG;
    resultData['NG'] = l$NG;
    final l$KE = KE;
    resultData['KE'] = l$KE;
    final l$UG = UG;
    resultData['UG'] = l$UG;
    final l$MW = MW;
    resultData['MW'] = l$MW;
    final l$TZ = TZ;
    resultData['TZ'] = l$TZ;
    final l$ZA = ZA;
    resultData['ZA'] = l$ZA;
    final l$USD = USD;
    resultData['USD'] = l$USD;
    final l$EUR = EUR;
    resultData['EUR'] = l$EUR;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$GH = GH;
    final l$NG = NG;
    final l$KE = KE;
    final l$UG = UG;
    final l$MW = MW;
    final l$TZ = TZ;
    final l$ZA = ZA;
    final l$USD = USD;
    final l$EUR = EUR;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$GH,
      l$NG,
      l$KE,
      l$UG,
      l$MW,
      l$TZ,
      l$ZA,
      l$USD,
      l$EUR,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FxRate_GetAll$fxRate_GetAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$GH = GH;
    final lOther$GH = other.GH;
    if (l$GH != lOther$GH) {
      return false;
    }
    final l$NG = NG;
    final lOther$NG = other.NG;
    if (l$NG != lOther$NG) {
      return false;
    }
    final l$KE = KE;
    final lOther$KE = other.KE;
    if (l$KE != lOther$KE) {
      return false;
    }
    final l$UG = UG;
    final lOther$UG = other.UG;
    if (l$UG != lOther$UG) {
      return false;
    }
    final l$MW = MW;
    final lOther$MW = other.MW;
    if (l$MW != lOther$MW) {
      return false;
    }
    final l$TZ = TZ;
    final lOther$TZ = other.TZ;
    if (l$TZ != lOther$TZ) {
      return false;
    }
    final l$ZA = ZA;
    final lOther$ZA = other.ZA;
    if (l$ZA != lOther$ZA) {
      return false;
    }
    final l$USD = USD;
    final lOther$USD = other.USD;
    if (l$USD != lOther$USD) {
      return false;
    }
    final l$EUR = EUR;
    final lOther$EUR = other.EUR;
    if (l$EUR != lOther$EUR) {
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

extension UtilityExtension$Query$FxRate_GetAll$fxRate_GetAll
    on Query$FxRate_GetAll$fxRate_GetAll {
  CopyWith$Query$FxRate_GetAll$fxRate_GetAll<Query$FxRate_GetAll$fxRate_GetAll>
      get copyWith => CopyWith$Query$FxRate_GetAll$fxRate_GetAll(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FxRate_GetAll$fxRate_GetAll<TRes> {
  factory CopyWith$Query$FxRate_GetAll$fxRate_GetAll(
    Query$FxRate_GetAll$fxRate_GetAll instance,
    TRes Function(Query$FxRate_GetAll$fxRate_GetAll) then,
  ) = _CopyWithImpl$Query$FxRate_GetAll$fxRate_GetAll;

  factory CopyWith$Query$FxRate_GetAll$fxRate_GetAll.stub(TRes res) =
      _CopyWithStubImpl$Query$FxRate_GetAll$fxRate_GetAll;

  TRes call({
    double? GH,
    double? NG,
    double? KE,
    double? UG,
    double? MW,
    double? TZ,
    double? ZA,
    double? USD,
    double? EUR,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FxRate_GetAll$fxRate_GetAll<TRes>
    implements CopyWith$Query$FxRate_GetAll$fxRate_GetAll<TRes> {
  _CopyWithImpl$Query$FxRate_GetAll$fxRate_GetAll(
    this._instance,
    this._then,
  );

  final Query$FxRate_GetAll$fxRate_GetAll _instance;

  final TRes Function(Query$FxRate_GetAll$fxRate_GetAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? GH = _undefined,
    Object? NG = _undefined,
    Object? KE = _undefined,
    Object? UG = _undefined,
    Object? MW = _undefined,
    Object? TZ = _undefined,
    Object? ZA = _undefined,
    Object? USD = _undefined,
    Object? EUR = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FxRate_GetAll$fxRate_GetAll(
        GH: GH == _undefined || GH == null ? _instance.GH : (GH as double),
        NG: NG == _undefined || NG == null ? _instance.NG : (NG as double),
        KE: KE == _undefined || KE == null ? _instance.KE : (KE as double),
        UG: UG == _undefined || UG == null ? _instance.UG : (UG as double),
        MW: MW == _undefined || MW == null ? _instance.MW : (MW as double),
        TZ: TZ == _undefined || TZ == null ? _instance.TZ : (TZ as double),
        ZA: ZA == _undefined || ZA == null ? _instance.ZA : (ZA as double),
        USD: USD == _undefined || USD == null ? _instance.USD : (USD as double),
        EUR: EUR == _undefined || EUR == null ? _instance.EUR : (EUR as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FxRate_GetAll$fxRate_GetAll<TRes>
    implements CopyWith$Query$FxRate_GetAll$fxRate_GetAll<TRes> {
  _CopyWithStubImpl$Query$FxRate_GetAll$fxRate_GetAll(this._res);

  final TRes _res;

  @override
  call({
    double? GH,
    double? NG,
    double? KE,
    double? UG,
    double? MW,
    double? TZ,
    double? ZA,
    double? USD,
    double? EUR,
    String? $__typename,
  }) =>
      _res;
}
