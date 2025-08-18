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

  @override
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

  final TRes _res;

  @override
  call({Input$Auth_FirebaseLoginInput? input}) => _res;
}

class Mutation$Auth_firebaseLogin {
  Mutation$Auth_firebaseLogin({
    required this.auth_firebaseLogin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_firebaseLogin.fromJson(Map<String, dynamic> json) {
    final l$authFirebaselogin = json['auth_firebaseLogin'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_firebaseLogin(
      auth_firebaseLogin:
          Mutation$Auth_firebaseLogin$auth_firebaseLogin.fromJson(
              (l$authFirebaselogin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_firebaseLogin$auth_firebaseLogin auth_firebaseLogin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$authFirebaselogin = auth_firebaseLogin;
    resultData['auth_firebaseLogin'] = l$authFirebaselogin.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$authFirebaselogin = auth_firebaseLogin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$authFirebaselogin,
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
    final l$authFirebaselogin = auth_firebaseLogin;
    final lother$authFirebaselogin = other.auth_firebaseLogin;
    if (l$authFirebaselogin != lother$authFirebaselogin) {
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

  @override
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

  @override
  CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin<TRes>
      get auth_firebaseLogin {
    final local$authFirebaselogin = _instance.auth_firebaseLogin;
    return CopyWith$Mutation$Auth_firebaseLogin$auth_firebaseLogin(
        local$authFirebaselogin, (e) => call(auth_firebaseLogin: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_firebaseLogin<TRes>
    implements CopyWith$Mutation$Auth_firebaseLogin<TRes> {
  _CopyWithStubImpl$Mutation$Auth_firebaseLogin(this._res);

  final TRes _res;

  @override
  call({
    Mutation$Auth_firebaseLogin$auth_firebaseLogin? auth_firebaseLogin,
    String? $__typename,
  }) =>
      _res;

  @override
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
    super.operationName,
    required Variables$Mutation$Auth_firebaseLogin variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_firebaseLogin? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$Auth_firebaseLogin? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$Auth_firebaseLogin(data),
                  ),
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
    super.operationName,
    required Variables$Mutation$Auth_firebaseLogin variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_firebaseLogin? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeMutationAuth_firebaseLogin,
          parserFn: _parserFn$Mutation$Auth_firebaseLogin,
        );
}

extension ClientExtension$Mutation$Auth_firebaseLogin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_firebaseLogin>>
      mutate$Auth_firebaseLogin(
              Options$Mutation$Auth_firebaseLogin options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$Auth_firebaseLogin>
      watchMutation$Auth_firebaseLogin(
              WatchOptions$Mutation$Auth_firebaseLogin options) =>
          watchMutation(options);
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_firebaseLogin? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$Auth_firebaseLogin? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$Auth_firebaseLogin(data),
                  ),
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
    super.key,
    WidgetOptions$Mutation$Auth_firebaseLogin? options,
    required Builder$Mutation$Auth_firebaseLogin builder,
  }) : super(
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
    final resultData = <String, dynamic>{};
    final l$firstname = firstname;
    resultData['firstname'] = l$firstname;
    final l$lastname = lastname;
    resultData['lastname'] = l$lastname;
    final l$middlename = middlename;
    resultData['middlename'] = l$middlename;
    final l$email = email;
    resultData['email'] = l$email;
    final l$token = token;
    resultData['token'] = l$token;
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

  @override
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

  final TRes _res;

  @override
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
