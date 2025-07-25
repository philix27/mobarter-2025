import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$static_getTokens {
  Query$static_getTokens({
    required this.static_getTokens,
    this.$__typename = 'Query',
  });

  factory Query$static_getTokens.fromJson(Map<String, dynamic> json) {
    final l$static_getTokens = json['static_getTokens'];
    final l$$__typename = json['__typename'];
    return Query$static_getTokens(
      static_getTokens: (l$static_getTokens as List<dynamic>)
          .map((e) => Query$static_getTokens$static_getTokens.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$static_getTokens$static_getTokens> static_getTokens;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$static_getTokens = static_getTokens;
    _resultData['static_getTokens'] =
        l$static_getTokens.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$static_getTokens = static_getTokens;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$static_getTokens.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getTokens || runtimeType != other.runtimeType) {
      return false;
    }
    final l$static_getTokens = static_getTokens;
    final lOther$static_getTokens = other.static_getTokens;
    if (l$static_getTokens.length != lOther$static_getTokens.length) {
      return false;
    }
    for (int i = 0; i < l$static_getTokens.length; i++) {
      final l$static_getTokens$entry = l$static_getTokens[i];
      final lOther$static_getTokens$entry = lOther$static_getTokens[i];
      if (l$static_getTokens$entry != lOther$static_getTokens$entry) {
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

extension UtilityExtension$Query$static_getTokens on Query$static_getTokens {
  CopyWith$Query$static_getTokens<Query$static_getTokens> get copyWith =>
      CopyWith$Query$static_getTokens(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$static_getTokens<TRes> {
  factory CopyWith$Query$static_getTokens(
    Query$static_getTokens instance,
    TRes Function(Query$static_getTokens) then,
  ) = _CopyWithImpl$Query$static_getTokens;

  factory CopyWith$Query$static_getTokens.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getTokens;

  TRes call({
    List<Query$static_getTokens$static_getTokens>? static_getTokens,
    String? $__typename,
  });
  TRes static_getTokens(
      Iterable<Query$static_getTokens$static_getTokens> Function(
              Iterable<
                  CopyWith$Query$static_getTokens$static_getTokens<
                      Query$static_getTokens$static_getTokens>>)
          _fn);
}

class _CopyWithImpl$Query$static_getTokens<TRes>
    implements CopyWith$Query$static_getTokens<TRes> {
  _CopyWithImpl$Query$static_getTokens(
    this._instance,
    this._then,
  );

  final Query$static_getTokens _instance;

  final TRes Function(Query$static_getTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? static_getTokens = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getTokens(
        static_getTokens:
            static_getTokens == _undefined || static_getTokens == null
                ? _instance.static_getTokens
                : (static_getTokens
                    as List<Query$static_getTokens$static_getTokens>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes static_getTokens(
          Iterable<Query$static_getTokens$static_getTokens> Function(
                  Iterable<
                      CopyWith$Query$static_getTokens$static_getTokens<
                          Query$static_getTokens$static_getTokens>>)
              _fn) =>
      call(
          static_getTokens: _fn(_instance.static_getTokens
              .map((e) => CopyWith$Query$static_getTokens$static_getTokens(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$static_getTokens<TRes>
    implements CopyWith$Query$static_getTokens<TRes> {
  _CopyWithStubImpl$Query$static_getTokens(this._res);

  TRes _res;

  call({
    List<Query$static_getTokens$static_getTokens>? static_getTokens,
    String? $__typename,
  }) =>
      _res;

  static_getTokens(_fn) => _res;
}

const documentNodeQuerystatic_getTokens = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'static_getTokens'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'static_getTokens'),
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
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'decimals'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isBuyable'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isPayable'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'symbol'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'logoUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'chainId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'priceUSD'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'priceNGN'),
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
Query$static_getTokens _parserFn$Query$static_getTokens(
        Map<String, dynamic> data) =>
    Query$static_getTokens.fromJson(data);
typedef OnQueryComplete$Query$static_getTokens = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$static_getTokens?,
);

class Options$Query$static_getTokens
    extends graphql.QueryOptions<Query$static_getTokens> {
  Options$Query$static_getTokens({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getTokens? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$static_getTokens? onComplete,
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
                        : _parserFn$Query$static_getTokens(data),
                  ),
          onError: onError,
          document: documentNodeQuerystatic_getTokens,
          parserFn: _parserFn$Query$static_getTokens,
        );

  final OnQueryComplete$Query$static_getTokens? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$static_getTokens
    extends graphql.WatchQueryOptions<Query$static_getTokens> {
  WatchOptions$Query$static_getTokens({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getTokens? typedOptimisticResult,
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
          document: documentNodeQuerystatic_getTokens,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$static_getTokens,
        );
}

class FetchMoreOptions$Query$static_getTokens extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$static_getTokens(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerystatic_getTokens,
        );
}

extension ClientExtension$Query$static_getTokens on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$static_getTokens>> query$static_getTokens(
          [Options$Query$static_getTokens? options]) async =>
      await this.query(options ?? Options$Query$static_getTokens());
  graphql.ObservableQuery<Query$static_getTokens> watchQuery$static_getTokens(
          [WatchOptions$Query$static_getTokens? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$static_getTokens());
  void writeQuery$static_getTokens({
    required Query$static_getTokens data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerystatic_getTokens)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$static_getTokens? readQuery$static_getTokens({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerystatic_getTokens)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$static_getTokens.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$static_getTokens>
    useQuery$static_getTokens([Options$Query$static_getTokens? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$static_getTokens());
graphql.ObservableQuery<Query$static_getTokens> useWatchQuery$static_getTokens(
        [WatchOptions$Query$static_getTokens? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$static_getTokens());

class Query$static_getTokens$Widget
    extends graphql_flutter.Query<Query$static_getTokens> {
  Query$static_getTokens$Widget({
    widgets.Key? key,
    Options$Query$static_getTokens? options,
    required graphql_flutter.QueryBuilder<Query$static_getTokens> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$static_getTokens(),
          builder: builder,
        );
}

class Query$static_getTokens$static_getTokens {
  Query$static_getTokens$static_getTokens({
    required this.name,
    required this.address,
    required this.decimals,
    this.isBuyable,
    this.isPayable,
    required this.symbol,
    required this.logoUrl,
    required this.chainId,
    required this.priceUSD,
    required this.priceNGN,
    this.$__typename = 'Static_GetTokenResponse',
  });

  factory Query$static_getTokens$static_getTokens.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$address = json['address'];
    final l$decimals = json['decimals'];
    final l$isBuyable = json['isBuyable'];
    final l$isPayable = json['isPayable'];
    final l$symbol = json['symbol'];
    final l$logoUrl = json['logoUrl'];
    final l$chainId = json['chainId'];
    final l$priceUSD = json['priceUSD'];
    final l$priceNGN = json['priceNGN'];
    final l$$__typename = json['__typename'];
    return Query$static_getTokens$static_getTokens(
      name: (l$name as String),
      address: (l$address as String),
      decimals: (l$decimals as num).toDouble(),
      isBuyable: (l$isBuyable as bool?),
      isPayable: (l$isPayable as bool?),
      symbol: (l$symbol as String),
      logoUrl: (l$logoUrl as String),
      chainId: (l$chainId as num).toDouble(),
      priceUSD: (l$priceUSD as num).toDouble(),
      priceNGN: (l$priceNGN as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String address;

  final double decimals;

  final bool? isBuyable;

  final bool? isPayable;

  final String symbol;

  final String logoUrl;

  final double chainId;

  final double priceUSD;

  final double priceNGN;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$decimals = decimals;
    _resultData['decimals'] = l$decimals;
    final l$isBuyable = isBuyable;
    _resultData['isBuyable'] = l$isBuyable;
    final l$isPayable = isPayable;
    _resultData['isPayable'] = l$isPayable;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$logoUrl = logoUrl;
    _resultData['logoUrl'] = l$logoUrl;
    final l$chainId = chainId;
    _resultData['chainId'] = l$chainId;
    final l$priceUSD = priceUSD;
    _resultData['priceUSD'] = l$priceUSD;
    final l$priceNGN = priceNGN;
    _resultData['priceNGN'] = l$priceNGN;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$address = address;
    final l$decimals = decimals;
    final l$isBuyable = isBuyable;
    final l$isPayable = isPayable;
    final l$symbol = symbol;
    final l$logoUrl = logoUrl;
    final l$chainId = chainId;
    final l$priceUSD = priceUSD;
    final l$priceNGN = priceNGN;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$address,
      l$decimals,
      l$isBuyable,
      l$isPayable,
      l$symbol,
      l$logoUrl,
      l$chainId,
      l$priceUSD,
      l$priceNGN,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getTokens$static_getTokens ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$decimals = decimals;
    final lOther$decimals = other.decimals;
    if (l$decimals != lOther$decimals) {
      return false;
    }
    final l$isBuyable = isBuyable;
    final lOther$isBuyable = other.isBuyable;
    if (l$isBuyable != lOther$isBuyable) {
      return false;
    }
    final l$isPayable = isPayable;
    final lOther$isPayable = other.isPayable;
    if (l$isPayable != lOther$isPayable) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$logoUrl = logoUrl;
    final lOther$logoUrl = other.logoUrl;
    if (l$logoUrl != lOther$logoUrl) {
      return false;
    }
    final l$chainId = chainId;
    final lOther$chainId = other.chainId;
    if (l$chainId != lOther$chainId) {
      return false;
    }
    final l$priceUSD = priceUSD;
    final lOther$priceUSD = other.priceUSD;
    if (l$priceUSD != lOther$priceUSD) {
      return false;
    }
    final l$priceNGN = priceNGN;
    final lOther$priceNGN = other.priceNGN;
    if (l$priceNGN != lOther$priceNGN) {
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

extension UtilityExtension$Query$static_getTokens$static_getTokens
    on Query$static_getTokens$static_getTokens {
  CopyWith$Query$static_getTokens$static_getTokens<
          Query$static_getTokens$static_getTokens>
      get copyWith => CopyWith$Query$static_getTokens$static_getTokens(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_getTokens$static_getTokens<TRes> {
  factory CopyWith$Query$static_getTokens$static_getTokens(
    Query$static_getTokens$static_getTokens instance,
    TRes Function(Query$static_getTokens$static_getTokens) then,
  ) = _CopyWithImpl$Query$static_getTokens$static_getTokens;

  factory CopyWith$Query$static_getTokens$static_getTokens.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getTokens$static_getTokens;

  TRes call({
    String? name,
    String? address,
    double? decimals,
    bool? isBuyable,
    bool? isPayable,
    String? symbol,
    String? logoUrl,
    double? chainId,
    double? priceUSD,
    double? priceNGN,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$static_getTokens$static_getTokens<TRes>
    implements CopyWith$Query$static_getTokens$static_getTokens<TRes> {
  _CopyWithImpl$Query$static_getTokens$static_getTokens(
    this._instance,
    this._then,
  );

  final Query$static_getTokens$static_getTokens _instance;

  final TRes Function(Query$static_getTokens$static_getTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? address = _undefined,
    Object? decimals = _undefined,
    Object? isBuyable = _undefined,
    Object? isPayable = _undefined,
    Object? symbol = _undefined,
    Object? logoUrl = _undefined,
    Object? chainId = _undefined,
    Object? priceUSD = _undefined,
    Object? priceNGN = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getTokens$static_getTokens(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        decimals: decimals == _undefined || decimals == null
            ? _instance.decimals
            : (decimals as double),
        isBuyable: isBuyable == _undefined
            ? _instance.isBuyable
            : (isBuyable as bool?),
        isPayable: isPayable == _undefined
            ? _instance.isPayable
            : (isPayable as bool?),
        symbol: symbol == _undefined || symbol == null
            ? _instance.symbol
            : (symbol as String),
        logoUrl: logoUrl == _undefined || logoUrl == null
            ? _instance.logoUrl
            : (logoUrl as String),
        chainId: chainId == _undefined || chainId == null
            ? _instance.chainId
            : (chainId as double),
        priceUSD: priceUSD == _undefined || priceUSD == null
            ? _instance.priceUSD
            : (priceUSD as double),
        priceNGN: priceNGN == _undefined || priceNGN == null
            ? _instance.priceNGN
            : (priceNGN as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$static_getTokens$static_getTokens<TRes>
    implements CopyWith$Query$static_getTokens$static_getTokens<TRes> {
  _CopyWithStubImpl$Query$static_getTokens$static_getTokens(this._res);

  TRes _res;

  call({
    String? name,
    String? address,
    double? decimals,
    bool? isBuyable,
    bool? isPayable,
    String? symbol,
    String? logoUrl,
    double? chainId,
    double? priceUSD,
    double? priceNGN,
    String? $__typename,
  }) =>
      _res;
}

class Query$static_getLinks {
  Query$static_getLinks({
    required this.static_getLinks,
    this.$__typename = 'Query',
  });

  factory Query$static_getLinks.fromJson(Map<String, dynamic> json) {
    final l$static_getLinks = json['static_getLinks'];
    final l$$__typename = json['__typename'];
    return Query$static_getLinks(
      static_getLinks: (l$static_getLinks as List<dynamic>)
          .map((e) => Query$static_getLinks$static_getLinks.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$static_getLinks$static_getLinks> static_getLinks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$static_getLinks = static_getLinks;
    _resultData['static_getLinks'] =
        l$static_getLinks.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$static_getLinks = static_getLinks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$static_getLinks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getLinks || runtimeType != other.runtimeType) {
      return false;
    }
    final l$static_getLinks = static_getLinks;
    final lOther$static_getLinks = other.static_getLinks;
    if (l$static_getLinks.length != lOther$static_getLinks.length) {
      return false;
    }
    for (int i = 0; i < l$static_getLinks.length; i++) {
      final l$static_getLinks$entry = l$static_getLinks[i];
      final lOther$static_getLinks$entry = lOther$static_getLinks[i];
      if (l$static_getLinks$entry != lOther$static_getLinks$entry) {
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

extension UtilityExtension$Query$static_getLinks on Query$static_getLinks {
  CopyWith$Query$static_getLinks<Query$static_getLinks> get copyWith =>
      CopyWith$Query$static_getLinks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$static_getLinks<TRes> {
  factory CopyWith$Query$static_getLinks(
    Query$static_getLinks instance,
    TRes Function(Query$static_getLinks) then,
  ) = _CopyWithImpl$Query$static_getLinks;

  factory CopyWith$Query$static_getLinks.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getLinks;

  TRes call({
    List<Query$static_getLinks$static_getLinks>? static_getLinks,
    String? $__typename,
  });
  TRes static_getLinks(
      Iterable<Query$static_getLinks$static_getLinks> Function(
              Iterable<
                  CopyWith$Query$static_getLinks$static_getLinks<
                      Query$static_getLinks$static_getLinks>>)
          _fn);
}

class _CopyWithImpl$Query$static_getLinks<TRes>
    implements CopyWith$Query$static_getLinks<TRes> {
  _CopyWithImpl$Query$static_getLinks(
    this._instance,
    this._then,
  );

  final Query$static_getLinks _instance;

  final TRes Function(Query$static_getLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? static_getLinks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getLinks(
        static_getLinks: static_getLinks == _undefined ||
                static_getLinks == null
            ? _instance.static_getLinks
            : (static_getLinks as List<Query$static_getLinks$static_getLinks>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes static_getLinks(
          Iterable<Query$static_getLinks$static_getLinks> Function(
                  Iterable<
                      CopyWith$Query$static_getLinks$static_getLinks<
                          Query$static_getLinks$static_getLinks>>)
              _fn) =>
      call(
          static_getLinks: _fn(_instance.static_getLinks
              .map((e) => CopyWith$Query$static_getLinks$static_getLinks(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$static_getLinks<TRes>
    implements CopyWith$Query$static_getLinks<TRes> {
  _CopyWithStubImpl$Query$static_getLinks(this._res);

  TRes _res;

  call({
    List<Query$static_getLinks$static_getLinks>? static_getLinks,
    String? $__typename,
  }) =>
      _res;

  static_getLinks(_fn) => _res;
}

const documentNodeQuerystatic_getLinks = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'static_getLinks'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'static_getLinks'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'title'),
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
            name: NameNode(value: 'imgLink'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'group'),
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
Query$static_getLinks _parserFn$Query$static_getLinks(
        Map<String, dynamic> data) =>
    Query$static_getLinks.fromJson(data);
typedef OnQueryComplete$Query$static_getLinks = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$static_getLinks?,
);

class Options$Query$static_getLinks
    extends graphql.QueryOptions<Query$static_getLinks> {
  Options$Query$static_getLinks({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getLinks? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$static_getLinks? onComplete,
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
                    data == null ? null : _parserFn$Query$static_getLinks(data),
                  ),
          onError: onError,
          document: documentNodeQuerystatic_getLinks,
          parserFn: _parserFn$Query$static_getLinks,
        );

  final OnQueryComplete$Query$static_getLinks? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$static_getLinks
    extends graphql.WatchQueryOptions<Query$static_getLinks> {
  WatchOptions$Query$static_getLinks({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getLinks? typedOptimisticResult,
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
          document: documentNodeQuerystatic_getLinks,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$static_getLinks,
        );
}

class FetchMoreOptions$Query$static_getLinks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$static_getLinks(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerystatic_getLinks,
        );
}

extension ClientExtension$Query$static_getLinks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$static_getLinks>> query$static_getLinks(
          [Options$Query$static_getLinks? options]) async =>
      await this.query(options ?? Options$Query$static_getLinks());
  graphql.ObservableQuery<Query$static_getLinks> watchQuery$static_getLinks(
          [WatchOptions$Query$static_getLinks? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$static_getLinks());
  void writeQuery$static_getLinks({
    required Query$static_getLinks data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerystatic_getLinks)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$static_getLinks? readQuery$static_getLinks({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerystatic_getLinks)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$static_getLinks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$static_getLinks> useQuery$static_getLinks(
        [Options$Query$static_getLinks? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$static_getLinks());
graphql.ObservableQuery<Query$static_getLinks> useWatchQuery$static_getLinks(
        [WatchOptions$Query$static_getLinks? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$static_getLinks());

class Query$static_getLinks$Widget
    extends graphql_flutter.Query<Query$static_getLinks> {
  Query$static_getLinks$Widget({
    widgets.Key? key,
    Options$Query$static_getLinks? options,
    required graphql_flutter.QueryBuilder<Query$static_getLinks> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$static_getLinks(),
          builder: builder,
        );
}

class Query$static_getLinks$static_getLinks {
  Query$static_getLinks$static_getLinks({
    required this.title,
    this.desc,
    this.imgLink,
    required this.url,
    this.category,
    required this.group,
    this.$__typename = 'Static_GetLinkResponse',
  });

  factory Query$static_getLinks$static_getLinks.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$desc = json['desc'];
    final l$imgLink = json['imgLink'];
    final l$url = json['url'];
    final l$category = json['category'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$static_getLinks$static_getLinks(
      title: (l$title as String),
      desc: (l$desc as String?),
      imgLink: (l$imgLink as String?),
      url: (l$url as String),
      category: (l$category as String?),
      group: fromJson$Enum$StaticLinkGroup((l$group as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String? desc;

  final String? imgLink;

  final String url;

  final String? category;

  final Enum$StaticLinkGroup group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$desc = desc;
    _resultData['desc'] = l$desc;
    final l$imgLink = imgLink;
    _resultData['imgLink'] = l$imgLink;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$group = group;
    _resultData['group'] = toJson$Enum$StaticLinkGroup(l$group);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$desc = desc;
    final l$imgLink = imgLink;
    final l$url = url;
    final l$category = category;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$desc,
      l$imgLink,
      l$url,
      l$category,
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getLinks$static_getLinks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) {
      return false;
    }
    final l$imgLink = imgLink;
    final lOther$imgLink = other.imgLink;
    if (l$imgLink != lOther$imgLink) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
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

extension UtilityExtension$Query$static_getLinks$static_getLinks
    on Query$static_getLinks$static_getLinks {
  CopyWith$Query$static_getLinks$static_getLinks<
          Query$static_getLinks$static_getLinks>
      get copyWith => CopyWith$Query$static_getLinks$static_getLinks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_getLinks$static_getLinks<TRes> {
  factory CopyWith$Query$static_getLinks$static_getLinks(
    Query$static_getLinks$static_getLinks instance,
    TRes Function(Query$static_getLinks$static_getLinks) then,
  ) = _CopyWithImpl$Query$static_getLinks$static_getLinks;

  factory CopyWith$Query$static_getLinks$static_getLinks.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getLinks$static_getLinks;

  TRes call({
    String? title,
    String? desc,
    String? imgLink,
    String? url,
    String? category,
    Enum$StaticLinkGroup? group,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$static_getLinks$static_getLinks<TRes>
    implements CopyWith$Query$static_getLinks$static_getLinks<TRes> {
  _CopyWithImpl$Query$static_getLinks$static_getLinks(
    this._instance,
    this._then,
  );

  final Query$static_getLinks$static_getLinks _instance;

  final TRes Function(Query$static_getLinks$static_getLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? desc = _undefined,
    Object? imgLink = _undefined,
    Object? url = _undefined,
    Object? category = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getLinks$static_getLinks(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        desc: desc == _undefined ? _instance.desc : (desc as String?),
        imgLink:
            imgLink == _undefined ? _instance.imgLink : (imgLink as String?),
        url: url == _undefined || url == null ? _instance.url : (url as String),
        category:
            category == _undefined ? _instance.category : (category as String?),
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Enum$StaticLinkGroup),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$static_getLinks$static_getLinks<TRes>
    implements CopyWith$Query$static_getLinks$static_getLinks<TRes> {
  _CopyWithStubImpl$Query$static_getLinks$static_getLinks(this._res);

  TRes _res;

  call({
    String? title,
    String? desc,
    String? imgLink,
    String? url,
    String? category,
    Enum$StaticLinkGroup? group,
    String? $__typename,
  }) =>
      _res;
}

class Query$static_getCountry {
  Query$static_getCountry({
    required this.static_getCountries,
    this.$__typename = 'Query',
  });

  factory Query$static_getCountry.fromJson(Map<String, dynamic> json) {
    final l$static_getCountries = json['static_getCountries'];
    final l$$__typename = json['__typename'];
    return Query$static_getCountry(
      static_getCountries: (l$static_getCountries as List<dynamic>)
          .map((e) => Query$static_getCountry$static_getCountries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$static_getCountry$static_getCountries> static_getCountries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$static_getCountries = static_getCountries;
    _resultData['static_getCountries'] =
        l$static_getCountries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$static_getCountries = static_getCountries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$static_getCountries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getCountry || runtimeType != other.runtimeType) {
      return false;
    }
    final l$static_getCountries = static_getCountries;
    final lOther$static_getCountries = other.static_getCountries;
    if (l$static_getCountries.length != lOther$static_getCountries.length) {
      return false;
    }
    for (int i = 0; i < l$static_getCountries.length; i++) {
      final l$static_getCountries$entry = l$static_getCountries[i];
      final lOther$static_getCountries$entry = lOther$static_getCountries[i];
      if (l$static_getCountries$entry != lOther$static_getCountries$entry) {
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

extension UtilityExtension$Query$static_getCountry on Query$static_getCountry {
  CopyWith$Query$static_getCountry<Query$static_getCountry> get copyWith =>
      CopyWith$Query$static_getCountry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$static_getCountry<TRes> {
  factory CopyWith$Query$static_getCountry(
    Query$static_getCountry instance,
    TRes Function(Query$static_getCountry) then,
  ) = _CopyWithImpl$Query$static_getCountry;

  factory CopyWith$Query$static_getCountry.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getCountry;

  TRes call({
    List<Query$static_getCountry$static_getCountries>? static_getCountries,
    String? $__typename,
  });
  TRes static_getCountries(
      Iterable<Query$static_getCountry$static_getCountries> Function(
              Iterable<
                  CopyWith$Query$static_getCountry$static_getCountries<
                      Query$static_getCountry$static_getCountries>>)
          _fn);
}

class _CopyWithImpl$Query$static_getCountry<TRes>
    implements CopyWith$Query$static_getCountry<TRes> {
  _CopyWithImpl$Query$static_getCountry(
    this._instance,
    this._then,
  );

  final Query$static_getCountry _instance;

  final TRes Function(Query$static_getCountry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? static_getCountries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getCountry(
        static_getCountries:
            static_getCountries == _undefined || static_getCountries == null
                ? _instance.static_getCountries
                : (static_getCountries
                    as List<Query$static_getCountry$static_getCountries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes static_getCountries(
          Iterable<Query$static_getCountry$static_getCountries> Function(
                  Iterable<
                      CopyWith$Query$static_getCountry$static_getCountries<
                          Query$static_getCountry$static_getCountries>>)
              _fn) =>
      call(
          static_getCountries: _fn(_instance.static_getCountries
              .map((e) => CopyWith$Query$static_getCountry$static_getCountries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$static_getCountry<TRes>
    implements CopyWith$Query$static_getCountry<TRes> {
  _CopyWithStubImpl$Query$static_getCountry(this._res);

  TRes _res;

  call({
    List<Query$static_getCountry$static_getCountries>? static_getCountries,
    String? $__typename,
  }) =>
      _res;

  static_getCountries(_fn) => _res;
}

const documentNodeQuerystatic_getCountry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'static_getCountry'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'static_getCountries'),
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
            name: NameNode(value: 'isoName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'callingCodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'continent'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencyCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencyName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currencySymbol'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'flag'),
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
Query$static_getCountry _parserFn$Query$static_getCountry(
        Map<String, dynamic> data) =>
    Query$static_getCountry.fromJson(data);
typedef OnQueryComplete$Query$static_getCountry = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$static_getCountry?,
);

class Options$Query$static_getCountry
    extends graphql.QueryOptions<Query$static_getCountry> {
  Options$Query$static_getCountry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getCountry? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$static_getCountry? onComplete,
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
                        : _parserFn$Query$static_getCountry(data),
                  ),
          onError: onError,
          document: documentNodeQuerystatic_getCountry,
          parserFn: _parserFn$Query$static_getCountry,
        );

  final OnQueryComplete$Query$static_getCountry? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$static_getCountry
    extends graphql.WatchQueryOptions<Query$static_getCountry> {
  WatchOptions$Query$static_getCountry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getCountry? typedOptimisticResult,
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
          document: documentNodeQuerystatic_getCountry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$static_getCountry,
        );
}

class FetchMoreOptions$Query$static_getCountry
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$static_getCountry(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerystatic_getCountry,
        );
}

extension ClientExtension$Query$static_getCountry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$static_getCountry>> query$static_getCountry(
          [Options$Query$static_getCountry? options]) async =>
      await this.query(options ?? Options$Query$static_getCountry());
  graphql.ObservableQuery<Query$static_getCountry> watchQuery$static_getCountry(
          [WatchOptions$Query$static_getCountry? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$static_getCountry());
  void writeQuery$static_getCountry({
    required Query$static_getCountry data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerystatic_getCountry)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$static_getCountry? readQuery$static_getCountry(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerystatic_getCountry)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$static_getCountry.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$static_getCountry>
    useQuery$static_getCountry([Options$Query$static_getCountry? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$static_getCountry());
graphql.ObservableQuery<Query$static_getCountry>
    useWatchQuery$static_getCountry(
            [WatchOptions$Query$static_getCountry? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$static_getCountry());

class Query$static_getCountry$Widget
    extends graphql_flutter.Query<Query$static_getCountry> {
  Query$static_getCountry$Widget({
    widgets.Key? key,
    Options$Query$static_getCountry? options,
    required graphql_flutter.QueryBuilder<Query$static_getCountry> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$static_getCountry(),
          builder: builder,
        );
}

class Query$static_getCountry$static_getCountries {
  Query$static_getCountry$static_getCountries({
    required this.name,
    required this.isoName,
    required this.callingCodes,
    required this.continent,
    required this.currencyCode,
    required this.currencyName,
    required this.currencySymbol,
    required this.flag,
    this.$__typename = 'Static_GetCountries',
  });

  factory Query$static_getCountry$static_getCountries.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$isoName = json['isoName'];
    final l$callingCodes = json['callingCodes'];
    final l$continent = json['continent'];
    final l$currencyCode = json['currencyCode'];
    final l$currencyName = json['currencyName'];
    final l$currencySymbol = json['currencySymbol'];
    final l$flag = json['flag'];
    final l$$__typename = json['__typename'];
    return Query$static_getCountry$static_getCountries(
      name: (l$name as String),
      isoName: fromJson$Enum$Country((l$isoName as String)),
      callingCodes: (l$callingCodes as String),
      continent: (l$continent as String),
      currencyCode: (l$currencyCode as String),
      currencyName: (l$currencyName as String),
      currencySymbol: (l$currencySymbol as String),
      flag: (l$flag as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Enum$Country isoName;

  final String callingCodes;

  final String continent;

  final String currencyCode;

  final String currencyName;

  final String currencySymbol;

  final String flag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isoName = isoName;
    _resultData['isoName'] = toJson$Enum$Country(l$isoName);
    final l$callingCodes = callingCodes;
    _resultData['callingCodes'] = l$callingCodes;
    final l$continent = continent;
    _resultData['continent'] = l$continent;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$currencyName = currencyName;
    _resultData['currencyName'] = l$currencyName;
    final l$currencySymbol = currencySymbol;
    _resultData['currencySymbol'] = l$currencySymbol;
    final l$flag = flag;
    _resultData['flag'] = l$flag;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$isoName = isoName;
    final l$callingCodes = callingCodes;
    final l$continent = continent;
    final l$currencyCode = currencyCode;
    final l$currencyName = currencyName;
    final l$currencySymbol = currencySymbol;
    final l$flag = flag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$isoName,
      l$callingCodes,
      l$continent,
      l$currencyCode,
      l$currencyName,
      l$currencySymbol,
      l$flag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getCountry$static_getCountries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isoName = isoName;
    final lOther$isoName = other.isoName;
    if (l$isoName != lOther$isoName) {
      return false;
    }
    final l$callingCodes = callingCodes;
    final lOther$callingCodes = other.callingCodes;
    if (l$callingCodes != lOther$callingCodes) {
      return false;
    }
    final l$continent = continent;
    final lOther$continent = other.continent;
    if (l$continent != lOther$continent) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$currencyName = currencyName;
    final lOther$currencyName = other.currencyName;
    if (l$currencyName != lOther$currencyName) {
      return false;
    }
    final l$currencySymbol = currencySymbol;
    final lOther$currencySymbol = other.currencySymbol;
    if (l$currencySymbol != lOther$currencySymbol) {
      return false;
    }
    final l$flag = flag;
    final lOther$flag = other.flag;
    if (l$flag != lOther$flag) {
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

extension UtilityExtension$Query$static_getCountry$static_getCountries
    on Query$static_getCountry$static_getCountries {
  CopyWith$Query$static_getCountry$static_getCountries<
          Query$static_getCountry$static_getCountries>
      get copyWith => CopyWith$Query$static_getCountry$static_getCountries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_getCountry$static_getCountries<TRes> {
  factory CopyWith$Query$static_getCountry$static_getCountries(
    Query$static_getCountry$static_getCountries instance,
    TRes Function(Query$static_getCountry$static_getCountries) then,
  ) = _CopyWithImpl$Query$static_getCountry$static_getCountries;

  factory CopyWith$Query$static_getCountry$static_getCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getCountry$static_getCountries;

  TRes call({
    String? name,
    Enum$Country? isoName,
    String? callingCodes,
    String? continent,
    String? currencyCode,
    String? currencyName,
    String? currencySymbol,
    String? flag,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$static_getCountry$static_getCountries<TRes>
    implements CopyWith$Query$static_getCountry$static_getCountries<TRes> {
  _CopyWithImpl$Query$static_getCountry$static_getCountries(
    this._instance,
    this._then,
  );

  final Query$static_getCountry$static_getCountries _instance;

  final TRes Function(Query$static_getCountry$static_getCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? isoName = _undefined,
    Object? callingCodes = _undefined,
    Object? continent = _undefined,
    Object? currencyCode = _undefined,
    Object? currencyName = _undefined,
    Object? currencySymbol = _undefined,
    Object? flag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getCountry$static_getCountries(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isoName: isoName == _undefined || isoName == null
            ? _instance.isoName
            : (isoName as Enum$Country),
        callingCodes: callingCodes == _undefined || callingCodes == null
            ? _instance.callingCodes
            : (callingCodes as String),
        continent: continent == _undefined || continent == null
            ? _instance.continent
            : (continent as String),
        currencyCode: currencyCode == _undefined || currencyCode == null
            ? _instance.currencyCode
            : (currencyCode as String),
        currencyName: currencyName == _undefined || currencyName == null
            ? _instance.currencyName
            : (currencyName as String),
        currencySymbol: currencySymbol == _undefined || currencySymbol == null
            ? _instance.currencySymbol
            : (currencySymbol as String),
        flag: flag == _undefined || flag == null
            ? _instance.flag
            : (flag as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$static_getCountry$static_getCountries<TRes>
    implements CopyWith$Query$static_getCountry$static_getCountries<TRes> {
  _CopyWithStubImpl$Query$static_getCountry$static_getCountries(this._res);

  TRes _res;

  call({
    String? name,
    Enum$Country? isoName,
    String? callingCodes,
    String? continent,
    String? currencyCode,
    String? currencyName,
    String? currencySymbol,
    String? flag,
    String? $__typename,
  }) =>
      _res;
}

class Query$static_getChain {
  Query$static_getChain({
    required this.static_getChains,
    this.$__typename = 'Query',
  });

  factory Query$static_getChain.fromJson(Map<String, dynamic> json) {
    final l$static_getChains = json['static_getChains'];
    final l$$__typename = json['__typename'];
    return Query$static_getChain(
      static_getChains: (l$static_getChains as List<dynamic>)
          .map((e) => Query$static_getChain$static_getChains.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$static_getChain$static_getChains> static_getChains;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$static_getChains = static_getChains;
    _resultData['static_getChains'] =
        l$static_getChains.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$static_getChains = static_getChains;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$static_getChains.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getChain || runtimeType != other.runtimeType) {
      return false;
    }
    final l$static_getChains = static_getChains;
    final lOther$static_getChains = other.static_getChains;
    if (l$static_getChains.length != lOther$static_getChains.length) {
      return false;
    }
    for (int i = 0; i < l$static_getChains.length; i++) {
      final l$static_getChains$entry = l$static_getChains[i];
      final lOther$static_getChains$entry = lOther$static_getChains[i];
      if (l$static_getChains$entry != lOther$static_getChains$entry) {
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

extension UtilityExtension$Query$static_getChain on Query$static_getChain {
  CopyWith$Query$static_getChain<Query$static_getChain> get copyWith =>
      CopyWith$Query$static_getChain(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$static_getChain<TRes> {
  factory CopyWith$Query$static_getChain(
    Query$static_getChain instance,
    TRes Function(Query$static_getChain) then,
  ) = _CopyWithImpl$Query$static_getChain;

  factory CopyWith$Query$static_getChain.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getChain;

  TRes call({
    List<Query$static_getChain$static_getChains>? static_getChains,
    String? $__typename,
  });
  TRes static_getChains(
      Iterable<Query$static_getChain$static_getChains> Function(
              Iterable<
                  CopyWith$Query$static_getChain$static_getChains<
                      Query$static_getChain$static_getChains>>)
          _fn);
}

class _CopyWithImpl$Query$static_getChain<TRes>
    implements CopyWith$Query$static_getChain<TRes> {
  _CopyWithImpl$Query$static_getChain(
    this._instance,
    this._then,
  );

  final Query$static_getChain _instance;

  final TRes Function(Query$static_getChain) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? static_getChains = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getChain(
        static_getChains:
            static_getChains == _undefined || static_getChains == null
                ? _instance.static_getChains
                : (static_getChains
                    as List<Query$static_getChain$static_getChains>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes static_getChains(
          Iterable<Query$static_getChain$static_getChains> Function(
                  Iterable<
                      CopyWith$Query$static_getChain$static_getChains<
                          Query$static_getChain$static_getChains>>)
              _fn) =>
      call(
          static_getChains: _fn(_instance.static_getChains
              .map((e) => CopyWith$Query$static_getChain$static_getChains(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$static_getChain<TRes>
    implements CopyWith$Query$static_getChain<TRes> {
  _CopyWithStubImpl$Query$static_getChain(this._res);

  TRes _res;

  call({
    List<Query$static_getChain$static_getChains>? static_getChains,
    String? $__typename,
  }) =>
      _res;

  static_getChains(_fn) => _res;
}

const documentNodeQuerystatic_getChain = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'static_getChain'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'static_getChains'),
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
            name: NameNode(value: 'rpcUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'chainId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'explorerUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'explorerApiUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'logoUrl'),
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
Query$static_getChain _parserFn$Query$static_getChain(
        Map<String, dynamic> data) =>
    Query$static_getChain.fromJson(data);
typedef OnQueryComplete$Query$static_getChain = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$static_getChain?,
);

class Options$Query$static_getChain
    extends graphql.QueryOptions<Query$static_getChain> {
  Options$Query$static_getChain({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getChain? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$static_getChain? onComplete,
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
                    data == null ? null : _parserFn$Query$static_getChain(data),
                  ),
          onError: onError,
          document: documentNodeQuerystatic_getChain,
          parserFn: _parserFn$Query$static_getChain,
        );

  final OnQueryComplete$Query$static_getChain? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$static_getChain
    extends graphql.WatchQueryOptions<Query$static_getChain> {
  WatchOptions$Query$static_getChain({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getChain? typedOptimisticResult,
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
          document: documentNodeQuerystatic_getChain,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$static_getChain,
        );
}

class FetchMoreOptions$Query$static_getChain extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$static_getChain(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerystatic_getChain,
        );
}

extension ClientExtension$Query$static_getChain on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$static_getChain>> query$static_getChain(
          [Options$Query$static_getChain? options]) async =>
      await this.query(options ?? Options$Query$static_getChain());
  graphql.ObservableQuery<Query$static_getChain> watchQuery$static_getChain(
          [WatchOptions$Query$static_getChain? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$static_getChain());
  void writeQuery$static_getChain({
    required Query$static_getChain data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerystatic_getChain)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$static_getChain? readQuery$static_getChain({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerystatic_getChain)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$static_getChain.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$static_getChain> useQuery$static_getChain(
        [Options$Query$static_getChain? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$static_getChain());
graphql.ObservableQuery<Query$static_getChain> useWatchQuery$static_getChain(
        [WatchOptions$Query$static_getChain? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$static_getChain());

class Query$static_getChain$Widget
    extends graphql_flutter.Query<Query$static_getChain> {
  Query$static_getChain$Widget({
    widgets.Key? key,
    Options$Query$static_getChain? options,
    required graphql_flutter.QueryBuilder<Query$static_getChain> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$static_getChain(),
          builder: builder,
        );
}

class Query$static_getChain$static_getChains {
  Query$static_getChain$static_getChains({
    required this.name,
    required this.rpcUrl,
    required this.chainId,
    required this.explorerUrl,
    required this.explorerApiUrl,
    required this.logoUrl,
    this.$__typename = 'Static_GetChainsResponse',
  });

  factory Query$static_getChain$static_getChains.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$rpcUrl = json['rpcUrl'];
    final l$chainId = json['chainId'];
    final l$explorerUrl = json['explorerUrl'];
    final l$explorerApiUrl = json['explorerApiUrl'];
    final l$logoUrl = json['logoUrl'];
    final l$$__typename = json['__typename'];
    return Query$static_getChain$static_getChains(
      name: (l$name as String),
      rpcUrl: (l$rpcUrl as String),
      chainId: (l$chainId as num).toDouble(),
      explorerUrl: (l$explorerUrl as String),
      explorerApiUrl: (l$explorerApiUrl as String),
      logoUrl: (l$logoUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String rpcUrl;

  final double chainId;

  final String explorerUrl;

  final String explorerApiUrl;

  final String logoUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$rpcUrl = rpcUrl;
    _resultData['rpcUrl'] = l$rpcUrl;
    final l$chainId = chainId;
    _resultData['chainId'] = l$chainId;
    final l$explorerUrl = explorerUrl;
    _resultData['explorerUrl'] = l$explorerUrl;
    final l$explorerApiUrl = explorerApiUrl;
    _resultData['explorerApiUrl'] = l$explorerApiUrl;
    final l$logoUrl = logoUrl;
    _resultData['logoUrl'] = l$logoUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$rpcUrl = rpcUrl;
    final l$chainId = chainId;
    final l$explorerUrl = explorerUrl;
    final l$explorerApiUrl = explorerApiUrl;
    final l$logoUrl = logoUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$rpcUrl,
      l$chainId,
      l$explorerUrl,
      l$explorerApiUrl,
      l$logoUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getChain$static_getChains ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$rpcUrl = rpcUrl;
    final lOther$rpcUrl = other.rpcUrl;
    if (l$rpcUrl != lOther$rpcUrl) {
      return false;
    }
    final l$chainId = chainId;
    final lOther$chainId = other.chainId;
    if (l$chainId != lOther$chainId) {
      return false;
    }
    final l$explorerUrl = explorerUrl;
    final lOther$explorerUrl = other.explorerUrl;
    if (l$explorerUrl != lOther$explorerUrl) {
      return false;
    }
    final l$explorerApiUrl = explorerApiUrl;
    final lOther$explorerApiUrl = other.explorerApiUrl;
    if (l$explorerApiUrl != lOther$explorerApiUrl) {
      return false;
    }
    final l$logoUrl = logoUrl;
    final lOther$logoUrl = other.logoUrl;
    if (l$logoUrl != lOther$logoUrl) {
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

extension UtilityExtension$Query$static_getChain$static_getChains
    on Query$static_getChain$static_getChains {
  CopyWith$Query$static_getChain$static_getChains<
          Query$static_getChain$static_getChains>
      get copyWith => CopyWith$Query$static_getChain$static_getChains(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_getChain$static_getChains<TRes> {
  factory CopyWith$Query$static_getChain$static_getChains(
    Query$static_getChain$static_getChains instance,
    TRes Function(Query$static_getChain$static_getChains) then,
  ) = _CopyWithImpl$Query$static_getChain$static_getChains;

  factory CopyWith$Query$static_getChain$static_getChains.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getChain$static_getChains;

  TRes call({
    String? name,
    String? rpcUrl,
    double? chainId,
    String? explorerUrl,
    String? explorerApiUrl,
    String? logoUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$static_getChain$static_getChains<TRes>
    implements CopyWith$Query$static_getChain$static_getChains<TRes> {
  _CopyWithImpl$Query$static_getChain$static_getChains(
    this._instance,
    this._then,
  );

  final Query$static_getChain$static_getChains _instance;

  final TRes Function(Query$static_getChain$static_getChains) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? rpcUrl = _undefined,
    Object? chainId = _undefined,
    Object? explorerUrl = _undefined,
    Object? explorerApiUrl = _undefined,
    Object? logoUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getChain$static_getChains(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        rpcUrl: rpcUrl == _undefined || rpcUrl == null
            ? _instance.rpcUrl
            : (rpcUrl as String),
        chainId: chainId == _undefined || chainId == null
            ? _instance.chainId
            : (chainId as double),
        explorerUrl: explorerUrl == _undefined || explorerUrl == null
            ? _instance.explorerUrl
            : (explorerUrl as String),
        explorerApiUrl: explorerApiUrl == _undefined || explorerApiUrl == null
            ? _instance.explorerApiUrl
            : (explorerApiUrl as String),
        logoUrl: logoUrl == _undefined || logoUrl == null
            ? _instance.logoUrl
            : (logoUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$static_getChain$static_getChains<TRes>
    implements CopyWith$Query$static_getChain$static_getChains<TRes> {
  _CopyWithStubImpl$Query$static_getChain$static_getChains(this._res);

  TRes _res;

  call({
    String? name,
    String? rpcUrl,
    double? chainId,
    String? explorerUrl,
    String? explorerApiUrl,
    String? logoUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$static_getFundCollectors {
  Query$static_getFundCollectors({
    required this.static_getFundCollectors,
    this.$__typename = 'Query',
  });

  factory Query$static_getFundCollectors.fromJson(Map<String, dynamic> json) {
    final l$static_getFundCollectors = json['static_getFundCollectors'];
    final l$$__typename = json['__typename'];
    return Query$static_getFundCollectors(
      static_getFundCollectors:
          Query$static_getFundCollectors$static_getFundCollectors.fromJson(
              (l$static_getFundCollectors as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$static_getFundCollectors$static_getFundCollectors
      static_getFundCollectors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$static_getFundCollectors = static_getFundCollectors;
    _resultData['static_getFundCollectors'] =
        l$static_getFundCollectors.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$static_getFundCollectors = static_getFundCollectors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$static_getFundCollectors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getFundCollectors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$static_getFundCollectors = static_getFundCollectors;
    final lOther$static_getFundCollectors = other.static_getFundCollectors;
    if (l$static_getFundCollectors != lOther$static_getFundCollectors) {
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

extension UtilityExtension$Query$static_getFundCollectors
    on Query$static_getFundCollectors {
  CopyWith$Query$static_getFundCollectors<Query$static_getFundCollectors>
      get copyWith => CopyWith$Query$static_getFundCollectors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_getFundCollectors<TRes> {
  factory CopyWith$Query$static_getFundCollectors(
    Query$static_getFundCollectors instance,
    TRes Function(Query$static_getFundCollectors) then,
  ) = _CopyWithImpl$Query$static_getFundCollectors;

  factory CopyWith$Query$static_getFundCollectors.stub(TRes res) =
      _CopyWithStubImpl$Query$static_getFundCollectors;

  TRes call({
    Query$static_getFundCollectors$static_getFundCollectors?
        static_getFundCollectors,
    String? $__typename,
  });
  CopyWith$Query$static_getFundCollectors$static_getFundCollectors<TRes>
      get static_getFundCollectors;
}

class _CopyWithImpl$Query$static_getFundCollectors<TRes>
    implements CopyWith$Query$static_getFundCollectors<TRes> {
  _CopyWithImpl$Query$static_getFundCollectors(
    this._instance,
    this._then,
  );

  final Query$static_getFundCollectors _instance;

  final TRes Function(Query$static_getFundCollectors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? static_getFundCollectors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getFundCollectors(
        static_getFundCollectors: static_getFundCollectors == _undefined ||
                static_getFundCollectors == null
            ? _instance.static_getFundCollectors
            : (static_getFundCollectors
                as Query$static_getFundCollectors$static_getFundCollectors),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$static_getFundCollectors$static_getFundCollectors<TRes>
      get static_getFundCollectors {
    final local$static_getFundCollectors = _instance.static_getFundCollectors;
    return CopyWith$Query$static_getFundCollectors$static_getFundCollectors(
        local$static_getFundCollectors,
        (e) => call(static_getFundCollectors: e));
  }
}

class _CopyWithStubImpl$Query$static_getFundCollectors<TRes>
    implements CopyWith$Query$static_getFundCollectors<TRes> {
  _CopyWithStubImpl$Query$static_getFundCollectors(this._res);

  TRes _res;

  call({
    Query$static_getFundCollectors$static_getFundCollectors?
        static_getFundCollectors,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$static_getFundCollectors$static_getFundCollectors<TRes>
      get static_getFundCollectors =>
          CopyWith$Query$static_getFundCollectors$static_getFundCollectors.stub(
              _res);
}

const documentNodeQuerystatic_getFundCollectors = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'static_getFundCollectors'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'static_getFundCollectors'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'TopUp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ElectricityBills'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'FundBetting'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'OffRamping'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'TV_Bills'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'WaterBills'),
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
Query$static_getFundCollectors _parserFn$Query$static_getFundCollectors(
        Map<String, dynamic> data) =>
    Query$static_getFundCollectors.fromJson(data);
typedef OnQueryComplete$Query$static_getFundCollectors = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$static_getFundCollectors?,
);

class Options$Query$static_getFundCollectors
    extends graphql.QueryOptions<Query$static_getFundCollectors> {
  Options$Query$static_getFundCollectors({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getFundCollectors? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$static_getFundCollectors? onComplete,
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
                        : _parserFn$Query$static_getFundCollectors(data),
                  ),
          onError: onError,
          document: documentNodeQuerystatic_getFundCollectors,
          parserFn: _parserFn$Query$static_getFundCollectors,
        );

  final OnQueryComplete$Query$static_getFundCollectors? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$static_getFundCollectors
    extends graphql.WatchQueryOptions<Query$static_getFundCollectors> {
  WatchOptions$Query$static_getFundCollectors({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_getFundCollectors? typedOptimisticResult,
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
          document: documentNodeQuerystatic_getFundCollectors,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$static_getFundCollectors,
        );
}

class FetchMoreOptions$Query$static_getFundCollectors
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$static_getFundCollectors(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerystatic_getFundCollectors,
        );
}

extension ClientExtension$Query$static_getFundCollectors
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$static_getFundCollectors>>
      query$static_getFundCollectors(
              [Options$Query$static_getFundCollectors? options]) async =>
          await this.query(options ?? Options$Query$static_getFundCollectors());
  graphql.ObservableQuery<
      Query$static_getFundCollectors> watchQuery$static_getFundCollectors(
          [WatchOptions$Query$static_getFundCollectors? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$static_getFundCollectors());
  void writeQuery$static_getFundCollectors({
    required Query$static_getFundCollectors data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerystatic_getFundCollectors)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$static_getFundCollectors? readQuery$static_getFundCollectors(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerystatic_getFundCollectors)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$static_getFundCollectors.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$static_getFundCollectors>
    useQuery$static_getFundCollectors(
            [Options$Query$static_getFundCollectors? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$static_getFundCollectors());
graphql.ObservableQuery<Query$static_getFundCollectors>
    useWatchQuery$static_getFundCollectors(
            [WatchOptions$Query$static_getFundCollectors? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$static_getFundCollectors());

class Query$static_getFundCollectors$Widget
    extends graphql_flutter.Query<Query$static_getFundCollectors> {
  Query$static_getFundCollectors$Widget({
    widgets.Key? key,
    Options$Query$static_getFundCollectors? options,
    required graphql_flutter.QueryBuilder<Query$static_getFundCollectors>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$static_getFundCollectors(),
          builder: builder,
        );
}

class Query$static_getFundCollectors$static_getFundCollectors {
  Query$static_getFundCollectors$static_getFundCollectors({
    required this.TopUp,
    required this.ElectricityBills,
    required this.FundBetting,
    required this.OffRamping,
    required this.TV_Bills,
    required this.WaterBills,
    this.$__typename = 'Static_FundCollectorsResponse',
  });

  factory Query$static_getFundCollectors$static_getFundCollectors.fromJson(
      Map<String, dynamic> json) {
    final l$TopUp = json['TopUp'];
    final l$ElectricityBills = json['ElectricityBills'];
    final l$FundBetting = json['FundBetting'];
    final l$OffRamping = json['OffRamping'];
    final l$TV_Bills = json['TV_Bills'];
    final l$WaterBills = json['WaterBills'];
    final l$$__typename = json['__typename'];
    return Query$static_getFundCollectors$static_getFundCollectors(
      TopUp: (l$TopUp as String),
      ElectricityBills: (l$ElectricityBills as String),
      FundBetting: (l$FundBetting as String),
      OffRamping: (l$OffRamping as String),
      TV_Bills: (l$TV_Bills as String),
      WaterBills: (l$WaterBills as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String TopUp;

  final String ElectricityBills;

  final String FundBetting;

  final String OffRamping;

  final String TV_Bills;

  final String WaterBills;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$TopUp = TopUp;
    _resultData['TopUp'] = l$TopUp;
    final l$ElectricityBills = ElectricityBills;
    _resultData['ElectricityBills'] = l$ElectricityBills;
    final l$FundBetting = FundBetting;
    _resultData['FundBetting'] = l$FundBetting;
    final l$OffRamping = OffRamping;
    _resultData['OffRamping'] = l$OffRamping;
    final l$TV_Bills = TV_Bills;
    _resultData['TV_Bills'] = l$TV_Bills;
    final l$WaterBills = WaterBills;
    _resultData['WaterBills'] = l$WaterBills;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$TopUp = TopUp;
    final l$ElectricityBills = ElectricityBills;
    final l$FundBetting = FundBetting;
    final l$OffRamping = OffRamping;
    final l$TV_Bills = TV_Bills;
    final l$WaterBills = WaterBills;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$TopUp,
      l$ElectricityBills,
      l$FundBetting,
      l$OffRamping,
      l$TV_Bills,
      l$WaterBills,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_getFundCollectors$static_getFundCollectors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$TopUp = TopUp;
    final lOther$TopUp = other.TopUp;
    if (l$TopUp != lOther$TopUp) {
      return false;
    }
    final l$ElectricityBills = ElectricityBills;
    final lOther$ElectricityBills = other.ElectricityBills;
    if (l$ElectricityBills != lOther$ElectricityBills) {
      return false;
    }
    final l$FundBetting = FundBetting;
    final lOther$FundBetting = other.FundBetting;
    if (l$FundBetting != lOther$FundBetting) {
      return false;
    }
    final l$OffRamping = OffRamping;
    final lOther$OffRamping = other.OffRamping;
    if (l$OffRamping != lOther$OffRamping) {
      return false;
    }
    final l$TV_Bills = TV_Bills;
    final lOther$TV_Bills = other.TV_Bills;
    if (l$TV_Bills != lOther$TV_Bills) {
      return false;
    }
    final l$WaterBills = WaterBills;
    final lOther$WaterBills = other.WaterBills;
    if (l$WaterBills != lOther$WaterBills) {
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

extension UtilityExtension$Query$static_getFundCollectors$static_getFundCollectors
    on Query$static_getFundCollectors$static_getFundCollectors {
  CopyWith$Query$static_getFundCollectors$static_getFundCollectors<
          Query$static_getFundCollectors$static_getFundCollectors>
      get copyWith =>
          CopyWith$Query$static_getFundCollectors$static_getFundCollectors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_getFundCollectors$static_getFundCollectors<
    TRes> {
  factory CopyWith$Query$static_getFundCollectors$static_getFundCollectors(
    Query$static_getFundCollectors$static_getFundCollectors instance,
    TRes Function(Query$static_getFundCollectors$static_getFundCollectors) then,
  ) = _CopyWithImpl$Query$static_getFundCollectors$static_getFundCollectors;

  factory CopyWith$Query$static_getFundCollectors$static_getFundCollectors.stub(
          TRes res) =
      _CopyWithStubImpl$Query$static_getFundCollectors$static_getFundCollectors;

  TRes call({
    String? TopUp,
    String? ElectricityBills,
    String? FundBetting,
    String? OffRamping,
    String? TV_Bills,
    String? WaterBills,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$static_getFundCollectors$static_getFundCollectors<
        TRes>
    implements
        CopyWith$Query$static_getFundCollectors$static_getFundCollectors<TRes> {
  _CopyWithImpl$Query$static_getFundCollectors$static_getFundCollectors(
    this._instance,
    this._then,
  );

  final Query$static_getFundCollectors$static_getFundCollectors _instance;

  final TRes Function(Query$static_getFundCollectors$static_getFundCollectors)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? TopUp = _undefined,
    Object? ElectricityBills = _undefined,
    Object? FundBetting = _undefined,
    Object? OffRamping = _undefined,
    Object? TV_Bills = _undefined,
    Object? WaterBills = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_getFundCollectors$static_getFundCollectors(
        TopUp: TopUp == _undefined || TopUp == null
            ? _instance.TopUp
            : (TopUp as String),
        ElectricityBills:
            ElectricityBills == _undefined || ElectricityBills == null
                ? _instance.ElectricityBills
                : (ElectricityBills as String),
        FundBetting: FundBetting == _undefined || FundBetting == null
            ? _instance.FundBetting
            : (FundBetting as String),
        OffRamping: OffRamping == _undefined || OffRamping == null
            ? _instance.OffRamping
            : (OffRamping as String),
        TV_Bills: TV_Bills == _undefined || TV_Bills == null
            ? _instance.TV_Bills
            : (TV_Bills as String),
        WaterBills: WaterBills == _undefined || WaterBills == null
            ? _instance.WaterBills
            : (WaterBills as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$static_getFundCollectors$static_getFundCollectors<
        TRes>
    implements
        CopyWith$Query$static_getFundCollectors$static_getFundCollectors<TRes> {
  _CopyWithStubImpl$Query$static_getFundCollectors$static_getFundCollectors(
      this._res);

  TRes _res;

  call({
    String? TopUp,
    String? ElectricityBills,
    String? FundBetting,
    String? OffRamping,
    String? TV_Bills,
    String? WaterBills,
    String? $__typename,
  }) =>
      _res;
}

class Query$static_appInfo {
  Query$static_appInfo({
    required this.static_appInfo,
    this.$__typename = 'Query',
  });

  factory Query$static_appInfo.fromJson(Map<String, dynamic> json) {
    final l$static_appInfo = json['static_appInfo'];
    final l$$__typename = json['__typename'];
    return Query$static_appInfo(
      static_appInfo: Query$static_appInfo$static_appInfo.fromJson(
          (l$static_appInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$static_appInfo$static_appInfo static_appInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$static_appInfo = static_appInfo;
    _resultData['static_appInfo'] = l$static_appInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$static_appInfo = static_appInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$static_appInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_appInfo || runtimeType != other.runtimeType) {
      return false;
    }
    final l$static_appInfo = static_appInfo;
    final lOther$static_appInfo = other.static_appInfo;
    if (l$static_appInfo != lOther$static_appInfo) {
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

extension UtilityExtension$Query$static_appInfo on Query$static_appInfo {
  CopyWith$Query$static_appInfo<Query$static_appInfo> get copyWith =>
      CopyWith$Query$static_appInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$static_appInfo<TRes> {
  factory CopyWith$Query$static_appInfo(
    Query$static_appInfo instance,
    TRes Function(Query$static_appInfo) then,
  ) = _CopyWithImpl$Query$static_appInfo;

  factory CopyWith$Query$static_appInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$static_appInfo;

  TRes call({
    Query$static_appInfo$static_appInfo? static_appInfo,
    String? $__typename,
  });
  CopyWith$Query$static_appInfo$static_appInfo<TRes> get static_appInfo;
}

class _CopyWithImpl$Query$static_appInfo<TRes>
    implements CopyWith$Query$static_appInfo<TRes> {
  _CopyWithImpl$Query$static_appInfo(
    this._instance,
    this._then,
  );

  final Query$static_appInfo _instance;

  final TRes Function(Query$static_appInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? static_appInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_appInfo(
        static_appInfo: static_appInfo == _undefined || static_appInfo == null
            ? _instance.static_appInfo
            : (static_appInfo as Query$static_appInfo$static_appInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$static_appInfo$static_appInfo<TRes> get static_appInfo {
    final local$static_appInfo = _instance.static_appInfo;
    return CopyWith$Query$static_appInfo$static_appInfo(
        local$static_appInfo, (e) => call(static_appInfo: e));
  }
}

class _CopyWithStubImpl$Query$static_appInfo<TRes>
    implements CopyWith$Query$static_appInfo<TRes> {
  _CopyWithStubImpl$Query$static_appInfo(this._res);

  TRes _res;

  call({
    Query$static_appInfo$static_appInfo? static_appInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$static_appInfo$static_appInfo<TRes> get static_appInfo =>
      CopyWith$Query$static_appInfo$static_appInfo.stub(_res);
}

const documentNodeQuerystatic_appInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'static_appInfo'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'static_appInfo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'androidAppUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'iosAppUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'minBuild'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deployedBuild'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'enableAirtime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'enableBetting'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'enableDataPlan'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'enableElectricityBillPayment'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'enableTVBillPayment'),
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
Query$static_appInfo _parserFn$Query$static_appInfo(
        Map<String, dynamic> data) =>
    Query$static_appInfo.fromJson(data);
typedef OnQueryComplete$Query$static_appInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$static_appInfo?,
);

class Options$Query$static_appInfo
    extends graphql.QueryOptions<Query$static_appInfo> {
  Options$Query$static_appInfo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_appInfo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$static_appInfo? onComplete,
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
                    data == null ? null : _parserFn$Query$static_appInfo(data),
                  ),
          onError: onError,
          document: documentNodeQuerystatic_appInfo,
          parserFn: _parserFn$Query$static_appInfo,
        );

  final OnQueryComplete$Query$static_appInfo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$static_appInfo
    extends graphql.WatchQueryOptions<Query$static_appInfo> {
  WatchOptions$Query$static_appInfo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_appInfo? typedOptimisticResult,
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
          document: documentNodeQuerystatic_appInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$static_appInfo,
        );
}

class FetchMoreOptions$Query$static_appInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$static_appInfo(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerystatic_appInfo,
        );
}

extension ClientExtension$Query$static_appInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$static_appInfo>> query$static_appInfo(
          [Options$Query$static_appInfo? options]) async =>
      await this.query(options ?? Options$Query$static_appInfo());
  graphql.ObservableQuery<Query$static_appInfo> watchQuery$static_appInfo(
          [WatchOptions$Query$static_appInfo? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$static_appInfo());
  void writeQuery$static_appInfo({
    required Query$static_appInfo data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerystatic_appInfo)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$static_appInfo? readQuery$static_appInfo({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerystatic_appInfo)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$static_appInfo.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$static_appInfo> useQuery$static_appInfo(
        [Options$Query$static_appInfo? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$static_appInfo());
graphql.ObservableQuery<Query$static_appInfo> useWatchQuery$static_appInfo(
        [WatchOptions$Query$static_appInfo? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$static_appInfo());

class Query$static_appInfo$Widget
    extends graphql_flutter.Query<Query$static_appInfo> {
  Query$static_appInfo$Widget({
    widgets.Key? key,
    Options$Query$static_appInfo? options,
    required graphql_flutter.QueryBuilder<Query$static_appInfo> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$static_appInfo(),
          builder: builder,
        );
}

class Query$static_appInfo$static_appInfo {
  Query$static_appInfo$static_appInfo({
    required this.androidAppUrl,
    required this.iosAppUrl,
    required this.minBuild,
    required this.deployedBuild,
    required this.enableAirtime,
    required this.enableBetting,
    required this.enableDataPlan,
    required this.enableElectricityBillPayment,
    required this.enableTVBillPayment,
    this.$__typename = 'Static_AppInfoResponse',
  });

  factory Query$static_appInfo$static_appInfo.fromJson(
      Map<String, dynamic> json) {
    final l$androidAppUrl = json['androidAppUrl'];
    final l$iosAppUrl = json['iosAppUrl'];
    final l$minBuild = json['minBuild'];
    final l$deployedBuild = json['deployedBuild'];
    final l$enableAirtime = json['enableAirtime'];
    final l$enableBetting = json['enableBetting'];
    final l$enableDataPlan = json['enableDataPlan'];
    final l$enableElectricityBillPayment = json['enableElectricityBillPayment'];
    final l$enableTVBillPayment = json['enableTVBillPayment'];
    final l$$__typename = json['__typename'];
    return Query$static_appInfo$static_appInfo(
      androidAppUrl: (l$androidAppUrl as String),
      iosAppUrl: (l$iosAppUrl as String),
      minBuild: (l$minBuild as num).toDouble(),
      deployedBuild: (l$deployedBuild as num).toDouble(),
      enableAirtime: (l$enableAirtime as bool),
      enableBetting: (l$enableBetting as bool),
      enableDataPlan: (l$enableDataPlan as bool),
      enableElectricityBillPayment: (l$enableElectricityBillPayment as bool),
      enableTVBillPayment: (l$enableTVBillPayment as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String androidAppUrl;

  final String iosAppUrl;

  final double minBuild;

  final double deployedBuild;

  final bool enableAirtime;

  final bool enableBetting;

  final bool enableDataPlan;

  final bool enableElectricityBillPayment;

  final bool enableTVBillPayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$androidAppUrl = androidAppUrl;
    _resultData['androidAppUrl'] = l$androidAppUrl;
    final l$iosAppUrl = iosAppUrl;
    _resultData['iosAppUrl'] = l$iosAppUrl;
    final l$minBuild = minBuild;
    _resultData['minBuild'] = l$minBuild;
    final l$deployedBuild = deployedBuild;
    _resultData['deployedBuild'] = l$deployedBuild;
    final l$enableAirtime = enableAirtime;
    _resultData['enableAirtime'] = l$enableAirtime;
    final l$enableBetting = enableBetting;
    _resultData['enableBetting'] = l$enableBetting;
    final l$enableDataPlan = enableDataPlan;
    _resultData['enableDataPlan'] = l$enableDataPlan;
    final l$enableElectricityBillPayment = enableElectricityBillPayment;
    _resultData['enableElectricityBillPayment'] =
        l$enableElectricityBillPayment;
    final l$enableTVBillPayment = enableTVBillPayment;
    _resultData['enableTVBillPayment'] = l$enableTVBillPayment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$androidAppUrl = androidAppUrl;
    final l$iosAppUrl = iosAppUrl;
    final l$minBuild = minBuild;
    final l$deployedBuild = deployedBuild;
    final l$enableAirtime = enableAirtime;
    final l$enableBetting = enableBetting;
    final l$enableDataPlan = enableDataPlan;
    final l$enableElectricityBillPayment = enableElectricityBillPayment;
    final l$enableTVBillPayment = enableTVBillPayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$androidAppUrl,
      l$iosAppUrl,
      l$minBuild,
      l$deployedBuild,
      l$enableAirtime,
      l$enableBetting,
      l$enableDataPlan,
      l$enableElectricityBillPayment,
      l$enableTVBillPayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_appInfo$static_appInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$androidAppUrl = androidAppUrl;
    final lOther$androidAppUrl = other.androidAppUrl;
    if (l$androidAppUrl != lOther$androidAppUrl) {
      return false;
    }
    final l$iosAppUrl = iosAppUrl;
    final lOther$iosAppUrl = other.iosAppUrl;
    if (l$iosAppUrl != lOther$iosAppUrl) {
      return false;
    }
    final l$minBuild = minBuild;
    final lOther$minBuild = other.minBuild;
    if (l$minBuild != lOther$minBuild) {
      return false;
    }
    final l$deployedBuild = deployedBuild;
    final lOther$deployedBuild = other.deployedBuild;
    if (l$deployedBuild != lOther$deployedBuild) {
      return false;
    }
    final l$enableAirtime = enableAirtime;
    final lOther$enableAirtime = other.enableAirtime;
    if (l$enableAirtime != lOther$enableAirtime) {
      return false;
    }
    final l$enableBetting = enableBetting;
    final lOther$enableBetting = other.enableBetting;
    if (l$enableBetting != lOther$enableBetting) {
      return false;
    }
    final l$enableDataPlan = enableDataPlan;
    final lOther$enableDataPlan = other.enableDataPlan;
    if (l$enableDataPlan != lOther$enableDataPlan) {
      return false;
    }
    final l$enableElectricityBillPayment = enableElectricityBillPayment;
    final lOther$enableElectricityBillPayment =
        other.enableElectricityBillPayment;
    if (l$enableElectricityBillPayment != lOther$enableElectricityBillPayment) {
      return false;
    }
    final l$enableTVBillPayment = enableTVBillPayment;
    final lOther$enableTVBillPayment = other.enableTVBillPayment;
    if (l$enableTVBillPayment != lOther$enableTVBillPayment) {
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

extension UtilityExtension$Query$static_appInfo$static_appInfo
    on Query$static_appInfo$static_appInfo {
  CopyWith$Query$static_appInfo$static_appInfo<
          Query$static_appInfo$static_appInfo>
      get copyWith => CopyWith$Query$static_appInfo$static_appInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_appInfo$static_appInfo<TRes> {
  factory CopyWith$Query$static_appInfo$static_appInfo(
    Query$static_appInfo$static_appInfo instance,
    TRes Function(Query$static_appInfo$static_appInfo) then,
  ) = _CopyWithImpl$Query$static_appInfo$static_appInfo;

  factory CopyWith$Query$static_appInfo$static_appInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$static_appInfo$static_appInfo;

  TRes call({
    String? androidAppUrl,
    String? iosAppUrl,
    double? minBuild,
    double? deployedBuild,
    bool? enableAirtime,
    bool? enableBetting,
    bool? enableDataPlan,
    bool? enableElectricityBillPayment,
    bool? enableTVBillPayment,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$static_appInfo$static_appInfo<TRes>
    implements CopyWith$Query$static_appInfo$static_appInfo<TRes> {
  _CopyWithImpl$Query$static_appInfo$static_appInfo(
    this._instance,
    this._then,
  );

  final Query$static_appInfo$static_appInfo _instance;

  final TRes Function(Query$static_appInfo$static_appInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? androidAppUrl = _undefined,
    Object? iosAppUrl = _undefined,
    Object? minBuild = _undefined,
    Object? deployedBuild = _undefined,
    Object? enableAirtime = _undefined,
    Object? enableBetting = _undefined,
    Object? enableDataPlan = _undefined,
    Object? enableElectricityBillPayment = _undefined,
    Object? enableTVBillPayment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_appInfo$static_appInfo(
        androidAppUrl: androidAppUrl == _undefined || androidAppUrl == null
            ? _instance.androidAppUrl
            : (androidAppUrl as String),
        iosAppUrl: iosAppUrl == _undefined || iosAppUrl == null
            ? _instance.iosAppUrl
            : (iosAppUrl as String),
        minBuild: minBuild == _undefined || minBuild == null
            ? _instance.minBuild
            : (minBuild as double),
        deployedBuild: deployedBuild == _undefined || deployedBuild == null
            ? _instance.deployedBuild
            : (deployedBuild as double),
        enableAirtime: enableAirtime == _undefined || enableAirtime == null
            ? _instance.enableAirtime
            : (enableAirtime as bool),
        enableBetting: enableBetting == _undefined || enableBetting == null
            ? _instance.enableBetting
            : (enableBetting as bool),
        enableDataPlan: enableDataPlan == _undefined || enableDataPlan == null
            ? _instance.enableDataPlan
            : (enableDataPlan as bool),
        enableElectricityBillPayment:
            enableElectricityBillPayment == _undefined ||
                    enableElectricityBillPayment == null
                ? _instance.enableElectricityBillPayment
                : (enableElectricityBillPayment as bool),
        enableTVBillPayment:
            enableTVBillPayment == _undefined || enableTVBillPayment == null
                ? _instance.enableTVBillPayment
                : (enableTVBillPayment as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$static_appInfo$static_appInfo<TRes>
    implements CopyWith$Query$static_appInfo$static_appInfo<TRes> {
  _CopyWithStubImpl$Query$static_appInfo$static_appInfo(this._res);

  TRes _res;

  call({
    String? androidAppUrl,
    String? iosAppUrl,
    double? minBuild,
    double? deployedBuild,
    bool? enableAirtime,
    bool? enableBetting,
    bool? enableDataPlan,
    bool? enableElectricityBillPayment,
    bool? enableTVBillPayment,
    String? $__typename,
  }) =>
      _res;
}

class Query$static_secretQuestions {
  Query$static_secretQuestions({
    required this.static_secretQuestions,
    this.$__typename = 'Query',
  });

  factory Query$static_secretQuestions.fromJson(Map<String, dynamic> json) {
    final l$static_secretQuestions = json['static_secretQuestions'];
    final l$$__typename = json['__typename'];
    return Query$static_secretQuestions(
      static_secretQuestions: (l$static_secretQuestions as List<dynamic>)
          .map((e) =>
              Query$static_secretQuestions$static_secretQuestions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$static_secretQuestions$static_secretQuestions>
      static_secretQuestions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$static_secretQuestions = static_secretQuestions;
    _resultData['static_secretQuestions'] =
        l$static_secretQuestions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$static_secretQuestions = static_secretQuestions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$static_secretQuestions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_secretQuestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$static_secretQuestions = static_secretQuestions;
    final lOther$static_secretQuestions = other.static_secretQuestions;
    if (l$static_secretQuestions.length !=
        lOther$static_secretQuestions.length) {
      return false;
    }
    for (int i = 0; i < l$static_secretQuestions.length; i++) {
      final l$static_secretQuestions$entry = l$static_secretQuestions[i];
      final lOther$static_secretQuestions$entry =
          lOther$static_secretQuestions[i];
      if (l$static_secretQuestions$entry !=
          lOther$static_secretQuestions$entry) {
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

extension UtilityExtension$Query$static_secretQuestions
    on Query$static_secretQuestions {
  CopyWith$Query$static_secretQuestions<Query$static_secretQuestions>
      get copyWith => CopyWith$Query$static_secretQuestions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_secretQuestions<TRes> {
  factory CopyWith$Query$static_secretQuestions(
    Query$static_secretQuestions instance,
    TRes Function(Query$static_secretQuestions) then,
  ) = _CopyWithImpl$Query$static_secretQuestions;

  factory CopyWith$Query$static_secretQuestions.stub(TRes res) =
      _CopyWithStubImpl$Query$static_secretQuestions;

  TRes call({
    List<Query$static_secretQuestions$static_secretQuestions>?
        static_secretQuestions,
    String? $__typename,
  });
  TRes static_secretQuestions(
      Iterable<Query$static_secretQuestions$static_secretQuestions> Function(
              Iterable<
                  CopyWith$Query$static_secretQuestions$static_secretQuestions<
                      Query$static_secretQuestions$static_secretQuestions>>)
          _fn);
}

class _CopyWithImpl$Query$static_secretQuestions<TRes>
    implements CopyWith$Query$static_secretQuestions<TRes> {
  _CopyWithImpl$Query$static_secretQuestions(
    this._instance,
    this._then,
  );

  final Query$static_secretQuestions _instance;

  final TRes Function(Query$static_secretQuestions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? static_secretQuestions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_secretQuestions(
        static_secretQuestions: static_secretQuestions == _undefined ||
                static_secretQuestions == null
            ? _instance.static_secretQuestions
            : (static_secretQuestions
                as List<Query$static_secretQuestions$static_secretQuestions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes static_secretQuestions(
          Iterable<Query$static_secretQuestions$static_secretQuestions> Function(
                  Iterable<
                      CopyWith$Query$static_secretQuestions$static_secretQuestions<
                          Query$static_secretQuestions$static_secretQuestions>>)
              _fn) =>
      call(
          static_secretQuestions: _fn(_instance.static_secretQuestions.map(
              (e) =>
                  CopyWith$Query$static_secretQuestions$static_secretQuestions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$static_secretQuestions<TRes>
    implements CopyWith$Query$static_secretQuestions<TRes> {
  _CopyWithStubImpl$Query$static_secretQuestions(this._res);

  TRes _res;

  call({
    List<Query$static_secretQuestions$static_secretQuestions>?
        static_secretQuestions,
    String? $__typename,
  }) =>
      _res;

  static_secretQuestions(_fn) => _res;
}

const documentNodeQuerystatic_secretQuestions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'static_secretQuestions'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'static_secretQuestions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'text'),
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
Query$static_secretQuestions _parserFn$Query$static_secretQuestions(
        Map<String, dynamic> data) =>
    Query$static_secretQuestions.fromJson(data);
typedef OnQueryComplete$Query$static_secretQuestions = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$static_secretQuestions?,
);

class Options$Query$static_secretQuestions
    extends graphql.QueryOptions<Query$static_secretQuestions> {
  Options$Query$static_secretQuestions({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_secretQuestions? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$static_secretQuestions? onComplete,
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
                        : _parserFn$Query$static_secretQuestions(data),
                  ),
          onError: onError,
          document: documentNodeQuerystatic_secretQuestions,
          parserFn: _parserFn$Query$static_secretQuestions,
        );

  final OnQueryComplete$Query$static_secretQuestions? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$static_secretQuestions
    extends graphql.WatchQueryOptions<Query$static_secretQuestions> {
  WatchOptions$Query$static_secretQuestions({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$static_secretQuestions? typedOptimisticResult,
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
          document: documentNodeQuerystatic_secretQuestions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$static_secretQuestions,
        );
}

class FetchMoreOptions$Query$static_secretQuestions
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$static_secretQuestions(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerystatic_secretQuestions,
        );
}

extension ClientExtension$Query$static_secretQuestions
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$static_secretQuestions>>
      query$static_secretQuestions(
              [Options$Query$static_secretQuestions? options]) async =>
          await this.query(options ?? Options$Query$static_secretQuestions());
  graphql.ObservableQuery<
      Query$static_secretQuestions> watchQuery$static_secretQuestions(
          [WatchOptions$Query$static_secretQuestions? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$static_secretQuestions());
  void writeQuery$static_secretQuestions({
    required Query$static_secretQuestions data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerystatic_secretQuestions)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$static_secretQuestions? readQuery$static_secretQuestions(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerystatic_secretQuestions)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$static_secretQuestions.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$static_secretQuestions>
    useQuery$static_secretQuestions(
            [Options$Query$static_secretQuestions? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$static_secretQuestions());
graphql.ObservableQuery<Query$static_secretQuestions>
    useWatchQuery$static_secretQuestions(
            [WatchOptions$Query$static_secretQuestions? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$static_secretQuestions());

class Query$static_secretQuestions$Widget
    extends graphql_flutter.Query<Query$static_secretQuestions> {
  Query$static_secretQuestions$Widget({
    widgets.Key? key,
    Options$Query$static_secretQuestions? options,
    required graphql_flutter.QueryBuilder<Query$static_secretQuestions> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$static_secretQuestions(),
          builder: builder,
        );
}

class Query$static_secretQuestions$static_secretQuestions {
  Query$static_secretQuestions$static_secretQuestions({
    required this.text,
    this.$__typename = 'Static_SecretQuestionsResponse',
  });

  factory Query$static_secretQuestions$static_secretQuestions.fromJson(
      Map<String, dynamic> json) {
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Query$static_secretQuestions$static_secretQuestions(
      text: (l$text as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$static_secretQuestions$static_secretQuestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Query$static_secretQuestions$static_secretQuestions
    on Query$static_secretQuestions$static_secretQuestions {
  CopyWith$Query$static_secretQuestions$static_secretQuestions<
          Query$static_secretQuestions$static_secretQuestions>
      get copyWith =>
          CopyWith$Query$static_secretQuestions$static_secretQuestions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$static_secretQuestions$static_secretQuestions<
    TRes> {
  factory CopyWith$Query$static_secretQuestions$static_secretQuestions(
    Query$static_secretQuestions$static_secretQuestions instance,
    TRes Function(Query$static_secretQuestions$static_secretQuestions) then,
  ) = _CopyWithImpl$Query$static_secretQuestions$static_secretQuestions;

  factory CopyWith$Query$static_secretQuestions$static_secretQuestions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$static_secretQuestions$static_secretQuestions;

  TRes call({
    String? text,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$static_secretQuestions$static_secretQuestions<TRes>
    implements
        CopyWith$Query$static_secretQuestions$static_secretQuestions<TRes> {
  _CopyWithImpl$Query$static_secretQuestions$static_secretQuestions(
    this._instance,
    this._then,
  );

  final Query$static_secretQuestions$static_secretQuestions _instance;

  final TRes Function(Query$static_secretQuestions$static_secretQuestions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$static_secretQuestions$static_secretQuestions(
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$static_secretQuestions$static_secretQuestions<
        TRes>
    implements
        CopyWith$Query$static_secretQuestions$static_secretQuestions<TRes> {
  _CopyWithStubImpl$Query$static_secretQuestions$static_secretQuestions(
      this._res);

  TRes _res;

  call({
    String? text,
    String? $__typename,
  }) =>
      _res;
}
