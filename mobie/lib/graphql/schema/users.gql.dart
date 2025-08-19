import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$User_getAll {
  Query$User_getAll({
    required this.user_getAll,
    this.$__typename = 'Query',
  });

  factory Query$User_getAll.fromJson(Map<String, dynamic> json) {
    final l$user_getAll = json['user_getAll'];
    final l$$__typename = json['__typename'];
    return Query$User_getAll(
      user_getAll: (l$user_getAll as List<dynamic>)
          .map((e) => Query$User_getAll$user_getAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$User_getAll$user_getAll> user_getAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_getAll = user_getAll;
    _resultData['user_getAll'] = l$user_getAll.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_getAll = user_getAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$user_getAll.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User_getAll || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_getAll = user_getAll;
    final lOther$user_getAll = other.user_getAll;
    if (l$user_getAll.length != lOther$user_getAll.length) {
      return false;
    }
    for (int i = 0; i < l$user_getAll.length; i++) {
      final l$user_getAll$entry = l$user_getAll[i];
      final lOther$user_getAll$entry = lOther$user_getAll[i];
      if (l$user_getAll$entry != lOther$user_getAll$entry) {
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

extension UtilityExtension$Query$User_getAll on Query$User_getAll {
  CopyWith$Query$User_getAll<Query$User_getAll> get copyWith =>
      CopyWith$Query$User_getAll(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User_getAll<TRes> {
  factory CopyWith$Query$User_getAll(
    Query$User_getAll instance,
    TRes Function(Query$User_getAll) then,
  ) = _CopyWithImpl$Query$User_getAll;

  factory CopyWith$Query$User_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$User_getAll;

  TRes call({
    List<Query$User_getAll$user_getAll>? user_getAll,
    String? $__typename,
  });
  TRes user_getAll(
      Iterable<Query$User_getAll$user_getAll> Function(
              Iterable<
                  CopyWith$Query$User_getAll$user_getAll<
                      Query$User_getAll$user_getAll>>)
          _fn);
}

class _CopyWithImpl$Query$User_getAll<TRes>
    implements CopyWith$Query$User_getAll<TRes> {
  _CopyWithImpl$Query$User_getAll(
    this._instance,
    this._then,
  );

  final Query$User_getAll _instance;

  final TRes Function(Query$User_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_getAll = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User_getAll(
        user_getAll: user_getAll == _undefined || user_getAll == null
            ? _instance.user_getAll
            : (user_getAll as List<Query$User_getAll$user_getAll>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes user_getAll(
          Iterable<Query$User_getAll$user_getAll> Function(
                  Iterable<
                      CopyWith$Query$User_getAll$user_getAll<
                          Query$User_getAll$user_getAll>>)
              _fn) =>
      call(
          user_getAll: _fn(_instance.user_getAll
              .map((e) => CopyWith$Query$User_getAll$user_getAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$User_getAll<TRes>
    implements CopyWith$Query$User_getAll<TRes> {
  _CopyWithStubImpl$Query$User_getAll(this._res);

  TRes _res;

  call({
    List<Query$User_getAll$user_getAll>? user_getAll,
    String? $__typename,
  }) =>
      _res;

  user_getAll(_fn) => _res;
}

const documentNodeQueryUser_getAll = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User_getAll'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user_getAll'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'telegram_id'),
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
            name: NameNode(value: 'country_code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstname'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastname'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'middlename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
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
Query$User_getAll _parserFn$Query$User_getAll(Map<String, dynamic> data) =>
    Query$User_getAll.fromJson(data);
typedef OnQueryComplete$Query$User_getAll = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$User_getAll?,
);

class Options$Query$User_getAll
    extends graphql.QueryOptions<Query$User_getAll> {
  Options$Query$User_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User_getAll? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$User_getAll? onComplete,
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
                    data == null ? null : _parserFn$Query$User_getAll(data),
                  ),
          onError: onError,
          document: documentNodeQueryUser_getAll,
          parserFn: _parserFn$Query$User_getAll,
        );

  final OnQueryComplete$Query$User_getAll? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$User_getAll
    extends graphql.WatchQueryOptions<Query$User_getAll> {
  WatchOptions$Query$User_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User_getAll? typedOptimisticResult,
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
          document: documentNodeQueryUser_getAll,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$User_getAll,
        );
}

class FetchMoreOptions$Query$User_getAll extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$User_getAll({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryUser_getAll,
        );
}

extension ClientExtension$Query$User_getAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$User_getAll>> query$User_getAll(
          [Options$Query$User_getAll? options]) async =>
      await this.query(options ?? Options$Query$User_getAll());
  graphql.ObservableQuery<Query$User_getAll> watchQuery$User_getAll(
          [WatchOptions$Query$User_getAll? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$User_getAll());
  void writeQuery$User_getAll({
    required Query$User_getAll data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryUser_getAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$User_getAll? readQuery$User_getAll({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUser_getAll)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$User_getAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$User_getAll> useQuery$User_getAll(
        [Options$Query$User_getAll? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$User_getAll());
graphql.ObservableQuery<Query$User_getAll> useWatchQuery$User_getAll(
        [WatchOptions$Query$User_getAll? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$User_getAll());

class Query$User_getAll$Widget
    extends graphql_flutter.Query<Query$User_getAll> {
  Query$User_getAll$Widget({
    widgets.Key? key,
    Options$Query$User_getAll? options,
    required graphql_flutter.QueryBuilder<Query$User_getAll> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$User_getAll(),
          builder: builder,
        );
}

class Query$User_getAll$user_getAll {
  Query$User_getAll$user_getAll({
    this.telegram_id,
    required this.id,
    this.country_code,
    this.phone,
    this.firstname,
    this.lastname,
    this.middlename,
    this.email,
    this.$__typename = 'UserDto',
  });

  factory Query$User_getAll$user_getAll.fromJson(Map<String, dynamic> json) {
    final l$telegram_id = json['telegram_id'];
    final l$id = json['id'];
    final l$country_code = json['country_code'];
    final l$phone = json['phone'];
    final l$firstname = json['firstname'];
    final l$lastname = json['lastname'];
    final l$middlename = json['middlename'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$User_getAll$user_getAll(
      telegram_id: (l$telegram_id as String?),
      id: (l$id as String),
      country_code: l$country_code == null
          ? null
          : fromJson$Enum$Country((l$country_code as String)),
      phone: (l$phone as String?),
      firstname: (l$firstname as String?),
      lastname: (l$lastname as String?),
      middlename: (l$middlename as String?),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? telegram_id;

  final String id;

  final Enum$Country? country_code;

  final String? phone;

  final String? firstname;

  final String? lastname;

  final String? middlename;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$telegram_id = telegram_id;
    _resultData['telegram_id'] = l$telegram_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$country_code = country_code;
    _resultData['country_code'] =
        l$country_code == null ? null : toJson$Enum$Country(l$country_code);
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$firstname = firstname;
    _resultData['firstname'] = l$firstname;
    final l$lastname = lastname;
    _resultData['lastname'] = l$lastname;
    final l$middlename = middlename;
    _resultData['middlename'] = l$middlename;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$telegram_id = telegram_id;
    final l$id = id;
    final l$country_code = country_code;
    final l$phone = phone;
    final l$firstname = firstname;
    final l$lastname = lastname;
    final l$middlename = middlename;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$telegram_id,
      l$id,
      l$country_code,
      l$phone,
      l$firstname,
      l$lastname,
      l$middlename,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User_getAll$user_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$telegram_id = telegram_id;
    final lOther$telegram_id = other.telegram_id;
    if (l$telegram_id != lOther$telegram_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$country_code = country_code;
    final lOther$country_code = other.country_code;
    if (l$country_code != lOther$country_code) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$firstname = firstname;
    final lOther$firstname = other.firstname;
    if (l$firstname != lOther$firstname) {
      return false;
    }
    final l$lastname = lastname;
    final lOther$lastname = other.lastname;
    if (l$lastname != lOther$lastname) {
      return false;
    }
    final l$middlename = middlename;
    final lOther$middlename = other.middlename;
    if (l$middlename != lOther$middlename) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Query$User_getAll$user_getAll
    on Query$User_getAll$user_getAll {
  CopyWith$Query$User_getAll$user_getAll<Query$User_getAll$user_getAll>
      get copyWith => CopyWith$Query$User_getAll$user_getAll(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User_getAll$user_getAll<TRes> {
  factory CopyWith$Query$User_getAll$user_getAll(
    Query$User_getAll$user_getAll instance,
    TRes Function(Query$User_getAll$user_getAll) then,
  ) = _CopyWithImpl$Query$User_getAll$user_getAll;

  factory CopyWith$Query$User_getAll$user_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$User_getAll$user_getAll;

  TRes call({
    String? telegram_id,
    String? id,
    Enum$Country? country_code,
    String? phone,
    String? firstname,
    String? lastname,
    String? middlename,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User_getAll$user_getAll<TRes>
    implements CopyWith$Query$User_getAll$user_getAll<TRes> {
  _CopyWithImpl$Query$User_getAll$user_getAll(
    this._instance,
    this._then,
  );

  final Query$User_getAll$user_getAll _instance;

  final TRes Function(Query$User_getAll$user_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? telegram_id = _undefined,
    Object? id = _undefined,
    Object? country_code = _undefined,
    Object? phone = _undefined,
    Object? firstname = _undefined,
    Object? lastname = _undefined,
    Object? middlename = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User_getAll$user_getAll(
        telegram_id: telegram_id == _undefined
            ? _instance.telegram_id
            : (telegram_id as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        country_code: country_code == _undefined
            ? _instance.country_code
            : (country_code as Enum$Country?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        firstname: firstname == _undefined
            ? _instance.firstname
            : (firstname as String?),
        lastname:
            lastname == _undefined ? _instance.lastname : (lastname as String?),
        middlename: middlename == _undefined
            ? _instance.middlename
            : (middlename as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User_getAll$user_getAll<TRes>
    implements CopyWith$Query$User_getAll$user_getAll<TRes> {
  _CopyWithStubImpl$Query$User_getAll$user_getAll(this._res);

  TRes _res;

  call({
    String? telegram_id,
    String? id,
    Enum$Country? country_code,
    String? phone,
    String? firstname,
    String? lastname,
    String? middlename,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Query$user_get {
  Query$user_get({
    required this.user_get,
    this.$__typename = 'Query',
  });

  factory Query$user_get.fromJson(Map<String, dynamic> json) {
    final l$user_get = json['user_get'];
    final l$$__typename = json['__typename'];
    return Query$user_get(
      user_get: Query$user_get$user_get.fromJson(
          (l$user_get as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$user_get$user_get user_get;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_get = user_get;
    _resultData['user_get'] = l$user_get.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_get = user_get;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_get,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$user_get || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_get = user_get;
    final lOther$user_get = other.user_get;
    if (l$user_get != lOther$user_get) {
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

extension UtilityExtension$Query$user_get on Query$user_get {
  CopyWith$Query$user_get<Query$user_get> get copyWith =>
      CopyWith$Query$user_get(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$user_get<TRes> {
  factory CopyWith$Query$user_get(
    Query$user_get instance,
    TRes Function(Query$user_get) then,
  ) = _CopyWithImpl$Query$user_get;

  factory CopyWith$Query$user_get.stub(TRes res) =
      _CopyWithStubImpl$Query$user_get;

  TRes call({
    Query$user_get$user_get? user_get,
    String? $__typename,
  });
  CopyWith$Query$user_get$user_get<TRes> get user_get;
}

class _CopyWithImpl$Query$user_get<TRes>
    implements CopyWith$Query$user_get<TRes> {
  _CopyWithImpl$Query$user_get(
    this._instance,
    this._then,
  );

  final Query$user_get _instance;

  final TRes Function(Query$user_get) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_get = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$user_get(
        user_get: user_get == _undefined || user_get == null
            ? _instance.user_get
            : (user_get as Query$user_get$user_get),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$user_get$user_get<TRes> get user_get {
    final local$user_get = _instance.user_get;
    return CopyWith$Query$user_get$user_get(
        local$user_get, (e) => call(user_get: e));
  }
}

class _CopyWithStubImpl$Query$user_get<TRes>
    implements CopyWith$Query$user_get<TRes> {
  _CopyWithStubImpl$Query$user_get(this._res);

  TRes _res;

  call({
    Query$user_get$user_get? user_get,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$user_get$user_get<TRes> get user_get =>
      CopyWith$Query$user_get$user_get.stub(_res);
}

const documentNodeQueryuser_get = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'user_get'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user_get'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'firstname'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastname'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'middlename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'country_code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bvn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bvn_status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nin_status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dob'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dob_status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'home_address'),
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
Query$user_get _parserFn$Query$user_get(Map<String, dynamic> data) =>
    Query$user_get.fromJson(data);
typedef OnQueryComplete$Query$user_get = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$user_get?,
);

class Options$Query$user_get extends graphql.QueryOptions<Query$user_get> {
  Options$Query$user_get({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$user_get? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$user_get? onComplete,
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
                    data == null ? null : _parserFn$Query$user_get(data),
                  ),
          onError: onError,
          document: documentNodeQueryuser_get,
          parserFn: _parserFn$Query$user_get,
        );

  final OnQueryComplete$Query$user_get? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$user_get
    extends graphql.WatchQueryOptions<Query$user_get> {
  WatchOptions$Query$user_get({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$user_get? typedOptimisticResult,
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
          document: documentNodeQueryuser_get,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$user_get,
        );
}

class FetchMoreOptions$Query$user_get extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$user_get({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryuser_get,
        );
}

extension ClientExtension$Query$user_get on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$user_get>> query$user_get(
          [Options$Query$user_get? options]) async =>
      await this.query(options ?? Options$Query$user_get());
  graphql.ObservableQuery<Query$user_get> watchQuery$user_get(
          [WatchOptions$Query$user_get? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$user_get());
  void writeQuery$user_get({
    required Query$user_get data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryuser_get)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$user_get? readQuery$user_get({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryuser_get)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$user_get.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$user_get> useQuery$user_get(
        [Options$Query$user_get? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$user_get());
graphql.ObservableQuery<Query$user_get> useWatchQuery$user_get(
        [WatchOptions$Query$user_get? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$user_get());

class Query$user_get$Widget extends graphql_flutter.Query<Query$user_get> {
  Query$user_get$Widget({
    widgets.Key? key,
    Options$Query$user_get? options,
    required graphql_flutter.QueryBuilder<Query$user_get> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$user_get(),
          builder: builder,
        );
}

class Query$user_get$user_get {
  Query$user_get$user_get({
    this.firstname,
    this.lastname,
    this.middlename,
    this.email,
    this.country_code,
    this.phone,
    this.bvn,
    this.bvn_status,
    this.nin,
    this.nin_status,
    this.state,
    this.dob,
    this.dob_status,
    this.home_address,
    this.$__typename = 'UserDto',
  });

  factory Query$user_get$user_get.fromJson(Map<String, dynamic> json) {
    final l$firstname = json['firstname'];
    final l$lastname = json['lastname'];
    final l$middlename = json['middlename'];
    final l$email = json['email'];
    final l$country_code = json['country_code'];
    final l$phone = json['phone'];
    final l$bvn = json['bvn'];
    final l$bvn_status = json['bvn_status'];
    final l$nin = json['nin'];
    final l$nin_status = json['nin_status'];
    final l$state = json['state'];
    final l$dob = json['dob'];
    final l$dob_status = json['dob_status'];
    final l$home_address = json['home_address'];
    final l$$__typename = json['__typename'];
    return Query$user_get$user_get(
      firstname: (l$firstname as String?),
      lastname: (l$lastname as String?),
      middlename: (l$middlename as String?),
      email: (l$email as String?),
      country_code: l$country_code == null
          ? null
          : fromJson$Enum$Country((l$country_code as String)),
      phone: (l$phone as String?),
      bvn: (l$bvn as String?),
      bvn_status: l$bvn_status == null
          ? null
          : fromJson$Enum$CredentialsStatus((l$bvn_status as String)),
      nin: (l$nin as String?),
      nin_status: l$nin_status == null
          ? null
          : fromJson$Enum$CredentialsStatus((l$nin_status as String)),
      state: (l$state as String?),
      dob: (l$dob as String?),
      dob_status: l$dob_status == null
          ? null
          : fromJson$Enum$CredentialsStatus((l$dob_status as String)),
      home_address: (l$home_address as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstname;

  final String? lastname;

  final String? middlename;

  final String? email;

  final Enum$Country? country_code;

  final String? phone;

  final String? bvn;

  final Enum$CredentialsStatus? bvn_status;

  final String? nin;

  final Enum$CredentialsStatus? nin_status;

  final String? state;

  final String? dob;

  final Enum$CredentialsStatus? dob_status;

  final String? home_address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstname = firstname;
    _resultData['firstname'] = l$firstname;
    final l$lastname = lastname;
    _resultData['lastname'] = l$lastname;
    final l$middlename = middlename;
    _resultData['middlename'] = l$middlename;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$country_code = country_code;
    _resultData['country_code'] =
        l$country_code == null ? null : toJson$Enum$Country(l$country_code);
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$bvn = bvn;
    _resultData['bvn'] = l$bvn;
    final l$bvn_status = bvn_status;
    _resultData['bvn_status'] = l$bvn_status == null
        ? null
        : toJson$Enum$CredentialsStatus(l$bvn_status);
    final l$nin = nin;
    _resultData['nin'] = l$nin;
    final l$nin_status = nin_status;
    _resultData['nin_status'] = l$nin_status == null
        ? null
        : toJson$Enum$CredentialsStatus(l$nin_status);
    final l$state = state;
    _resultData['state'] = l$state;
    final l$dob = dob;
    _resultData['dob'] = l$dob;
    final l$dob_status = dob_status;
    _resultData['dob_status'] = l$dob_status == null
        ? null
        : toJson$Enum$CredentialsStatus(l$dob_status);
    final l$home_address = home_address;
    _resultData['home_address'] = l$home_address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstname = firstname;
    final l$lastname = lastname;
    final l$middlename = middlename;
    final l$email = email;
    final l$country_code = country_code;
    final l$phone = phone;
    final l$bvn = bvn;
    final l$bvn_status = bvn_status;
    final l$nin = nin;
    final l$nin_status = nin_status;
    final l$state = state;
    final l$dob = dob;
    final l$dob_status = dob_status;
    final l$home_address = home_address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstname,
      l$lastname,
      l$middlename,
      l$email,
      l$country_code,
      l$phone,
      l$bvn,
      l$bvn_status,
      l$nin,
      l$nin_status,
      l$state,
      l$dob,
      l$dob_status,
      l$home_address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$user_get$user_get || runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstname = firstname;
    final lOther$firstname = other.firstname;
    if (l$firstname != lOther$firstname) {
      return false;
    }
    final l$lastname = lastname;
    final lOther$lastname = other.lastname;
    if (l$lastname != lOther$lastname) {
      return false;
    }
    final l$middlename = middlename;
    final lOther$middlename = other.middlename;
    if (l$middlename != lOther$middlename) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$country_code = country_code;
    final lOther$country_code = other.country_code;
    if (l$country_code != lOther$country_code) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$bvn = bvn;
    final lOther$bvn = other.bvn;
    if (l$bvn != lOther$bvn) {
      return false;
    }
    final l$bvn_status = bvn_status;
    final lOther$bvn_status = other.bvn_status;
    if (l$bvn_status != lOther$bvn_status) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (l$nin != lOther$nin) {
      return false;
    }
    final l$nin_status = nin_status;
    final lOther$nin_status = other.nin_status;
    if (l$nin_status != lOther$nin_status) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$dob_status = dob_status;
    final lOther$dob_status = other.dob_status;
    if (l$dob_status != lOther$dob_status) {
      return false;
    }
    final l$home_address = home_address;
    final lOther$home_address = other.home_address;
    if (l$home_address != lOther$home_address) {
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

extension UtilityExtension$Query$user_get$user_get on Query$user_get$user_get {
  CopyWith$Query$user_get$user_get<Query$user_get$user_get> get copyWith =>
      CopyWith$Query$user_get$user_get(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$user_get$user_get<TRes> {
  factory CopyWith$Query$user_get$user_get(
    Query$user_get$user_get instance,
    TRes Function(Query$user_get$user_get) then,
  ) = _CopyWithImpl$Query$user_get$user_get;

  factory CopyWith$Query$user_get$user_get.stub(TRes res) =
      _CopyWithStubImpl$Query$user_get$user_get;

  TRes call({
    String? firstname,
    String? lastname,
    String? middlename,
    String? email,
    Enum$Country? country_code,
    String? phone,
    String? bvn,
    Enum$CredentialsStatus? bvn_status,
    String? nin,
    Enum$CredentialsStatus? nin_status,
    String? state,
    String? dob,
    Enum$CredentialsStatus? dob_status,
    String? home_address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$user_get$user_get<TRes>
    implements CopyWith$Query$user_get$user_get<TRes> {
  _CopyWithImpl$Query$user_get$user_get(
    this._instance,
    this._then,
  );

  final Query$user_get$user_get _instance;

  final TRes Function(Query$user_get$user_get) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstname = _undefined,
    Object? lastname = _undefined,
    Object? middlename = _undefined,
    Object? email = _undefined,
    Object? country_code = _undefined,
    Object? phone = _undefined,
    Object? bvn = _undefined,
    Object? bvn_status = _undefined,
    Object? nin = _undefined,
    Object? nin_status = _undefined,
    Object? state = _undefined,
    Object? dob = _undefined,
    Object? dob_status = _undefined,
    Object? home_address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$user_get$user_get(
        firstname: firstname == _undefined
            ? _instance.firstname
            : (firstname as String?),
        lastname:
            lastname == _undefined ? _instance.lastname : (lastname as String?),
        middlename: middlename == _undefined
            ? _instance.middlename
            : (middlename as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        country_code: country_code == _undefined
            ? _instance.country_code
            : (country_code as Enum$Country?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        bvn: bvn == _undefined ? _instance.bvn : (bvn as String?),
        bvn_status: bvn_status == _undefined
            ? _instance.bvn_status
            : (bvn_status as Enum$CredentialsStatus?),
        nin: nin == _undefined ? _instance.nin : (nin as String?),
        nin_status: nin_status == _undefined
            ? _instance.nin_status
            : (nin_status as Enum$CredentialsStatus?),
        state: state == _undefined ? _instance.state : (state as String?),
        dob: dob == _undefined ? _instance.dob : (dob as String?),
        dob_status: dob_status == _undefined
            ? _instance.dob_status
            : (dob_status as Enum$CredentialsStatus?),
        home_address: home_address == _undefined
            ? _instance.home_address
            : (home_address as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$user_get$user_get<TRes>
    implements CopyWith$Query$user_get$user_get<TRes> {
  _CopyWithStubImpl$Query$user_get$user_get(this._res);

  TRes _res;

  call({
    String? firstname,
    String? lastname,
    String? middlename,
    String? email,
    Enum$Country? country_code,
    String? phone,
    String? bvn,
    Enum$CredentialsStatus? bvn_status,
    String? nin,
    Enum$CredentialsStatus? nin_status,
    String? state,
    String? dob,
    Enum$CredentialsStatus? dob_status,
    String? home_address,
    String? $__typename,
  }) =>
      _res;
}
