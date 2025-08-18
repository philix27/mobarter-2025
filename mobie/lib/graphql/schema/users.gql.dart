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
    final l$userGetall = json['user_getAll'];
    final l$$__typename = json['__typename'];
    return Query$User_getAll(
      user_getAll: (l$userGetall as List<dynamic>)
          .map((e) => Query$User_getAll$user_getAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$User_getAll$user_getAll> user_getAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$userGetall = user_getAll;
    resultData['user_getAll'] = l$userGetall.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$userGetall = user_getAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$userGetall.map((v) => v)),
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
    final l$userGetall = user_getAll;
    final lother$userGetall = other.user_getAll;
    if (l$userGetall.length != lother$userGetall.length) {
      return false;
    }
    for (int i = 0; i < l$userGetall.length; i++) {
      final l$userGetall$entry = l$userGetall[i];
      final lother$userGetall$entry = lother$userGetall[i];
      if (l$userGetall$entry != lother$userGetall$entry) {
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
          fn);
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

  @override
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

  @override
  TRes user_getAll(
          Iterable<Query$User_getAll$user_getAll> Function(
                  Iterable<
                      CopyWith$Query$User_getAll$user_getAll<
                          Query$User_getAll$user_getAll>>)
              fn) =>
      call(
          user_getAll: fn(_instance.user_getAll
              .map((e) => CopyWith$Query$User_getAll$user_getAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$User_getAll<TRes>
    implements CopyWith$Query$User_getAll<TRes> {
  _CopyWithStubImpl$Query$User_getAll(this._res);

  final TRes _res;

  @override
  call({
    List<Query$User_getAll$user_getAll>? user_getAll,
    String? $__typename,
  }) =>
      _res;

  @override
  user_getAll(fn) => _res;
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$User_getAll? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$User_getAll? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$User_getAll(data),
                  ),
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$User_getAll? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryUser_getAll,
          parserFn: _parserFn$Query$User_getAll,
        );
}

class FetchMoreOptions$Query$User_getAll extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$User_getAll({required super.updateQuery})
      : super(
          document: documentNodeQueryUser_getAll,
        );
}

extension ClientExtension$Query$User_getAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$User_getAll>> query$User_getAll(
          [Options$Query$User_getAll? options]) async =>
      await query(options ?? Options$Query$User_getAll());
  graphql.ObservableQuery<Query$User_getAll> watchQuery$User_getAll(
          [WatchOptions$Query$User_getAll? options]) =>
      watchQuery(options ?? WatchOptions$Query$User_getAll());
  void writeQuery$User_getAll({
    required Query$User_getAll data,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryUser_getAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$User_getAll? readQuery$User_getAll({bool optimistic = true}) {
    final result = readQuery(
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
    super.key,
    Options$Query$User_getAll? options,
    required super.builder,
  }) : super(
          options: options ?? Options$Query$User_getAll(),
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
    final l$telegramId = json['telegram_id'];
    final l$id = json['id'];
    final l$countryCode = json['country_code'];
    final l$phone = json['phone'];
    final l$firstname = json['firstname'];
    final l$lastname = json['lastname'];
    final l$middlename = json['middlename'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$User_getAll$user_getAll(
      telegram_id: (l$telegramId as String?),
      id: (l$id as String),
      country_code: l$countryCode == null
          ? null
          : fromJson$Enum$Country((l$countryCode as String)),
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
    final resultData = <String, dynamic>{};
    final l$telegramId = telegram_id;
    resultData['telegram_id'] = l$telegramId;
    final l$id = id;
    resultData['id'] = l$id;
    final l$countryCode = country_code;
    resultData['country_code'] =
        l$countryCode == null ? null : toJson$Enum$Country(l$countryCode);
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$firstname = firstname;
    resultData['firstname'] = l$firstname;
    final l$lastname = lastname;
    resultData['lastname'] = l$lastname;
    final l$middlename = middlename;
    resultData['middlename'] = l$middlename;
    final l$email = email;
    resultData['email'] = l$email;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$telegramId = telegram_id;
    final l$id = id;
    final l$countryCode = country_code;
    final l$phone = phone;
    final l$firstname = firstname;
    final l$lastname = lastname;
    final l$middlename = middlename;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$telegramId,
      l$id,
      l$countryCode,
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
    final l$telegramId = telegram_id;
    final lother$telegramId = other.telegram_id;
    if (l$telegramId != lother$telegramId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$countryCode = country_code;
    final lother$countryCode = other.country_code;
    if (l$countryCode != lother$countryCode) {
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

  @override
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

  final TRes _res;

  @override
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
    final l$userGet = json['user_get'];
    final l$$__typename = json['__typename'];
    return Query$user_get(
      user_get: Query$user_get$user_get.fromJson(
          (l$userGet as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$user_get$user_get user_get;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$userGet = user_get;
    resultData['user_get'] = l$userGet.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$userGet = user_get;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userGet,
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
    final l$userGet = user_get;
    final lother$userGet = other.user_get;
    if (l$userGet != lother$userGet) {
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

  @override
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

  @override
  CopyWith$Query$user_get$user_get<TRes> get user_get {
    final local$userGet = _instance.user_get;
    return CopyWith$Query$user_get$user_get(
        local$userGet, (e) => call(user_get: e));
  }
}

class _CopyWithStubImpl$Query$user_get<TRes>
    implements CopyWith$Query$user_get<TRes> {
  _CopyWithStubImpl$Query$user_get(this._res);

  final TRes _res;

  @override
  call({
    Query$user_get$user_get? user_get,
    String? $__typename,
  }) =>
      _res;

  @override
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$user_get? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$user_get? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$user_get(data),
                  ),
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$user_get? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryuser_get,
          parserFn: _parserFn$Query$user_get,
        );
}

class FetchMoreOptions$Query$user_get extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$user_get({required super.updateQuery})
      : super(
          document: documentNodeQueryuser_get,
        );
}

extension ClientExtension$Query$user_get on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$user_get>> query$user_get(
          [Options$Query$user_get? options]) async =>
      await query(options ?? Options$Query$user_get());
  graphql.ObservableQuery<Query$user_get> watchQuery$user_get(
          [WatchOptions$Query$user_get? options]) =>
      watchQuery(options ?? WatchOptions$Query$user_get());
  void writeQuery$user_get({
    required Query$user_get data,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryuser_get)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$user_get? readQuery$user_get({bool optimistic = true}) {
    final result = readQuery(
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
    super.key,
    Options$Query$user_get? options,
    required super.builder,
  }) : super(
          options: options ?? Options$Query$user_get(),
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
    final l$countryCode = json['country_code'];
    final l$phone = json['phone'];
    final l$bvn = json['bvn'];
    final l$bvnStatus = json['bvn_status'];
    final l$nin = json['nin'];
    final l$ninStatus = json['nin_status'];
    final l$state = json['state'];
    final l$dob = json['dob'];
    final l$dobStatus = json['dob_status'];
    final l$homeAddress = json['home_address'];
    final l$$__typename = json['__typename'];
    return Query$user_get$user_get(
      firstname: (l$firstname as String?),
      lastname: (l$lastname as String?),
      middlename: (l$middlename as String?),
      email: (l$email as String?),
      country_code: l$countryCode == null
          ? null
          : fromJson$Enum$Country((l$countryCode as String)),
      phone: (l$phone as String?),
      bvn: (l$bvn as String?),
      bvn_status: l$bvnStatus == null
          ? null
          : fromJson$Enum$CredentialsStatus((l$bvnStatus as String)),
      nin: (l$nin as String?),
      nin_status: l$ninStatus == null
          ? null
          : fromJson$Enum$CredentialsStatus((l$ninStatus as String)),
      state: (l$state as String?),
      dob: (l$dob as String?),
      dob_status: l$dobStatus == null
          ? null
          : fromJson$Enum$CredentialsStatus((l$dobStatus as String)),
      home_address: (l$homeAddress as String?),
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
    final resultData = <String, dynamic>{};
    final l$firstname = firstname;
    resultData['firstname'] = l$firstname;
    final l$lastname = lastname;
    resultData['lastname'] = l$lastname;
    final l$middlename = middlename;
    resultData['middlename'] = l$middlename;
    final l$email = email;
    resultData['email'] = l$email;
    final l$countryCode = country_code;
    resultData['country_code'] =
        l$countryCode == null ? null : toJson$Enum$Country(l$countryCode);
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$bvn = bvn;
    resultData['bvn'] = l$bvn;
    final l$bvnStatus = bvn_status;
    resultData['bvn_status'] = l$bvnStatus == null
        ? null
        : toJson$Enum$CredentialsStatus(l$bvnStatus);
    final l$nin = nin;
    resultData['nin'] = l$nin;
    final l$ninStatus = nin_status;
    resultData['nin_status'] = l$ninStatus == null
        ? null
        : toJson$Enum$CredentialsStatus(l$ninStatus);
    final l$state = state;
    resultData['state'] = l$state;
    final l$dob = dob;
    resultData['dob'] = l$dob;
    final l$dobStatus = dob_status;
    resultData['dob_status'] = l$dobStatus == null
        ? null
        : toJson$Enum$CredentialsStatus(l$dobStatus);
    final l$homeAddress = home_address;
    resultData['home_address'] = l$homeAddress;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$firstname = firstname;
    final l$lastname = lastname;
    final l$middlename = middlename;
    final l$email = email;
    final l$countryCode = country_code;
    final l$phone = phone;
    final l$bvn = bvn;
    final l$bvnStatus = bvn_status;
    final l$nin = nin;
    final l$ninStatus = nin_status;
    final l$state = state;
    final l$dob = dob;
    final l$dobStatus = dob_status;
    final l$homeAddress = home_address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstname,
      l$lastname,
      l$middlename,
      l$email,
      l$countryCode,
      l$phone,
      l$bvn,
      l$bvnStatus,
      l$nin,
      l$ninStatus,
      l$state,
      l$dob,
      l$dobStatus,
      l$homeAddress,
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
    final l$countryCode = country_code;
    final lother$countryCode = other.country_code;
    if (l$countryCode != lother$countryCode) {
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
    final l$bvnStatus = bvn_status;
    final lother$bvnStatus = other.bvn_status;
    if (l$bvnStatus != lother$bvnStatus) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (l$nin != lOther$nin) {
      return false;
    }
    final l$ninStatus = nin_status;
    final lother$ninStatus = other.nin_status;
    if (l$ninStatus != lother$ninStatus) {
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
    final l$dobStatus = dob_status;
    final lother$dobStatus = other.dob_status;
    if (l$dobStatus != lother$dobStatus) {
      return false;
    }
    final l$homeAddress = home_address;
    final lother$homeAddress = other.home_address;
    if (l$homeAddress != lother$homeAddress) {
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

  @override
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

  final TRes _res;

  @override
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
