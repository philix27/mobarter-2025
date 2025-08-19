import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$Transactions_getAll {
  Query$Transactions_getAll({
    required this.transactions_getAll,
    this.$__typename = 'Query',
  });

  factory Query$Transactions_getAll.fromJson(Map<String, dynamic> json) {
    final l$transactions_getAll = json['transactions_getAll'];
    final l$$__typename = json['__typename'];
    return Query$Transactions_getAll(
      transactions_getAll: (l$transactions_getAll as List<dynamic>)
          .map((e) => Query$Transactions_getAll$transactions_getAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Transactions_getAll$transactions_getAll> transactions_getAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transactions_getAll = transactions_getAll;
    _resultData['transactions_getAll'] =
        l$transactions_getAll.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transactions_getAll = transactions_getAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$transactions_getAll.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Transactions_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transactions_getAll = transactions_getAll;
    final lOther$transactions_getAll = other.transactions_getAll;
    if (l$transactions_getAll.length != lOther$transactions_getAll.length) {
      return false;
    }
    for (int i = 0; i < l$transactions_getAll.length; i++) {
      final l$transactions_getAll$entry = l$transactions_getAll[i];
      final lOther$transactions_getAll$entry = lOther$transactions_getAll[i];
      if (l$transactions_getAll$entry != lOther$transactions_getAll$entry) {
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

extension UtilityExtension$Query$Transactions_getAll
    on Query$Transactions_getAll {
  CopyWith$Query$Transactions_getAll<Query$Transactions_getAll> get copyWith =>
      CopyWith$Query$Transactions_getAll(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Transactions_getAll<TRes> {
  factory CopyWith$Query$Transactions_getAll(
    Query$Transactions_getAll instance,
    TRes Function(Query$Transactions_getAll) then,
  ) = _CopyWithImpl$Query$Transactions_getAll;

  factory CopyWith$Query$Transactions_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$Transactions_getAll;

  TRes call({
    List<Query$Transactions_getAll$transactions_getAll>? transactions_getAll,
    String? $__typename,
  });
  TRes transactions_getAll(
      Iterable<Query$Transactions_getAll$transactions_getAll> Function(
              Iterable<
                  CopyWith$Query$Transactions_getAll$transactions_getAll<
                      Query$Transactions_getAll$transactions_getAll>>)
          _fn);
}

class _CopyWithImpl$Query$Transactions_getAll<TRes>
    implements CopyWith$Query$Transactions_getAll<TRes> {
  _CopyWithImpl$Query$Transactions_getAll(
    this._instance,
    this._then,
  );

  final Query$Transactions_getAll _instance;

  final TRes Function(Query$Transactions_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transactions_getAll = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Transactions_getAll(
        transactions_getAll:
            transactions_getAll == _undefined || transactions_getAll == null
                ? _instance.transactions_getAll
                : (transactions_getAll
                    as List<Query$Transactions_getAll$transactions_getAll>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes transactions_getAll(
          Iterable<Query$Transactions_getAll$transactions_getAll> Function(
                  Iterable<
                      CopyWith$Query$Transactions_getAll$transactions_getAll<
                          Query$Transactions_getAll$transactions_getAll>>)
              _fn) =>
      call(
          transactions_getAll: _fn(_instance.transactions_getAll.map(
              (e) => CopyWith$Query$Transactions_getAll$transactions_getAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Transactions_getAll<TRes>
    implements CopyWith$Query$Transactions_getAll<TRes> {
  _CopyWithStubImpl$Query$Transactions_getAll(this._res);

  TRes _res;

  call({
    List<Query$Transactions_getAll$transactions_getAll>? transactions_getAll,
    String? $__typename,
  }) =>
      _res;

  transactions_getAll(_fn) => _res;
}

const documentNodeQueryTransactions_getAll = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Transactions_getAll'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'transactions_getAll'),
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
            name: NameNode(value: 'category'),
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
            name: NameNode(value: 'note'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_hash'),
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
Query$Transactions_getAll _parserFn$Query$Transactions_getAll(
        Map<String, dynamic> data) =>
    Query$Transactions_getAll.fromJson(data);
typedef OnQueryComplete$Query$Transactions_getAll = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Transactions_getAll?,
);

class Options$Query$Transactions_getAll
    extends graphql.QueryOptions<Query$Transactions_getAll> {
  Options$Query$Transactions_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Transactions_getAll? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Transactions_getAll? onComplete,
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
                        : _parserFn$Query$Transactions_getAll(data),
                  ),
          onError: onError,
          document: documentNodeQueryTransactions_getAll,
          parserFn: _parserFn$Query$Transactions_getAll,
        );

  final OnQueryComplete$Query$Transactions_getAll? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Transactions_getAll
    extends graphql.WatchQueryOptions<Query$Transactions_getAll> {
  WatchOptions$Query$Transactions_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Transactions_getAll? typedOptimisticResult,
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
          document: documentNodeQueryTransactions_getAll,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Transactions_getAll,
        );
}

class FetchMoreOptions$Query$Transactions_getAll
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Transactions_getAll(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryTransactions_getAll,
        );
}

extension ClientExtension$Query$Transactions_getAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Transactions_getAll>>
      query$Transactions_getAll(
              [Options$Query$Transactions_getAll? options]) async =>
          await this.query(options ?? Options$Query$Transactions_getAll());
  graphql.ObservableQuery<Query$Transactions_getAll>
      watchQuery$Transactions_getAll(
              [WatchOptions$Query$Transactions_getAll? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$Transactions_getAll());
  void writeQuery$Transactions_getAll({
    required Query$Transactions_getAll data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryTransactions_getAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Transactions_getAll? readQuery$Transactions_getAll(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryTransactions_getAll)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Transactions_getAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Transactions_getAll>
    useQuery$Transactions_getAll(
            [Options$Query$Transactions_getAll? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$Transactions_getAll());
graphql.ObservableQuery<Query$Transactions_getAll>
    useWatchQuery$Transactions_getAll(
            [WatchOptions$Query$Transactions_getAll? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$Transactions_getAll());

class Query$Transactions_getAll$Widget
    extends graphql_flutter.Query<Query$Transactions_getAll> {
  Query$Transactions_getAll$Widget({
    widgets.Key? key,
    Options$Query$Transactions_getAll? options,
    required graphql_flutter.QueryBuilder<Query$Transactions_getAll> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Transactions_getAll(),
          builder: builder,
        );
}

class Query$Transactions_getAll$transactions_getAll {
  Query$Transactions_getAll$transactions_getAll({
    required this.amount,
    required this.category,
    required this.mode,
    required this.note,
    this.transaction_hash,
    required this.status,
    this.$__typename = 'Transaction_GetResponse',
  });

  factory Query$Transactions_getAll$transactions_getAll.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$category = json['category'];
    final l$mode = json['mode'];
    final l$note = json['note'];
    final l$transaction_hash = json['transaction_hash'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$Transactions_getAll$transactions_getAll(
      amount: (l$amount as num).toDouble(),
      category: fromJson$Enum$TransactionCategory((l$category as String)),
      mode: fromJson$Enum$TransactionsMode((l$mode as String)),
      note: (l$note as String),
      transaction_hash: (l$transaction_hash as String?),
      status: fromJson$Enum$TransactionStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final Enum$TransactionCategory category;

  final Enum$TransactionsMode mode;

  final String note;

  final String? transaction_hash;

  final Enum$TransactionStatus status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$category = category;
    _resultData['category'] = toJson$Enum$TransactionCategory(l$category);
    final l$mode = mode;
    _resultData['mode'] = toJson$Enum$TransactionsMode(l$mode);
    final l$note = note;
    _resultData['note'] = l$note;
    final l$transaction_hash = transaction_hash;
    _resultData['transaction_hash'] = l$transaction_hash;
    final l$status = status;
    _resultData['status'] = toJson$Enum$TransactionStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$category = category;
    final l$mode = mode;
    final l$note = note;
    final l$transaction_hash = transaction_hash;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$category,
      l$mode,
      l$note,
      l$transaction_hash,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Transactions_getAll$transactions_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
      return false;
    }
    final l$transaction_hash = transaction_hash;
    final lOther$transaction_hash = other.transaction_hash;
    if (l$transaction_hash != lOther$transaction_hash) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$Transactions_getAll$transactions_getAll
    on Query$Transactions_getAll$transactions_getAll {
  CopyWith$Query$Transactions_getAll$transactions_getAll<
          Query$Transactions_getAll$transactions_getAll>
      get copyWith => CopyWith$Query$Transactions_getAll$transactions_getAll(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Transactions_getAll$transactions_getAll<TRes> {
  factory CopyWith$Query$Transactions_getAll$transactions_getAll(
    Query$Transactions_getAll$transactions_getAll instance,
    TRes Function(Query$Transactions_getAll$transactions_getAll) then,
  ) = _CopyWithImpl$Query$Transactions_getAll$transactions_getAll;

  factory CopyWith$Query$Transactions_getAll$transactions_getAll.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Transactions_getAll$transactions_getAll;

  TRes call({
    double? amount,
    Enum$TransactionCategory? category,
    Enum$TransactionsMode? mode,
    String? note,
    String? transaction_hash,
    Enum$TransactionStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Transactions_getAll$transactions_getAll<TRes>
    implements CopyWith$Query$Transactions_getAll$transactions_getAll<TRes> {
  _CopyWithImpl$Query$Transactions_getAll$transactions_getAll(
    this._instance,
    this._then,
  );

  final Query$Transactions_getAll$transactions_getAll _instance;

  final TRes Function(Query$Transactions_getAll$transactions_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? category = _undefined,
    Object? mode = _undefined,
    Object? note = _undefined,
    Object? transaction_hash = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Transactions_getAll$transactions_getAll(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as Enum$TransactionCategory),
        mode: mode == _undefined || mode == null
            ? _instance.mode
            : (mode as Enum$TransactionsMode),
        note: note == _undefined || note == null
            ? _instance.note
            : (note as String),
        transaction_hash: transaction_hash == _undefined
            ? _instance.transaction_hash
            : (transaction_hash as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$TransactionStatus),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Transactions_getAll$transactions_getAll<TRes>
    implements CopyWith$Query$Transactions_getAll$transactions_getAll<TRes> {
  _CopyWithStubImpl$Query$Transactions_getAll$transactions_getAll(this._res);

  TRes _res;

  call({
    double? amount,
    Enum$TransactionCategory? category,
    Enum$TransactionsMode? mode,
    String? note,
    String? transaction_hash,
    Enum$TransactionStatus? status,
    String? $__typename,
  }) =>
      _res;
}
