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
    final l$transactionsGetall = json['transactions_getAll'];
    final l$$__typename = json['__typename'];
    return Query$Transactions_getAll(
      transactions_getAll: (l$transactionsGetall as List<dynamic>)
          .map((e) => Query$Transactions_getAll$transactions_getAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Transactions_getAll$transactions_getAll> transactions_getAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$transactionsGetall = transactions_getAll;
    resultData['transactions_getAll'] =
        l$transactionsGetall.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$transactionsGetall = transactions_getAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$transactionsGetall.map((v) => v)),
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
    final l$transactionsGetall = transactions_getAll;
    final lother$transactionsGetall = other.transactions_getAll;
    if (l$transactionsGetall.length != lother$transactionsGetall.length) {
      return false;
    }
    for (int i = 0; i < l$transactionsGetall.length; i++) {
      final l$transactionsGetall$entry = l$transactionsGetall[i];
      final lother$transactionsGetall$entry = lother$transactionsGetall[i];
      if (l$transactionsGetall$entry != lother$transactionsGetall$entry) {
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
          fn);
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

  @override
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

  @override
  TRes transactions_getAll(
          Iterable<Query$Transactions_getAll$transactions_getAll> Function(
                  Iterable<
                      CopyWith$Query$Transactions_getAll$transactions_getAll<
                          Query$Transactions_getAll$transactions_getAll>>)
              fn) =>
      call(
          transactions_getAll: fn(_instance.transactions_getAll.map(
              (e) => CopyWith$Query$Transactions_getAll$transactions_getAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Transactions_getAll<TRes>
    implements CopyWith$Query$Transactions_getAll<TRes> {
  _CopyWithStubImpl$Query$Transactions_getAll(this._res);

  final TRes _res;

  @override
  call({
    List<Query$Transactions_getAll$transactions_getAll>? transactions_getAll,
    String? $__typename,
  }) =>
      _res;

  @override
  transactions_getAll(fn) => _res;
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$Transactions_getAll? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$Transactions_getAll? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$Transactions_getAll(data),
                  ),
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$Transactions_getAll? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryTransactions_getAll,
          parserFn: _parserFn$Query$Transactions_getAll,
        );
}

class FetchMoreOptions$Query$Transactions_getAll
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Transactions_getAll(
      {required super.updateQuery})
      : super(
          document: documentNodeQueryTransactions_getAll,
        );
}

extension ClientExtension$Query$Transactions_getAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Transactions_getAll>>
      query$Transactions_getAll(
              [Options$Query$Transactions_getAll? options]) async =>
          await query(options ?? Options$Query$Transactions_getAll());
  graphql.ObservableQuery<Query$Transactions_getAll>
      watchQuery$Transactions_getAll(
              [WatchOptions$Query$Transactions_getAll? options]) =>
          watchQuery(options ?? WatchOptions$Query$Transactions_getAll());
  void writeQuery$Transactions_getAll({
    required Query$Transactions_getAll data,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryTransactions_getAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Transactions_getAll? readQuery$Transactions_getAll(
      {bool optimistic = true}) {
    final result = readQuery(
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
    super.key,
    Options$Query$Transactions_getAll? options,
    required super.builder,
  }) : super(
          options: options ?? Options$Query$Transactions_getAll(),
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
    final l$transactionHash = json['transaction_hash'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$Transactions_getAll$transactions_getAll(
      amount: (l$amount as num).toDouble(),
      category: fromJson$Enum$TransactionCategory((l$category as String)),
      mode: fromJson$Enum$TransactionsMode((l$mode as String)),
      note: (l$note as String),
      transaction_hash: (l$transactionHash as String?),
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
    final resultData = <String, dynamic>{};
    final l$amount = amount;
    resultData['amount'] = l$amount;
    final l$category = category;
    resultData['category'] = toJson$Enum$TransactionCategory(l$category);
    final l$mode = mode;
    resultData['mode'] = toJson$Enum$TransactionsMode(l$mode);
    final l$note = note;
    resultData['note'] = l$note;
    final l$transactionHash = transaction_hash;
    resultData['transaction_hash'] = l$transactionHash;
    final l$status = status;
    resultData['status'] = toJson$Enum$TransactionStatus(l$status);
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$category = category;
    final l$mode = mode;
    final l$note = note;
    final l$transactionHash = transaction_hash;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$category,
      l$mode,
      l$note,
      l$transactionHash,
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
    final l$transactionHash = transaction_hash;
    final lother$transactionHash = other.transaction_hash;
    if (l$transactionHash != lother$transactionHash) {
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

  @override
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

  final TRes _res;

  @override
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
