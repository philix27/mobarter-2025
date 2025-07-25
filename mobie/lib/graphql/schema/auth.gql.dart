import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$Auth_firebaseLogin {
  factory Variables$Mutation$Auth_firebaseLogin(
          {required Input$Auth_FirebaseLoginInput input}) =>
      Variables$Mutation$Auth_firebaseLogin._({
        r'input': input,
      });

  Variables$Mutation$Auth_firebaseLogin._(this._$data);

  factory Variables$Mutation$Auth_firebaseLogin.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Auth_FirebaseLoginInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Auth_firebaseLogin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Auth_FirebaseLoginInput get input =>
      (_$data['input'] as Input$Auth_FirebaseLoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth_firebaseLogin<
          Variables$Mutation$Auth_firebaseLogin>
      get copyWith => CopyWith$Variables$Mutation$Auth_firebaseLogin(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Auth_firebaseLogin ||
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

abstract class CopyWith$Variables$Mutation$Auth_firebaseLogin<TRes> {
  factory CopyWith$Variables$Mutation$Auth_firebaseLogin(
    Variables$Mutation$Auth_firebaseLogin instance,
    TRes Function(Variables$Mutation$Auth_firebaseLogin) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth_firebaseLogin;

  factory CopyWith$Variables$Mutation$Auth_firebaseLogin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth_firebaseLogin;

  TRes call({Input$Auth_FirebaseLoginInput? input});
}

class _CopyWithImpl$Variables$Mutation$Auth_firebaseLogin<TRes>
    implements CopyWith$Variables$Mutation$Auth_firebaseLogin<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth_firebaseLogin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth_firebaseLogin _instance;

  final TRes Function(Variables$Mutation$Auth_firebaseLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Auth_firebaseLogin._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Auth_FirebaseLoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth_firebaseLogin<TRes>
    implements CopyWith$Variables$Mutation$Auth_firebaseLogin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth_firebaseLogin(this._res);

  TRes _res;

  call({Input$Auth_FirebaseLoginInput? input}) => _res;
}

class Mutation$Auth_firebaseLogin {
  Mutation$Auth_firebaseLogin({
    required this.auth_firebaseLogin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_firebaseLogin.fromJson(Map<String, dynamic> json) {
    final l$auth_firebaseLogin = json['auth_firebaseLogin'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_firebaseLogin(
      auth_firebaseLogin:
          Mutation$Auth_firebaseLogin$auth_firebaseLogin.fromJson(
              (l$auth_firebaseLogin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_firebaseLogin$auth_firebaseLogin auth_firebaseLogin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth_firebaseLogin = auth_firebaseLogin;
    _resultData['auth_firebaseLogin'] = l$auth_firebaseLogin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth_firebaseLogin = auth_firebaseLogin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth_firebaseLogin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_firebaseLogin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth_firebaseLogin = auth_firebaseLogin;
    final lOther$auth_firebaseLogin = other.auth_firebaseLogin;
    if (l$auth_firebaseLogin != lOther$auth_firebaseLogin) {
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

extension UtilityExtension$Mutation$Auth_firebaseLogin
    on Mutation$Auth_firebaseLogin {
  CopyWith$Mutation$Auth_firebaseLogin<Mutation$Auth_firebaseLogin>
      get copyWith => CopyWith$Mutation$Auth_firebaseLogin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_firebaseLogin<TRes> {
  factory CopyWith$Mutation$Auth_firebaseLogin(
    Mutation$Auth_firebaseLogin instance,
    TRes Function(Mutation$Auth_firebaseLogin) then,
  ) = _CopyWithImpl$Mutation$Auth_firebaseLogin;

  factory CopyWith$Mutation$Auth_firebaseLogin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_firebaseLogin;

  TRes call({
    Mutation$Auth_firebaseLogin$auth_firebaseLogin? auth_firebaseLogin,
    String? $__typename,
  });
  CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes>
      get auth_firebaseLogin;
}

class _CopyWithImpl$Mutation$Auth_firebaseLogin<TRes>
    implements CopyWith$Mutation$Auth_firebaseLogin<TRes> {
  _CopyWithImpl$Mutation$Auth_firebaseLogin(
    this._instance,
    this._then,
  );

  final Mutation$Auth_firebaseLogin _instance;

  final TRes Function(Mutation$Auth_firebaseLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth_firebaseLogin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_firebaseLogin(
        auth_firebaseLogin:
            auth_firebaseLogin == _undefined || auth_firebaseLogin == null
                ? _instance.auth_firebaseLogin
                : (auth_firebaseLogin
                    as Mutation$Auth_firebaseLogin$auth_firebaseLogin),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes>
      get auth_firebaseLogin {
    final local$auth_firebaseLogin = _instance.auth_firebaseLogin;
    return CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin(
        local$auth_firebaseLogin, (e) => call(auth_firebaseLogin: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_firebaseLogin<TRes>
    implements CopyWith$Mutation$Auth_firebaseLogin<TRes> {
  _CopyWithStubImpl$Mutation$Auth_firebaseLogin(this._res);

  TRes _res;

  call({
    Mutation$Auth_firebaseLogin$auth_firebaseLogin? auth_firebaseLogin,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes>
      get auth_firebaseLogin =>
          CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin.stub(_res);
}

const documentNodeMutationAuth_firebaseLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth_firebaseLogin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Auth_FirebaseLoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth_firebaseLogin'),
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
            name: NameNode(value: 'token'),
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
Mutation$Auth_firebaseLogin _parserFn$Mutation$Auth_firebaseLogin(
        Map<String, dynamic> data) =>
    Mutation$Auth_firebaseLogin.fromJson(data);
typedef OnMutationCompleted$Mutation$Auth_firebaseLogin = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Auth_firebaseLogin?,
);

class Options$Mutation$Auth_firebaseLogin
    extends graphql.MutationOptions<Mutation$Auth_firebaseLogin> {
  Options$Mutation$Auth_firebaseLogin({
    String? operationName,
    required Variables$Mutation$Auth_firebaseLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_firebaseLogin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_firebaseLogin? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_firebaseLogin>? update,
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
                        : _parserFn$Mutation$Auth_firebaseLogin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_firebaseLogin,
          parserFn: _parserFn$Mutation$Auth_firebaseLogin,
        );

  final OnMutationCompleted$Mutation$Auth_firebaseLogin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Auth_firebaseLogin
    extends graphql.WatchQueryOptions<Mutation$Auth_firebaseLogin> {
  WatchOptions$Mutation$Auth_firebaseLogin({
    String? operationName,
    required Variables$Mutation$Auth_firebaseLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_firebaseLogin? typedOptimisticResult,
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
          document: documentNodeMutationAuth_firebaseLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Auth_firebaseLogin,
        );
}

extension ClientExtension$Mutation$Auth_firebaseLogin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_firebaseLogin>>
      mutate$Auth_firebaseLogin(
              Options$Mutation$Auth_firebaseLogin options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Auth_firebaseLogin>
      watchMutation$Auth_firebaseLogin(
              WatchOptions$Mutation$Auth_firebaseLogin options) =>
          this.watchMutation(options);
}

class Mutation$Auth_firebaseLogin$HookResult {
  Mutation$Auth_firebaseLogin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Auth_firebaseLogin runMutation;

  final graphql.QueryResult<Mutation$Auth_firebaseLogin> result;
}

Mutation$Auth_firebaseLogin$HookResult useMutation$Auth_firebaseLogin(
    [WidgetOptions$Mutation$Auth_firebaseLogin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Auth_firebaseLogin());
  return Mutation$Auth_firebaseLogin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Auth_firebaseLogin>
    useWatchMutation$Auth_firebaseLogin(
            WatchOptions$Mutation$Auth_firebaseLogin options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Auth_firebaseLogin
    extends graphql.MutationOptions<Mutation$Auth_firebaseLogin> {
  WidgetOptions$Mutation$Auth_firebaseLogin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_firebaseLogin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_firebaseLogin? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_firebaseLogin>? update,
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
                        : _parserFn$Mutation$Auth_firebaseLogin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_firebaseLogin,
          parserFn: _parserFn$Mutation$Auth_firebaseLogin,
        );

  final OnMutationCompleted$Mutation$Auth_firebaseLogin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Auth_firebaseLogin
    = graphql.MultiSourceResult<Mutation$Auth_firebaseLogin> Function(
  Variables$Mutation$Auth_firebaseLogin, {
  Object? optimisticResult,
  Mutation$Auth_firebaseLogin? typedOptimisticResult,
});
typedef Builder$Mutation$Auth_firebaseLogin = widgets.Widget Function(
  RunMutation$Mutation$Auth_firebaseLogin,
  graphql.QueryResult<Mutation$Auth_firebaseLogin>?,
);

class Mutation$Auth_firebaseLogin$Widget
    extends graphql_flutter.Mutation<Mutation$Auth_firebaseLogin> {
  Mutation$Auth_firebaseLogin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Auth_firebaseLogin? options,
    required Builder$Mutation$Auth_firebaseLogin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Auth_firebaseLogin(),
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

class Mutation$Auth_firebaseLogin$auth_firebaseLogin {
  Mutation$Auth_firebaseLogin$auth_firebaseLogin({
    this.firstname,
    this.lastname,
    this.middlename,
    this.email,
    this.token,
    this.$__typename = 'Auth_FirebaseLoginResponse',
  });

  factory Mutation$Auth_firebaseLogin$auth_firebaseLogin.fromJson(
      Map<String, dynamic> json) {
    final l$firstname = json['firstname'];
    final l$lastname = json['lastname'];
    final l$middlename = json['middlename'];
    final l$email = json['email'];
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_firebaseLogin$auth_firebaseLogin(
      firstname: (l$firstname as String?),
      lastname: (l$lastname as String?),
      middlename: (l$middlename as String?),
      email: (l$email as String?),
      token: (l$token as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstname;

  final String? lastname;

  final String? middlename;

  final String? email;

  final String? token;

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
    final l$token = token;
    _resultData['token'] = l$token;
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
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstname,
      l$lastname,
      l$middlename,
      l$email,
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_firebaseLogin$auth_firebaseLogin ||
        runtimeType != other.runtimeType) {
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
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
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

extension UtilityExtension$Mutation$Auth_firebaseLogin$auth_firebaseLogin
    on Mutation$Auth_firebaseLogin$auth_firebaseLogin {
  CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<
          Mutation$Auth_firebaseLogin$auth_firebaseLogin>
      get copyWith => CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes> {
  factory CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin(
    Mutation$Auth_firebaseLogin$auth_firebaseLogin instance,
    TRes Function(Mutation$Auth_firebaseLogin$auth_firebaseLogin) then,
  ) = _CopyWithImpl$Mutation$Auth_firebaseLogin$auth_firebaseLogin;

  factory CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Auth_firebaseLogin$auth_firebaseLogin;

  TRes call({
    String? firstname,
    String? lastname,
    String? middlename,
    String? email,
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes>
    implements CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes> {
  _CopyWithImpl$Mutation$Auth_firebaseLogin$auth_firebaseLogin(
    this._instance,
    this._then,
  );

  final Mutation$Auth_firebaseLogin$auth_firebaseLogin _instance;

  final TRes Function(Mutation$Auth_firebaseLogin$auth_firebaseLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstname = _undefined,
    Object? lastname = _undefined,
    Object? middlename = _undefined,
    Object? email = _undefined,
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_firebaseLogin$auth_firebaseLogin(
        firstname: firstname == _undefined
            ? _instance.firstname
            : (firstname as String?),
        lastname:
            lastname == _undefined ? _instance.lastname : (lastname as String?),
        middlename: middlename == _undefined
            ? _instance.middlename
            : (middlename as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        token: token == _undefined ? _instance.token : (token as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes>
    implements CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes> {
  _CopyWithStubImpl$Mutation$Auth_firebaseLogin$auth_firebaseLogin(this._res);

  TRes _res;

  call({
    String? firstname,
    String? lastname,
    String? middlename,
    String? email,
    String? token,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$walletCrypto_mobileCreate {
  factory Variables$Mutation$walletCrypto_mobileCreate(
          {required Input$Wallet_CreateInput input}) =>
      Variables$Mutation$walletCrypto_mobileCreate._({
        r'input': input,
      });

  Variables$Mutation$walletCrypto_mobileCreate._(this._$data);

  factory Variables$Mutation$walletCrypto_mobileCreate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Wallet_CreateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$walletCrypto_mobileCreate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Wallet_CreateInput get input =>
      (_$data['input'] as Input$Wallet_CreateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$walletCrypto_mobileCreate<
          Variables$Mutation$walletCrypto_mobileCreate>
      get copyWith => CopyWith$Variables$Mutation$walletCrypto_mobileCreate(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$walletCrypto_mobileCreate ||
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

abstract class CopyWith$Variables$Mutation$walletCrypto_mobileCreate<TRes> {
  factory CopyWith$Variables$Mutation$walletCrypto_mobileCreate(
    Variables$Mutation$walletCrypto_mobileCreate instance,
    TRes Function(Variables$Mutation$walletCrypto_mobileCreate) then,
  ) = _CopyWithImpl$Variables$Mutation$walletCrypto_mobileCreate;

  factory CopyWith$Variables$Mutation$walletCrypto_mobileCreate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$walletCrypto_mobileCreate;

  TRes call({Input$Wallet_CreateInput? input});
}

class _CopyWithImpl$Variables$Mutation$walletCrypto_mobileCreate<TRes>
    implements CopyWith$Variables$Mutation$walletCrypto_mobileCreate<TRes> {
  _CopyWithImpl$Variables$Mutation$walletCrypto_mobileCreate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$walletCrypto_mobileCreate _instance;

  final TRes Function(Variables$Mutation$walletCrypto_mobileCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$walletCrypto_mobileCreate._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Wallet_CreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$walletCrypto_mobileCreate<TRes>
    implements CopyWith$Variables$Mutation$walletCrypto_mobileCreate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$walletCrypto_mobileCreate(this._res);

  TRes _res;

  call({Input$Wallet_CreateInput? input}) => _res;
}

class Mutation$walletCrypto_mobileCreate {
  Mutation$walletCrypto_mobileCreate({
    required this.walletCrypto_mobileCreate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$walletCrypto_mobileCreate.fromJson(
      Map<String, dynamic> json) {
    final l$walletCrypto_mobileCreate = json['walletCrypto_mobileCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$walletCrypto_mobileCreate(
      walletCrypto_mobileCreate:
          Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate.fromJson(
              (l$walletCrypto_mobileCreate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate
      walletCrypto_mobileCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$walletCrypto_mobileCreate = walletCrypto_mobileCreate;
    _resultData['walletCrypto_mobileCreate'] =
        l$walletCrypto_mobileCreate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$walletCrypto_mobileCreate = walletCrypto_mobileCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$walletCrypto_mobileCreate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$walletCrypto_mobileCreate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$walletCrypto_mobileCreate = walletCrypto_mobileCreate;
    final lOther$walletCrypto_mobileCreate = other.walletCrypto_mobileCreate;
    if (l$walletCrypto_mobileCreate != lOther$walletCrypto_mobileCreate) {
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

extension UtilityExtension$Mutation$walletCrypto_mobileCreate
    on Mutation$walletCrypto_mobileCreate {
  CopyWith$Mutation$walletCrypto_mobileCreate<
          Mutation$walletCrypto_mobileCreate>
      get copyWith => CopyWith$Mutation$walletCrypto_mobileCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$walletCrypto_mobileCreate<TRes> {
  factory CopyWith$Mutation$walletCrypto_mobileCreate(
    Mutation$walletCrypto_mobileCreate instance,
    TRes Function(Mutation$walletCrypto_mobileCreate) then,
  ) = _CopyWithImpl$Mutation$walletCrypto_mobileCreate;

  factory CopyWith$Mutation$walletCrypto_mobileCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$walletCrypto_mobileCreate;

  TRes call({
    Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate?
        walletCrypto_mobileCreate,
    String? $__typename,
  });
  CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<TRes>
      get walletCrypto_mobileCreate;
}

class _CopyWithImpl$Mutation$walletCrypto_mobileCreate<TRes>
    implements CopyWith$Mutation$walletCrypto_mobileCreate<TRes> {
  _CopyWithImpl$Mutation$walletCrypto_mobileCreate(
    this._instance,
    this._then,
  );

  final Mutation$walletCrypto_mobileCreate _instance;

  final TRes Function(Mutation$walletCrypto_mobileCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? walletCrypto_mobileCreate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$walletCrypto_mobileCreate(
        walletCrypto_mobileCreate: walletCrypto_mobileCreate == _undefined ||
                walletCrypto_mobileCreate == null
            ? _instance.walletCrypto_mobileCreate
            : (walletCrypto_mobileCreate
                as Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<TRes>
      get walletCrypto_mobileCreate {
    final local$walletCrypto_mobileCreate = _instance.walletCrypto_mobileCreate;
    return CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate(
        local$walletCrypto_mobileCreate,
        (e) => call(walletCrypto_mobileCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$walletCrypto_mobileCreate<TRes>
    implements CopyWith$Mutation$walletCrypto_mobileCreate<TRes> {
  _CopyWithStubImpl$Mutation$walletCrypto_mobileCreate(this._res);

  TRes _res;

  call({
    Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate?
        walletCrypto_mobileCreate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<TRes>
      get walletCrypto_mobileCreate =>
          CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate
              .stub(_res);
}

const documentNodeMutationwalletCrypto_mobileCreate =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'walletCrypto_mobileCreate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Wallet_CreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'walletCrypto_mobileCreate'),
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
Mutation$walletCrypto_mobileCreate _parserFn$Mutation$walletCrypto_mobileCreate(
        Map<String, dynamic> data) =>
    Mutation$walletCrypto_mobileCreate.fromJson(data);
typedef OnMutationCompleted$Mutation$walletCrypto_mobileCreate = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$walletCrypto_mobileCreate?,
);

class Options$Mutation$walletCrypto_mobileCreate
    extends graphql.MutationOptions<Mutation$walletCrypto_mobileCreate> {
  Options$Mutation$walletCrypto_mobileCreate({
    String? operationName,
    required Variables$Mutation$walletCrypto_mobileCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$walletCrypto_mobileCreate? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$walletCrypto_mobileCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$walletCrypto_mobileCreate>? update,
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
                        : _parserFn$Mutation$walletCrypto_mobileCreate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationwalletCrypto_mobileCreate,
          parserFn: _parserFn$Mutation$walletCrypto_mobileCreate,
        );

  final OnMutationCompleted$Mutation$walletCrypto_mobileCreate?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$walletCrypto_mobileCreate
    extends graphql.WatchQueryOptions<Mutation$walletCrypto_mobileCreate> {
  WatchOptions$Mutation$walletCrypto_mobileCreate({
    String? operationName,
    required Variables$Mutation$walletCrypto_mobileCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$walletCrypto_mobileCreate? typedOptimisticResult,
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
          document: documentNodeMutationwalletCrypto_mobileCreate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$walletCrypto_mobileCreate,
        );
}

extension ClientExtension$Mutation$walletCrypto_mobileCreate
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$walletCrypto_mobileCreate>>
      mutate$walletCrypto_mobileCreate(
              Options$Mutation$walletCrypto_mobileCreate options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$walletCrypto_mobileCreate>
      watchMutation$walletCrypto_mobileCreate(
              WatchOptions$Mutation$walletCrypto_mobileCreate options) =>
          this.watchMutation(options);
}

class Mutation$walletCrypto_mobileCreate$HookResult {
  Mutation$walletCrypto_mobileCreate$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$walletCrypto_mobileCreate runMutation;

  final graphql.QueryResult<Mutation$walletCrypto_mobileCreate> result;
}

Mutation$walletCrypto_mobileCreate$HookResult
    useMutation$walletCrypto_mobileCreate(
        [WidgetOptions$Mutation$walletCrypto_mobileCreate? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$walletCrypto_mobileCreate());
  return Mutation$walletCrypto_mobileCreate$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$walletCrypto_mobileCreate>
    useWatchMutation$walletCrypto_mobileCreate(
            WatchOptions$Mutation$walletCrypto_mobileCreate options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$walletCrypto_mobileCreate
    extends graphql.MutationOptions<Mutation$walletCrypto_mobileCreate> {
  WidgetOptions$Mutation$walletCrypto_mobileCreate({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$walletCrypto_mobileCreate? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$walletCrypto_mobileCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$walletCrypto_mobileCreate>? update,
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
                        : _parserFn$Mutation$walletCrypto_mobileCreate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationwalletCrypto_mobileCreate,
          parserFn: _parserFn$Mutation$walletCrypto_mobileCreate,
        );

  final OnMutationCompleted$Mutation$walletCrypto_mobileCreate?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$walletCrypto_mobileCreate
    = graphql.MultiSourceResult<Mutation$walletCrypto_mobileCreate> Function(
  Variables$Mutation$walletCrypto_mobileCreate, {
  Object? optimisticResult,
  Mutation$walletCrypto_mobileCreate? typedOptimisticResult,
});
typedef Builder$Mutation$walletCrypto_mobileCreate = widgets.Widget Function(
  RunMutation$Mutation$walletCrypto_mobileCreate,
  graphql.QueryResult<Mutation$walletCrypto_mobileCreate>?,
);

class Mutation$walletCrypto_mobileCreate$Widget
    extends graphql_flutter.Mutation<Mutation$walletCrypto_mobileCreate> {
  Mutation$walletCrypto_mobileCreate$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$walletCrypto_mobileCreate? options,
    required Builder$Mutation$walletCrypto_mobileCreate builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$walletCrypto_mobileCreate(),
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

class Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate {
  Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate({
    required this.message,
    this.$__typename = 'Wallet_CreateResponse',
  });

  factory Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate(
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
    if (other
            is! Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate ||
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

extension UtilityExtension$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate
    on Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate {
  CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<
          Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate>
      get copyWith =>
          CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<
    TRes> {
  factory CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate(
    Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate instance,
    TRes Function(Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate)
        then,
  ) = _CopyWithImpl$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate;

  factory CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<
        TRes>
    implements
        CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<
            TRes> {
  _CopyWithImpl$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate(
    this._instance,
    this._then,
  );

  final Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate _instance;

  final TRes Function(
      Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<
        TRes>
    implements
        CopyWith$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate<
            TRes> {
  _CopyWithStubImpl$Mutation$walletCrypto_mobileCreate$walletCrypto_mobileCreate(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}
