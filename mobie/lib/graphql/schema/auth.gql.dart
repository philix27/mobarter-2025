import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$Auth_resetPassword {
  factory Variables$Mutation$Auth_resetPassword(
          {required Input$Auth_ResetPasswordInput input}) =>
      Variables$Mutation$Auth_resetPassword._({
        r'input': input,
      });

  Variables$Mutation$Auth_resetPassword._(this._$data);

  factory Variables$Mutation$Auth_resetPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Auth_ResetPasswordInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Auth_resetPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Auth_ResetPasswordInput get input =>
      (_$data['input'] as Input$Auth_ResetPasswordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth_resetPassword<
          Variables$Mutation$Auth_resetPassword>
      get copyWith => CopyWith$Variables$Mutation$Auth_resetPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Auth_resetPassword ||
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

abstract class CopyWith$Variables$Mutation$Auth_resetPassword<TRes> {
  factory CopyWith$Variables$Mutation$Auth_resetPassword(
    Variables$Mutation$Auth_resetPassword instance,
    TRes Function(Variables$Mutation$Auth_resetPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth_resetPassword;

  factory CopyWith$Variables$Mutation$Auth_resetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth_resetPassword;

  TRes call({Input$Auth_ResetPasswordInput? input});
}

class _CopyWithImpl$Variables$Mutation$Auth_resetPassword<TRes>
    implements CopyWith$Variables$Mutation$Auth_resetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth_resetPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth_resetPassword _instance;

  final TRes Function(Variables$Mutation$Auth_resetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Auth_resetPassword._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Auth_ResetPasswordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth_resetPassword<TRes>
    implements CopyWith$Variables$Mutation$Auth_resetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth_resetPassword(this._res);

  TRes _res;

  call({Input$Auth_ResetPasswordInput? input}) => _res;
}

class Mutation$Auth_resetPassword {
  Mutation$Auth_resetPassword({
    required this.auth_resetPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_resetPassword.fromJson(Map<String, dynamic> json) {
    final l$auth_resetPassword = json['auth_resetPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_resetPassword(
      auth_resetPassword:
          Mutation$Auth_resetPassword$auth_resetPassword.fromJson(
              (l$auth_resetPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_resetPassword$auth_resetPassword auth_resetPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth_resetPassword = auth_resetPassword;
    _resultData['auth_resetPassword'] = l$auth_resetPassword.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth_resetPassword = auth_resetPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth_resetPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_resetPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth_resetPassword = auth_resetPassword;
    final lOther$auth_resetPassword = other.auth_resetPassword;
    if (l$auth_resetPassword != lOther$auth_resetPassword) {
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

extension UtilityExtension$Mutation$Auth_resetPassword
    on Mutation$Auth_resetPassword {
  CopyWith$Mutation$Auth_resetPassword<Mutation$Auth_resetPassword>
      get copyWith => CopyWith$Mutation$Auth_resetPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_resetPassword<TRes> {
  factory CopyWith$Mutation$Auth_resetPassword(
    Mutation$Auth_resetPassword instance,
    TRes Function(Mutation$Auth_resetPassword) then,
  ) = _CopyWithImpl$Mutation$Auth_resetPassword;

  factory CopyWith$Mutation$Auth_resetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_resetPassword;

  TRes call({
    Mutation$Auth_resetPassword$auth_resetPassword? auth_resetPassword,
    String? $__typename,
  });
  CopyWith$Mutation$Auth_resetPassword$auth_resetPassword<TRes>
      get auth_resetPassword;
}

class _CopyWithImpl$Mutation$Auth_resetPassword<TRes>
    implements CopyWith$Mutation$Auth_resetPassword<TRes> {
  _CopyWithImpl$Mutation$Auth_resetPassword(
    this._instance,
    this._then,
  );

  final Mutation$Auth_resetPassword _instance;

  final TRes Function(Mutation$Auth_resetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth_resetPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_resetPassword(
        auth_resetPassword:
            auth_resetPassword == _undefined || auth_resetPassword == null
                ? _instance.auth_resetPassword
                : (auth_resetPassword
                    as Mutation$Auth_resetPassword$auth_resetPassword),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth_resetPassword$auth_resetPassword<TRes>
      get auth_resetPassword {
    final local$auth_resetPassword = _instance.auth_resetPassword;
    return CopyWith$Mutation$Auth_resetPassword$auth_resetPassword(
        local$auth_resetPassword, (e) => call(auth_resetPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_resetPassword<TRes>
    implements CopyWith$Mutation$Auth_resetPassword<TRes> {
  _CopyWithStubImpl$Mutation$Auth_resetPassword(this._res);

  TRes _res;

  call({
    Mutation$Auth_resetPassword$auth_resetPassword? auth_resetPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth_resetPassword$auth_resetPassword<TRes>
      get auth_resetPassword =>
          CopyWith$Mutation$Auth_resetPassword$auth_resetPassword.stub(_res);
}

const documentNodeMutationAuth_resetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth_resetPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Auth_ResetPasswordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth_resetPassword'),
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
Mutation$Auth_resetPassword _parserFn$Mutation$Auth_resetPassword(
        Map<String, dynamic> data) =>
    Mutation$Auth_resetPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$Auth_resetPassword = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Auth_resetPassword?,
);

class Options$Mutation$Auth_resetPassword
    extends graphql.MutationOptions<Mutation$Auth_resetPassword> {
  Options$Mutation$Auth_resetPassword({
    String? operationName,
    required Variables$Mutation$Auth_resetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_resetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_resetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_resetPassword>? update,
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
                        : _parserFn$Mutation$Auth_resetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_resetPassword,
          parserFn: _parserFn$Mutation$Auth_resetPassword,
        );

  final OnMutationCompleted$Mutation$Auth_resetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Auth_resetPassword
    extends graphql.WatchQueryOptions<Mutation$Auth_resetPassword> {
  WatchOptions$Mutation$Auth_resetPassword({
    String? operationName,
    required Variables$Mutation$Auth_resetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_resetPassword? typedOptimisticResult,
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
          document: documentNodeMutationAuth_resetPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Auth_resetPassword,
        );
}

extension ClientExtension$Mutation$Auth_resetPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_resetPassword>>
      mutate$Auth_resetPassword(
              Options$Mutation$Auth_resetPassword options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Auth_resetPassword>
      watchMutation$Auth_resetPassword(
              WatchOptions$Mutation$Auth_resetPassword options) =>
          this.watchMutation(options);
}

class Mutation$Auth_resetPassword$HookResult {
  Mutation$Auth_resetPassword$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Auth_resetPassword runMutation;

  final graphql.QueryResult<Mutation$Auth_resetPassword> result;
}

Mutation$Auth_resetPassword$HookResult useMutation$Auth_resetPassword(
    [WidgetOptions$Mutation$Auth_resetPassword? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Auth_resetPassword());
  return Mutation$Auth_resetPassword$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Auth_resetPassword>
    useWatchMutation$Auth_resetPassword(
            WatchOptions$Mutation$Auth_resetPassword options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Auth_resetPassword
    extends graphql.MutationOptions<Mutation$Auth_resetPassword> {
  WidgetOptions$Mutation$Auth_resetPassword({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_resetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_resetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_resetPassword>? update,
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
                        : _parserFn$Mutation$Auth_resetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_resetPassword,
          parserFn: _parserFn$Mutation$Auth_resetPassword,
        );

  final OnMutationCompleted$Mutation$Auth_resetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Auth_resetPassword
    = graphql.MultiSourceResult<Mutation$Auth_resetPassword> Function(
  Variables$Mutation$Auth_resetPassword, {
  Object? optimisticResult,
  Mutation$Auth_resetPassword? typedOptimisticResult,
});
typedef Builder$Mutation$Auth_resetPassword = widgets.Widget Function(
  RunMutation$Mutation$Auth_resetPassword,
  graphql.QueryResult<Mutation$Auth_resetPassword>?,
);

class Mutation$Auth_resetPassword$Widget
    extends graphql_flutter.Mutation<Mutation$Auth_resetPassword> {
  Mutation$Auth_resetPassword$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Auth_resetPassword? options,
    required Builder$Mutation$Auth_resetPassword builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Auth_resetPassword(),
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

class Mutation$Auth_resetPassword$auth_resetPassword {
  Mutation$Auth_resetPassword$auth_resetPassword({
    required this.message,
    this.$__typename = 'Auth_ResetPasswordResponse',
  });

  factory Mutation$Auth_resetPassword$auth_resetPassword.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_resetPassword$auth_resetPassword(
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
    if (other is! Mutation$Auth_resetPassword$auth_resetPassword ||
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

extension UtilityExtension$Mutation$Auth_resetPassword$auth_resetPassword
    on Mutation$Auth_resetPassword$auth_resetPassword {
  CopyWith$Mutation$Auth_resetPassword$auth_resetPassword<
          Mutation$Auth_resetPassword$auth_resetPassword>
      get copyWith => CopyWith$Mutation$Auth_resetPassword$auth_resetPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_resetPassword$auth_resetPassword<TRes> {
  factory CopyWith$Mutation$Auth_resetPassword$auth_resetPassword(
    Mutation$Auth_resetPassword$auth_resetPassword instance,
    TRes Function(Mutation$Auth_resetPassword$auth_resetPassword) then,
  ) = _CopyWithImpl$Mutation$Auth_resetPassword$auth_resetPassword;

  factory CopyWith$Mutation$Auth_resetPassword$auth_resetPassword.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Auth_resetPassword$auth_resetPassword;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Auth_resetPassword$auth_resetPassword<TRes>
    implements CopyWith$Mutation$Auth_resetPassword$auth_resetPassword<TRes> {
  _CopyWithImpl$Mutation$Auth_resetPassword$auth_resetPassword(
    this._instance,
    this._then,
  );

  final Mutation$Auth_resetPassword$auth_resetPassword _instance;

  final TRes Function(Mutation$Auth_resetPassword$auth_resetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_resetPassword$auth_resetPassword(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth_resetPassword$auth_resetPassword<TRes>
    implements CopyWith$Mutation$Auth_resetPassword$auth_resetPassword<TRes> {
  _CopyWithStubImpl$Mutation$Auth_resetPassword$auth_resetPassword(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Auth_sendEmailOtp {
  factory Variables$Mutation$Auth_sendEmailOtp(
          {required Input$Auth_sendEmailOtpInput input}) =>
      Variables$Mutation$Auth_sendEmailOtp._({
        r'input': input,
      });

  Variables$Mutation$Auth_sendEmailOtp._(this._$data);

  factory Variables$Mutation$Auth_sendEmailOtp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Auth_sendEmailOtpInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Auth_sendEmailOtp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Auth_sendEmailOtpInput get input =>
      (_$data['input'] as Input$Auth_sendEmailOtpInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth_sendEmailOtp<
          Variables$Mutation$Auth_sendEmailOtp>
      get copyWith => CopyWith$Variables$Mutation$Auth_sendEmailOtp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Auth_sendEmailOtp ||
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

abstract class CopyWith$Variables$Mutation$Auth_sendEmailOtp<TRes> {
  factory CopyWith$Variables$Mutation$Auth_sendEmailOtp(
    Variables$Mutation$Auth_sendEmailOtp instance,
    TRes Function(Variables$Mutation$Auth_sendEmailOtp) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth_sendEmailOtp;

  factory CopyWith$Variables$Mutation$Auth_sendEmailOtp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth_sendEmailOtp;

  TRes call({Input$Auth_sendEmailOtpInput? input});
}

class _CopyWithImpl$Variables$Mutation$Auth_sendEmailOtp<TRes>
    implements CopyWith$Variables$Mutation$Auth_sendEmailOtp<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth_sendEmailOtp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth_sendEmailOtp _instance;

  final TRes Function(Variables$Mutation$Auth_sendEmailOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Auth_sendEmailOtp._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Auth_sendEmailOtpInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth_sendEmailOtp<TRes>
    implements CopyWith$Variables$Mutation$Auth_sendEmailOtp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth_sendEmailOtp(this._res);

  TRes _res;

  call({Input$Auth_sendEmailOtpInput? input}) => _res;
}

class Mutation$Auth_sendEmailOtp {
  Mutation$Auth_sendEmailOtp({
    required this.auth_sendEmailOtp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_sendEmailOtp.fromJson(Map<String, dynamic> json) {
    final l$auth_sendEmailOtp = json['auth_sendEmailOtp'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_sendEmailOtp(
      auth_sendEmailOtp: Mutation$Auth_sendEmailOtp$auth_sendEmailOtp.fromJson(
          (l$auth_sendEmailOtp as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_sendEmailOtp$auth_sendEmailOtp auth_sendEmailOtp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth_sendEmailOtp = auth_sendEmailOtp;
    _resultData['auth_sendEmailOtp'] = l$auth_sendEmailOtp.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth_sendEmailOtp = auth_sendEmailOtp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth_sendEmailOtp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_sendEmailOtp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth_sendEmailOtp = auth_sendEmailOtp;
    final lOther$auth_sendEmailOtp = other.auth_sendEmailOtp;
    if (l$auth_sendEmailOtp != lOther$auth_sendEmailOtp) {
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

extension UtilityExtension$Mutation$Auth_sendEmailOtp
    on Mutation$Auth_sendEmailOtp {
  CopyWith$Mutation$Auth_sendEmailOtp<Mutation$Auth_sendEmailOtp>
      get copyWith => CopyWith$Mutation$Auth_sendEmailOtp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_sendEmailOtp<TRes> {
  factory CopyWith$Mutation$Auth_sendEmailOtp(
    Mutation$Auth_sendEmailOtp instance,
    TRes Function(Mutation$Auth_sendEmailOtp) then,
  ) = _CopyWithImpl$Mutation$Auth_sendEmailOtp;

  factory CopyWith$Mutation$Auth_sendEmailOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_sendEmailOtp;

  TRes call({
    Mutation$Auth_sendEmailOtp$auth_sendEmailOtp? auth_sendEmailOtp,
    String? $__typename,
  });
  CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes>
      get auth_sendEmailOtp;
}

class _CopyWithImpl$Mutation$Auth_sendEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_sendEmailOtp<TRes> {
  _CopyWithImpl$Mutation$Auth_sendEmailOtp(
    this._instance,
    this._then,
  );

  final Mutation$Auth_sendEmailOtp _instance;

  final TRes Function(Mutation$Auth_sendEmailOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth_sendEmailOtp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_sendEmailOtp(
        auth_sendEmailOtp:
            auth_sendEmailOtp == _undefined || auth_sendEmailOtp == null
                ? _instance.auth_sendEmailOtp
                : (auth_sendEmailOtp
                    as Mutation$Auth_sendEmailOtp$auth_sendEmailOtp),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes>
      get auth_sendEmailOtp {
    final local$auth_sendEmailOtp = _instance.auth_sendEmailOtp;
    return CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp(
        local$auth_sendEmailOtp, (e) => call(auth_sendEmailOtp: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_sendEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_sendEmailOtp<TRes> {
  _CopyWithStubImpl$Mutation$Auth_sendEmailOtp(this._res);

  TRes _res;

  call({
    Mutation$Auth_sendEmailOtp$auth_sendEmailOtp? auth_sendEmailOtp,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes>
      get auth_sendEmailOtp =>
          CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp.stub(_res);
}

const documentNodeMutationAuth_sendEmailOtp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth_sendEmailOtp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Auth_sendEmailOtpInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth_sendEmailOtp'),
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
Mutation$Auth_sendEmailOtp _parserFn$Mutation$Auth_sendEmailOtp(
        Map<String, dynamic> data) =>
    Mutation$Auth_sendEmailOtp.fromJson(data);
typedef OnMutationCompleted$Mutation$Auth_sendEmailOtp = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Auth_sendEmailOtp?,
);

class Options$Mutation$Auth_sendEmailOtp
    extends graphql.MutationOptions<Mutation$Auth_sendEmailOtp> {
  Options$Mutation$Auth_sendEmailOtp({
    String? operationName,
    required Variables$Mutation$Auth_sendEmailOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_sendEmailOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_sendEmailOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_sendEmailOtp>? update,
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
                        : _parserFn$Mutation$Auth_sendEmailOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_sendEmailOtp,
          parserFn: _parserFn$Mutation$Auth_sendEmailOtp,
        );

  final OnMutationCompleted$Mutation$Auth_sendEmailOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Auth_sendEmailOtp
    extends graphql.WatchQueryOptions<Mutation$Auth_sendEmailOtp> {
  WatchOptions$Mutation$Auth_sendEmailOtp({
    String? operationName,
    required Variables$Mutation$Auth_sendEmailOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_sendEmailOtp? typedOptimisticResult,
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
          document: documentNodeMutationAuth_sendEmailOtp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Auth_sendEmailOtp,
        );
}

extension ClientExtension$Mutation$Auth_sendEmailOtp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_sendEmailOtp>>
      mutate$Auth_sendEmailOtp(
              Options$Mutation$Auth_sendEmailOtp options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Auth_sendEmailOtp>
      watchMutation$Auth_sendEmailOtp(
              WatchOptions$Mutation$Auth_sendEmailOtp options) =>
          this.watchMutation(options);
}

class Mutation$Auth_sendEmailOtp$HookResult {
  Mutation$Auth_sendEmailOtp$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Auth_sendEmailOtp runMutation;

  final graphql.QueryResult<Mutation$Auth_sendEmailOtp> result;
}

Mutation$Auth_sendEmailOtp$HookResult useMutation$Auth_sendEmailOtp(
    [WidgetOptions$Mutation$Auth_sendEmailOtp? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Auth_sendEmailOtp());
  return Mutation$Auth_sendEmailOtp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Auth_sendEmailOtp>
    useWatchMutation$Auth_sendEmailOtp(
            WatchOptions$Mutation$Auth_sendEmailOtp options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Auth_sendEmailOtp
    extends graphql.MutationOptions<Mutation$Auth_sendEmailOtp> {
  WidgetOptions$Mutation$Auth_sendEmailOtp({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_sendEmailOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_sendEmailOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_sendEmailOtp>? update,
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
                        : _parserFn$Mutation$Auth_sendEmailOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_sendEmailOtp,
          parserFn: _parserFn$Mutation$Auth_sendEmailOtp,
        );

  final OnMutationCompleted$Mutation$Auth_sendEmailOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Auth_sendEmailOtp
    = graphql.MultiSourceResult<Mutation$Auth_sendEmailOtp> Function(
  Variables$Mutation$Auth_sendEmailOtp, {
  Object? optimisticResult,
  Mutation$Auth_sendEmailOtp? typedOptimisticResult,
});
typedef Builder$Mutation$Auth_sendEmailOtp = widgets.Widget Function(
  RunMutation$Mutation$Auth_sendEmailOtp,
  graphql.QueryResult<Mutation$Auth_sendEmailOtp>?,
);

class Mutation$Auth_sendEmailOtp$Widget
    extends graphql_flutter.Mutation<Mutation$Auth_sendEmailOtp> {
  Mutation$Auth_sendEmailOtp$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Auth_sendEmailOtp? options,
    required Builder$Mutation$Auth_sendEmailOtp builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Auth_sendEmailOtp(),
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

class Mutation$Auth_sendEmailOtp$auth_sendEmailOtp {
  Mutation$Auth_sendEmailOtp$auth_sendEmailOtp({
    required this.message,
    required this.token,
    this.$__typename = 'Auth_sendEmailOtpResponse',
  });

  factory Mutation$Auth_sendEmailOtp$auth_sendEmailOtp.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_sendEmailOtp$auth_sendEmailOtp(
      message: (l$message as String),
      token: (l$token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_sendEmailOtp$auth_sendEmailOtp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp
    on Mutation$Auth_sendEmailOtp$auth_sendEmailOtp {
  CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<
          Mutation$Auth_sendEmailOtp$auth_sendEmailOtp>
      get copyWith => CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes> {
  factory CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp(
    Mutation$Auth_sendEmailOtp$auth_sendEmailOtp instance,
    TRes Function(Mutation$Auth_sendEmailOtp$auth_sendEmailOtp) then,
  ) = _CopyWithImpl$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp;

  factory CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp;

  TRes call({
    String? message,
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes> {
  _CopyWithImpl$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp(
    this._instance,
    this._then,
  );

  final Mutation$Auth_sendEmailOtp$auth_sendEmailOtp _instance;

  final TRes Function(Mutation$Auth_sendEmailOtp$auth_sendEmailOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_sendEmailOtp$auth_sendEmailOtp(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp<TRes> {
  _CopyWithStubImpl$Mutation$Auth_sendEmailOtp$auth_sendEmailOtp(this._res);

  TRes _res;

  call({
    String? message,
    String? token,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Auth_verifyEmailOtp {
  factory Variables$Mutation$Auth_verifyEmailOtp(
          {required Input$Auth_verifyEmailOtpInput input}) =>
      Variables$Mutation$Auth_verifyEmailOtp._({
        r'input': input,
      });

  Variables$Mutation$Auth_verifyEmailOtp._(this._$data);

  factory Variables$Mutation$Auth_verifyEmailOtp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Auth_verifyEmailOtpInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Auth_verifyEmailOtp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Auth_verifyEmailOtpInput get input =>
      (_$data['input'] as Input$Auth_verifyEmailOtpInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth_verifyEmailOtp<
          Variables$Mutation$Auth_verifyEmailOtp>
      get copyWith => CopyWith$Variables$Mutation$Auth_verifyEmailOtp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Auth_verifyEmailOtp ||
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

abstract class CopyWith$Variables$Mutation$Auth_verifyEmailOtp<TRes> {
  factory CopyWith$Variables$Mutation$Auth_verifyEmailOtp(
    Variables$Mutation$Auth_verifyEmailOtp instance,
    TRes Function(Variables$Mutation$Auth_verifyEmailOtp) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth_verifyEmailOtp;

  factory CopyWith$Variables$Mutation$Auth_verifyEmailOtp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth_verifyEmailOtp;

  TRes call({Input$Auth_verifyEmailOtpInput? input});
}

class _CopyWithImpl$Variables$Mutation$Auth_verifyEmailOtp<TRes>
    implements CopyWith$Variables$Mutation$Auth_verifyEmailOtp<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth_verifyEmailOtp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth_verifyEmailOtp _instance;

  final TRes Function(Variables$Mutation$Auth_verifyEmailOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Auth_verifyEmailOtp._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Auth_verifyEmailOtpInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth_verifyEmailOtp<TRes>
    implements CopyWith$Variables$Mutation$Auth_verifyEmailOtp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth_verifyEmailOtp(this._res);

  TRes _res;

  call({Input$Auth_verifyEmailOtpInput? input}) => _res;
}

class Mutation$Auth_verifyEmailOtp {
  Mutation$Auth_verifyEmailOtp({
    required this.auth_verifyEmailOtp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_verifyEmailOtp.fromJson(Map<String, dynamic> json) {
    final l$auth_verifyEmailOtp = json['auth_verifyEmailOtp'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_verifyEmailOtp(
      auth_verifyEmailOtp:
          Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp.fromJson(
              (l$auth_verifyEmailOtp as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp auth_verifyEmailOtp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth_verifyEmailOtp = auth_verifyEmailOtp;
    _resultData['auth_verifyEmailOtp'] = l$auth_verifyEmailOtp.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth_verifyEmailOtp = auth_verifyEmailOtp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth_verifyEmailOtp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_verifyEmailOtp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth_verifyEmailOtp = auth_verifyEmailOtp;
    final lOther$auth_verifyEmailOtp = other.auth_verifyEmailOtp;
    if (l$auth_verifyEmailOtp != lOther$auth_verifyEmailOtp) {
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

extension UtilityExtension$Mutation$Auth_verifyEmailOtp
    on Mutation$Auth_verifyEmailOtp {
  CopyWith$Mutation$Auth_verifyEmailOtp<Mutation$Auth_verifyEmailOtp>
      get copyWith => CopyWith$Mutation$Auth_verifyEmailOtp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_verifyEmailOtp<TRes> {
  factory CopyWith$Mutation$Auth_verifyEmailOtp(
    Mutation$Auth_verifyEmailOtp instance,
    TRes Function(Mutation$Auth_verifyEmailOtp) then,
  ) = _CopyWithImpl$Mutation$Auth_verifyEmailOtp;

  factory CopyWith$Mutation$Auth_verifyEmailOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_verifyEmailOtp;

  TRes call({
    Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp? auth_verifyEmailOtp,
    String? $__typename,
  });
  CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes>
      get auth_verifyEmailOtp;
}

class _CopyWithImpl$Mutation$Auth_verifyEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_verifyEmailOtp<TRes> {
  _CopyWithImpl$Mutation$Auth_verifyEmailOtp(
    this._instance,
    this._then,
  );

  final Mutation$Auth_verifyEmailOtp _instance;

  final TRes Function(Mutation$Auth_verifyEmailOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth_verifyEmailOtp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_verifyEmailOtp(
        auth_verifyEmailOtp:
            auth_verifyEmailOtp == _undefined || auth_verifyEmailOtp == null
                ? _instance.auth_verifyEmailOtp
                : (auth_verifyEmailOtp
                    as Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes>
      get auth_verifyEmailOtp {
    final local$auth_verifyEmailOtp = _instance.auth_verifyEmailOtp;
    return CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp(
        local$auth_verifyEmailOtp, (e) => call(auth_verifyEmailOtp: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_verifyEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_verifyEmailOtp<TRes> {
  _CopyWithStubImpl$Mutation$Auth_verifyEmailOtp(this._res);

  TRes _res;

  call({
    Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp? auth_verifyEmailOtp,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes>
      get auth_verifyEmailOtp =>
          CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp.stub(_res);
}

const documentNodeMutationAuth_verifyEmailOtp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth_verifyEmailOtp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Auth_verifyEmailOtpInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth_verifyEmailOtp'),
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
Mutation$Auth_verifyEmailOtp _parserFn$Mutation$Auth_verifyEmailOtp(
        Map<String, dynamic> data) =>
    Mutation$Auth_verifyEmailOtp.fromJson(data);
typedef OnMutationCompleted$Mutation$Auth_verifyEmailOtp = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Auth_verifyEmailOtp?,
);

class Options$Mutation$Auth_verifyEmailOtp
    extends graphql.MutationOptions<Mutation$Auth_verifyEmailOtp> {
  Options$Mutation$Auth_verifyEmailOtp({
    String? operationName,
    required Variables$Mutation$Auth_verifyEmailOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_verifyEmailOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_verifyEmailOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_verifyEmailOtp>? update,
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
                        : _parserFn$Mutation$Auth_verifyEmailOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_verifyEmailOtp,
          parserFn: _parserFn$Mutation$Auth_verifyEmailOtp,
        );

  final OnMutationCompleted$Mutation$Auth_verifyEmailOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Auth_verifyEmailOtp
    extends graphql.WatchQueryOptions<Mutation$Auth_verifyEmailOtp> {
  WatchOptions$Mutation$Auth_verifyEmailOtp({
    String? operationName,
    required Variables$Mutation$Auth_verifyEmailOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_verifyEmailOtp? typedOptimisticResult,
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
          document: documentNodeMutationAuth_verifyEmailOtp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Auth_verifyEmailOtp,
        );
}

extension ClientExtension$Mutation$Auth_verifyEmailOtp
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_verifyEmailOtp>>
      mutate$Auth_verifyEmailOtp(
              Options$Mutation$Auth_verifyEmailOtp options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Auth_verifyEmailOtp>
      watchMutation$Auth_verifyEmailOtp(
              WatchOptions$Mutation$Auth_verifyEmailOtp options) =>
          this.watchMutation(options);
}

class Mutation$Auth_verifyEmailOtp$HookResult {
  Mutation$Auth_verifyEmailOtp$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Auth_verifyEmailOtp runMutation;

  final graphql.QueryResult<Mutation$Auth_verifyEmailOtp> result;
}

Mutation$Auth_verifyEmailOtp$HookResult useMutation$Auth_verifyEmailOtp(
    [WidgetOptions$Mutation$Auth_verifyEmailOtp? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Auth_verifyEmailOtp());
  return Mutation$Auth_verifyEmailOtp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Auth_verifyEmailOtp>
    useWatchMutation$Auth_verifyEmailOtp(
            WatchOptions$Mutation$Auth_verifyEmailOtp options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Auth_verifyEmailOtp
    extends graphql.MutationOptions<Mutation$Auth_verifyEmailOtp> {
  WidgetOptions$Mutation$Auth_verifyEmailOtp({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_verifyEmailOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_verifyEmailOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_verifyEmailOtp>? update,
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
                        : _parserFn$Mutation$Auth_verifyEmailOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_verifyEmailOtp,
          parserFn: _parserFn$Mutation$Auth_verifyEmailOtp,
        );

  final OnMutationCompleted$Mutation$Auth_verifyEmailOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Auth_verifyEmailOtp
    = graphql.MultiSourceResult<Mutation$Auth_verifyEmailOtp> Function(
  Variables$Mutation$Auth_verifyEmailOtp, {
  Object? optimisticResult,
  Mutation$Auth_verifyEmailOtp? typedOptimisticResult,
});
typedef Builder$Mutation$Auth_verifyEmailOtp = widgets.Widget Function(
  RunMutation$Mutation$Auth_verifyEmailOtp,
  graphql.QueryResult<Mutation$Auth_verifyEmailOtp>?,
);

class Mutation$Auth_verifyEmailOtp$Widget
    extends graphql_flutter.Mutation<Mutation$Auth_verifyEmailOtp> {
  Mutation$Auth_verifyEmailOtp$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Auth_verifyEmailOtp? options,
    required Builder$Mutation$Auth_verifyEmailOtp builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Auth_verifyEmailOtp(),
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

class Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp {
  Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp({
    required this.message,
    this.$__typename = 'Auth_verifyOtpResponse',
  });

  factory Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp(
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
    if (other is! Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp ||
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

extension UtilityExtension$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp
    on Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp {
  CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<
          Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp>
      get copyWith => CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes> {
  factory CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp(
    Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp instance,
    TRes Function(Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp) then,
  ) = _CopyWithImpl$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp;

  factory CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes> {
  _CopyWithImpl$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp(
    this._instance,
    this._then,
  );

  final Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp _instance;

  final TRes Function(Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes>
    implements CopyWith$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp<TRes> {
  _CopyWithStubImpl$Mutation$Auth_verifyEmailOtp$auth_verifyEmailOtp(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Auth_CreateAccount {
  factory Variables$Mutation$Auth_CreateAccount(
          {required Input$Auth_CreateAccountInput input}) =>
      Variables$Mutation$Auth_CreateAccount._({
        r'input': input,
      });

  Variables$Mutation$Auth_CreateAccount._(this._$data);

  factory Variables$Mutation$Auth_CreateAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Auth_CreateAccountInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Auth_CreateAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Auth_CreateAccountInput get input =>
      (_$data['input'] as Input$Auth_CreateAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth_CreateAccount<
          Variables$Mutation$Auth_CreateAccount>
      get copyWith => CopyWith$Variables$Mutation$Auth_CreateAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Auth_CreateAccount ||
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

abstract class CopyWith$Variables$Mutation$Auth_CreateAccount<TRes> {
  factory CopyWith$Variables$Mutation$Auth_CreateAccount(
    Variables$Mutation$Auth_CreateAccount instance,
    TRes Function(Variables$Mutation$Auth_CreateAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth_CreateAccount;

  factory CopyWith$Variables$Mutation$Auth_CreateAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth_CreateAccount;

  TRes call({Input$Auth_CreateAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$Auth_CreateAccount<TRes>
    implements CopyWith$Variables$Mutation$Auth_CreateAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth_CreateAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth_CreateAccount _instance;

  final TRes Function(Variables$Mutation$Auth_CreateAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Auth_CreateAccount._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Auth_CreateAccountInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth_CreateAccount<TRes>
    implements CopyWith$Variables$Mutation$Auth_CreateAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth_CreateAccount(this._res);

  TRes _res;

  call({Input$Auth_CreateAccountInput? input}) => _res;
}

class Mutation$Auth_CreateAccount {
  Mutation$Auth_CreateAccount({
    required this.auth_createAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_CreateAccount.fromJson(Map<String, dynamic> json) {
    final l$auth_createAccount = json['auth_createAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_CreateAccount(
      auth_createAccount:
          Mutation$Auth_CreateAccount$auth_createAccount.fromJson(
              (l$auth_createAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_CreateAccount$auth_createAccount auth_createAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth_createAccount = auth_createAccount;
    _resultData['auth_createAccount'] = l$auth_createAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth_createAccount = auth_createAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth_createAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_CreateAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth_createAccount = auth_createAccount;
    final lOther$auth_createAccount = other.auth_createAccount;
    if (l$auth_createAccount != lOther$auth_createAccount) {
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

extension UtilityExtension$Mutation$Auth_CreateAccount
    on Mutation$Auth_CreateAccount {
  CopyWith$Mutation$Auth_CreateAccount<Mutation$Auth_CreateAccount>
      get copyWith => CopyWith$Mutation$Auth_CreateAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_CreateAccount<TRes> {
  factory CopyWith$Mutation$Auth_CreateAccount(
    Mutation$Auth_CreateAccount instance,
    TRes Function(Mutation$Auth_CreateAccount) then,
  ) = _CopyWithImpl$Mutation$Auth_CreateAccount;

  factory CopyWith$Mutation$Auth_CreateAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_CreateAccount;

  TRes call({
    Mutation$Auth_CreateAccount$auth_createAccount? auth_createAccount,
    String? $__typename,
  });
  CopyWith$Mutation$Auth_CreateAccount$auth_createAccount<TRes>
      get auth_createAccount;
}

class _CopyWithImpl$Mutation$Auth_CreateAccount<TRes>
    implements CopyWith$Mutation$Auth_CreateAccount<TRes> {
  _CopyWithImpl$Mutation$Auth_CreateAccount(
    this._instance,
    this._then,
  );

  final Mutation$Auth_CreateAccount _instance;

  final TRes Function(Mutation$Auth_CreateAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth_createAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_CreateAccount(
        auth_createAccount:
            auth_createAccount == _undefined || auth_createAccount == null
                ? _instance.auth_createAccount
                : (auth_createAccount
                    as Mutation$Auth_CreateAccount$auth_createAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth_CreateAccount$auth_createAccount<TRes>
      get auth_createAccount {
    final local$auth_createAccount = _instance.auth_createAccount;
    return CopyWith$Mutation$Auth_CreateAccount$auth_createAccount(
        local$auth_createAccount, (e) => call(auth_createAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_CreateAccount<TRes>
    implements CopyWith$Mutation$Auth_CreateAccount<TRes> {
  _CopyWithStubImpl$Mutation$Auth_CreateAccount(this._res);

  TRes _res;

  call({
    Mutation$Auth_CreateAccount$auth_createAccount? auth_createAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth_CreateAccount$auth_createAccount<TRes>
      get auth_createAccount =>
          CopyWith$Mutation$Auth_CreateAccount$auth_createAccount.stub(_res);
}

const documentNodeMutationAuth_CreateAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth_CreateAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Auth_CreateAccountInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth_createAccount'),
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
Mutation$Auth_CreateAccount _parserFn$Mutation$Auth_CreateAccount(
        Map<String, dynamic> data) =>
    Mutation$Auth_CreateAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$Auth_CreateAccount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Auth_CreateAccount?,
);

class Options$Mutation$Auth_CreateAccount
    extends graphql.MutationOptions<Mutation$Auth_CreateAccount> {
  Options$Mutation$Auth_CreateAccount({
    String? operationName,
    required Variables$Mutation$Auth_CreateAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_CreateAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_CreateAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_CreateAccount>? update,
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
                        : _parserFn$Mutation$Auth_CreateAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_CreateAccount,
          parserFn: _parserFn$Mutation$Auth_CreateAccount,
        );

  final OnMutationCompleted$Mutation$Auth_CreateAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Auth_CreateAccount
    extends graphql.WatchQueryOptions<Mutation$Auth_CreateAccount> {
  WatchOptions$Mutation$Auth_CreateAccount({
    String? operationName,
    required Variables$Mutation$Auth_CreateAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_CreateAccount? typedOptimisticResult,
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
          document: documentNodeMutationAuth_CreateAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Auth_CreateAccount,
        );
}

extension ClientExtension$Mutation$Auth_CreateAccount on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_CreateAccount>>
      mutate$Auth_CreateAccount(
              Options$Mutation$Auth_CreateAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Auth_CreateAccount>
      watchMutation$Auth_CreateAccount(
              WatchOptions$Mutation$Auth_CreateAccount options) =>
          this.watchMutation(options);
}

class Mutation$Auth_CreateAccount$HookResult {
  Mutation$Auth_CreateAccount$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Auth_CreateAccount runMutation;

  final graphql.QueryResult<Mutation$Auth_CreateAccount> result;
}

Mutation$Auth_CreateAccount$HookResult useMutation$Auth_CreateAccount(
    [WidgetOptions$Mutation$Auth_CreateAccount? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Auth_CreateAccount());
  return Mutation$Auth_CreateAccount$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Auth_CreateAccount>
    useWatchMutation$Auth_CreateAccount(
            WatchOptions$Mutation$Auth_CreateAccount options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Auth_CreateAccount
    extends graphql.MutationOptions<Mutation$Auth_CreateAccount> {
  WidgetOptions$Mutation$Auth_CreateAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_CreateAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_CreateAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_CreateAccount>? update,
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
                        : _parserFn$Mutation$Auth_CreateAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_CreateAccount,
          parserFn: _parserFn$Mutation$Auth_CreateAccount,
        );

  final OnMutationCompleted$Mutation$Auth_CreateAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Auth_CreateAccount
    = graphql.MultiSourceResult<Mutation$Auth_CreateAccount> Function(
  Variables$Mutation$Auth_CreateAccount, {
  Object? optimisticResult,
  Mutation$Auth_CreateAccount? typedOptimisticResult,
});
typedef Builder$Mutation$Auth_CreateAccount = widgets.Widget Function(
  RunMutation$Mutation$Auth_CreateAccount,
  graphql.QueryResult<Mutation$Auth_CreateAccount>?,
);

class Mutation$Auth_CreateAccount$Widget
    extends graphql_flutter.Mutation<Mutation$Auth_CreateAccount> {
  Mutation$Auth_CreateAccount$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Auth_CreateAccount? options,
    required Builder$Mutation$Auth_CreateAccount builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Auth_CreateAccount(),
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

class Mutation$Auth_CreateAccount$auth_createAccount {
  Mutation$Auth_CreateAccount$auth_createAccount({
    required this.message,
    this.$__typename = 'Auth_CreateAccountResponse',
  });

  factory Mutation$Auth_CreateAccount$auth_createAccount.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_CreateAccount$auth_createAccount(
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
    if (other is! Mutation$Auth_CreateAccount$auth_createAccount ||
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

extension UtilityExtension$Mutation$Auth_CreateAccount$auth_createAccount
    on Mutation$Auth_CreateAccount$auth_createAccount {
  CopyWith$Mutation$Auth_CreateAccount$auth_createAccount<
          Mutation$Auth_CreateAccount$auth_createAccount>
      get copyWith => CopyWith$Mutation$Auth_CreateAccount$auth_createAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_CreateAccount$auth_createAccount<TRes> {
  factory CopyWith$Mutation$Auth_CreateAccount$auth_createAccount(
    Mutation$Auth_CreateAccount$auth_createAccount instance,
    TRes Function(Mutation$Auth_CreateAccount$auth_createAccount) then,
  ) = _CopyWithImpl$Mutation$Auth_CreateAccount$auth_createAccount;

  factory CopyWith$Mutation$Auth_CreateAccount$auth_createAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Auth_CreateAccount$auth_createAccount;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Auth_CreateAccount$auth_createAccount<TRes>
    implements CopyWith$Mutation$Auth_CreateAccount$auth_createAccount<TRes> {
  _CopyWithImpl$Mutation$Auth_CreateAccount$auth_createAccount(
    this._instance,
    this._then,
  );

  final Mutation$Auth_CreateAccount$auth_createAccount _instance;

  final TRes Function(Mutation$Auth_CreateAccount$auth_createAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_CreateAccount$auth_createAccount(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth_CreateAccount$auth_createAccount<TRes>
    implements CopyWith$Mutation$Auth_CreateAccount$auth_createAccount<TRes> {
  _CopyWithStubImpl$Mutation$Auth_CreateAccount$auth_createAccount(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Auth_thirdwebLogin {
  factory Variables$Mutation$Auth_thirdwebLogin(
          {required Input$Auth_ThirdwebLoginInput input}) =>
      Variables$Mutation$Auth_thirdwebLogin._({
        r'input': input,
      });

  Variables$Mutation$Auth_thirdwebLogin._(this._$data);

  factory Variables$Mutation$Auth_thirdwebLogin.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Auth_ThirdwebLoginInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Auth_thirdwebLogin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Auth_ThirdwebLoginInput get input =>
      (_$data['input'] as Input$Auth_ThirdwebLoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth_thirdwebLogin<
          Variables$Mutation$Auth_thirdwebLogin>
      get copyWith => CopyWith$Variables$Mutation$Auth_thirdwebLogin(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Auth_thirdwebLogin ||
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

abstract class CopyWith$Variables$Mutation$Auth_thirdwebLogin<TRes> {
  factory CopyWith$Variables$Mutation$Auth_thirdwebLogin(
    Variables$Mutation$Auth_thirdwebLogin instance,
    TRes Function(Variables$Mutation$Auth_thirdwebLogin) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth_thirdwebLogin;

  factory CopyWith$Variables$Mutation$Auth_thirdwebLogin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth_thirdwebLogin;

  TRes call({Input$Auth_ThirdwebLoginInput? input});
}

class _CopyWithImpl$Variables$Mutation$Auth_thirdwebLogin<TRes>
    implements CopyWith$Variables$Mutation$Auth_thirdwebLogin<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth_thirdwebLogin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth_thirdwebLogin _instance;

  final TRes Function(Variables$Mutation$Auth_thirdwebLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Auth_thirdwebLogin._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Auth_ThirdwebLoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth_thirdwebLogin<TRes>
    implements CopyWith$Variables$Mutation$Auth_thirdwebLogin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth_thirdwebLogin(this._res);

  TRes _res;

  call({Input$Auth_ThirdwebLoginInput? input}) => _res;
}

class Mutation$Auth_thirdwebLogin {
  Mutation$Auth_thirdwebLogin({
    required this.auth_thirdwebLogin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_thirdwebLogin.fromJson(Map<String, dynamic> json) {
    final l$auth_thirdwebLogin = json['auth_thirdwebLogin'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_thirdwebLogin(
      auth_thirdwebLogin:
          Mutation$Auth_thirdwebLogin$auth_thirdwebLogin.fromJson(
              (l$auth_thirdwebLogin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_thirdwebLogin$auth_thirdwebLogin auth_thirdwebLogin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth_thirdwebLogin = auth_thirdwebLogin;
    _resultData['auth_thirdwebLogin'] = l$auth_thirdwebLogin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth_thirdwebLogin = auth_thirdwebLogin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth_thirdwebLogin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_thirdwebLogin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth_thirdwebLogin = auth_thirdwebLogin;
    final lOther$auth_thirdwebLogin = other.auth_thirdwebLogin;
    if (l$auth_thirdwebLogin != lOther$auth_thirdwebLogin) {
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

extension UtilityExtension$Mutation$Auth_thirdwebLogin
    on Mutation$Auth_thirdwebLogin {
  CopyWith$Mutation$Auth_thirdwebLogin<Mutation$Auth_thirdwebLogin>
      get copyWith => CopyWith$Mutation$Auth_thirdwebLogin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_thirdwebLogin<TRes> {
  factory CopyWith$Mutation$Auth_thirdwebLogin(
    Mutation$Auth_thirdwebLogin instance,
    TRes Function(Mutation$Auth_thirdwebLogin) then,
  ) = _CopyWithImpl$Mutation$Auth_thirdwebLogin;

  factory CopyWith$Mutation$Auth_thirdwebLogin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_thirdwebLogin;

  TRes call({
    Mutation$Auth_thirdwebLogin$auth_thirdwebLogin? auth_thirdwebLogin,
    String? $__typename,
  });
  CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes>
      get auth_thirdwebLogin;
}

class _CopyWithImpl$Mutation$Auth_thirdwebLogin<TRes>
    implements CopyWith$Mutation$Auth_thirdwebLogin<TRes> {
  _CopyWithImpl$Mutation$Auth_thirdwebLogin(
    this._instance,
    this._then,
  );

  final Mutation$Auth_thirdwebLogin _instance;

  final TRes Function(Mutation$Auth_thirdwebLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth_thirdwebLogin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_thirdwebLogin(
        auth_thirdwebLogin:
            auth_thirdwebLogin == _undefined || auth_thirdwebLogin == null
                ? _instance.auth_thirdwebLogin
                : (auth_thirdwebLogin
                    as Mutation$Auth_thirdwebLogin$auth_thirdwebLogin),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes>
      get auth_thirdwebLogin {
    final local$auth_thirdwebLogin = _instance.auth_thirdwebLogin;
    return CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(
        local$auth_thirdwebLogin, (e) => call(auth_thirdwebLogin: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_thirdwebLogin<TRes>
    implements CopyWith$Mutation$Auth_thirdwebLogin<TRes> {
  _CopyWithStubImpl$Mutation$Auth_thirdwebLogin(this._res);

  TRes _res;

  call({
    Mutation$Auth_thirdwebLogin$auth_thirdwebLogin? auth_thirdwebLogin,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes>
      get auth_thirdwebLogin =>
          CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin.stub(_res);
}

const documentNodeMutationAuth_thirdwebLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth_thirdwebLogin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Auth_ThirdwebLoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth_thirdwebLogin'),
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
Mutation$Auth_thirdwebLogin _parserFn$Mutation$Auth_thirdwebLogin(
        Map<String, dynamic> data) =>
    Mutation$Auth_thirdwebLogin.fromJson(data);
typedef OnMutationCompleted$Mutation$Auth_thirdwebLogin = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Auth_thirdwebLogin?,
);

class Options$Mutation$Auth_thirdwebLogin
    extends graphql.MutationOptions<Mutation$Auth_thirdwebLogin> {
  Options$Mutation$Auth_thirdwebLogin({
    String? operationName,
    required Variables$Mutation$Auth_thirdwebLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_thirdwebLogin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_thirdwebLogin? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_thirdwebLogin>? update,
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
                        : _parserFn$Mutation$Auth_thirdwebLogin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_thirdwebLogin,
          parserFn: _parserFn$Mutation$Auth_thirdwebLogin,
        );

  final OnMutationCompleted$Mutation$Auth_thirdwebLogin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Auth_thirdwebLogin
    extends graphql.WatchQueryOptions<Mutation$Auth_thirdwebLogin> {
  WatchOptions$Mutation$Auth_thirdwebLogin({
    String? operationName,
    required Variables$Mutation$Auth_thirdwebLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_thirdwebLogin? typedOptimisticResult,
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
          document: documentNodeMutationAuth_thirdwebLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Auth_thirdwebLogin,
        );
}

extension ClientExtension$Mutation$Auth_thirdwebLogin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_thirdwebLogin>>
      mutate$Auth_thirdwebLogin(
              Options$Mutation$Auth_thirdwebLogin options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Auth_thirdwebLogin>
      watchMutation$Auth_thirdwebLogin(
              WatchOptions$Mutation$Auth_thirdwebLogin options) =>
          this.watchMutation(options);
}

class Mutation$Auth_thirdwebLogin$HookResult {
  Mutation$Auth_thirdwebLogin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Auth_thirdwebLogin runMutation;

  final graphql.QueryResult<Mutation$Auth_thirdwebLogin> result;
}

Mutation$Auth_thirdwebLogin$HookResult useMutation$Auth_thirdwebLogin(
    [WidgetOptions$Mutation$Auth_thirdwebLogin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Auth_thirdwebLogin());
  return Mutation$Auth_thirdwebLogin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Auth_thirdwebLogin>
    useWatchMutation$Auth_thirdwebLogin(
            WatchOptions$Mutation$Auth_thirdwebLogin options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Auth_thirdwebLogin
    extends graphql.MutationOptions<Mutation$Auth_thirdwebLogin> {
  WidgetOptions$Mutation$Auth_thirdwebLogin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_thirdwebLogin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_thirdwebLogin? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_thirdwebLogin>? update,
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
                        : _parserFn$Mutation$Auth_thirdwebLogin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_thirdwebLogin,
          parserFn: _parserFn$Mutation$Auth_thirdwebLogin,
        );

  final OnMutationCompleted$Mutation$Auth_thirdwebLogin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Auth_thirdwebLogin
    = graphql.MultiSourceResult<Mutation$Auth_thirdwebLogin> Function(
  Variables$Mutation$Auth_thirdwebLogin, {
  Object? optimisticResult,
  Mutation$Auth_thirdwebLogin? typedOptimisticResult,
});
typedef Builder$Mutation$Auth_thirdwebLogin = widgets.Widget Function(
  RunMutation$Mutation$Auth_thirdwebLogin,
  graphql.QueryResult<Mutation$Auth_thirdwebLogin>?,
);

class Mutation$Auth_thirdwebLogin$Widget
    extends graphql_flutter.Mutation<Mutation$Auth_thirdwebLogin> {
  Mutation$Auth_thirdwebLogin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Auth_thirdwebLogin? options,
    required Builder$Mutation$Auth_thirdwebLogin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Auth_thirdwebLogin(),
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

class Mutation$Auth_thirdwebLogin$auth_thirdwebLogin {
  Mutation$Auth_thirdwebLogin$auth_thirdwebLogin({
    this.firstname,
    this.lastname,
    this.middlename,
    this.email,
    this.token,
    this.$__typename = 'Auth_LoginMinipayResponse',
  });

  factory Mutation$Auth_thirdwebLogin$auth_thirdwebLogin.fromJson(
      Map<String, dynamic> json) {
    final l$firstname = json['firstname'];
    final l$lastname = json['lastname'];
    final l$middlename = json['middlename'];
    final l$email = json['email'];
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(
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
    if (other is! Mutation$Auth_thirdwebLogin$auth_thirdwebLogin ||
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

extension UtilityExtension$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin
    on Mutation$Auth_thirdwebLogin$auth_thirdwebLogin {
  CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<
          Mutation$Auth_thirdwebLogin$auth_thirdwebLogin>
      get copyWith => CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes> {
  factory CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(
    Mutation$Auth_thirdwebLogin$auth_thirdwebLogin instance,
    TRes Function(Mutation$Auth_thirdwebLogin$auth_thirdwebLogin) then,
  ) = _CopyWithImpl$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin;

  factory CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin;

  TRes call({
    String? firstname,
    String? lastname,
    String? middlename,
    String? email,
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes>
    implements CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes> {
  _CopyWithImpl$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(
    this._instance,
    this._then,
  );

  final Mutation$Auth_thirdwebLogin$auth_thirdwebLogin _instance;

  final TRes Function(Mutation$Auth_thirdwebLogin$auth_thirdwebLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstname = _undefined,
    Object? lastname = _undefined,
    Object? middlename = _undefined,
    Object? email = _undefined,
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(
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

class _CopyWithStubImpl$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes>
    implements CopyWith$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin<TRes> {
  _CopyWithStubImpl$Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(this._res);

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

class Variables$Mutation$Auth_TelegramLogin {
  factory Variables$Mutation$Auth_TelegramLogin(
          {required Input$Auth_TelegramLoginInput input}) =>
      Variables$Mutation$Auth_TelegramLogin._({
        r'input': input,
      });

  Variables$Mutation$Auth_TelegramLogin._(this._$data);

  factory Variables$Mutation$Auth_TelegramLogin.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Auth_TelegramLoginInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Auth_TelegramLogin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Auth_TelegramLoginInput get input =>
      (_$data['input'] as Input$Auth_TelegramLoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth_TelegramLogin<
          Variables$Mutation$Auth_TelegramLogin>
      get copyWith => CopyWith$Variables$Mutation$Auth_TelegramLogin(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Auth_TelegramLogin ||
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

abstract class CopyWith$Variables$Mutation$Auth_TelegramLogin<TRes> {
  factory CopyWith$Variables$Mutation$Auth_TelegramLogin(
    Variables$Mutation$Auth_TelegramLogin instance,
    TRes Function(Variables$Mutation$Auth_TelegramLogin) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth_TelegramLogin;

  factory CopyWith$Variables$Mutation$Auth_TelegramLogin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth_TelegramLogin;

  TRes call({Input$Auth_TelegramLoginInput? input});
}

class _CopyWithImpl$Variables$Mutation$Auth_TelegramLogin<TRes>
    implements CopyWith$Variables$Mutation$Auth_TelegramLogin<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth_TelegramLogin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth_TelegramLogin _instance;

  final TRes Function(Variables$Mutation$Auth_TelegramLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Auth_TelegramLogin._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Auth_TelegramLoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth_TelegramLogin<TRes>
    implements CopyWith$Variables$Mutation$Auth_TelegramLogin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth_TelegramLogin(this._res);

  TRes _res;

  call({Input$Auth_TelegramLoginInput? input}) => _res;
}

class Mutation$Auth_TelegramLogin {
  Mutation$Auth_TelegramLogin({
    required this.auth_loginTelegram,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth_TelegramLogin.fromJson(Map<String, dynamic> json) {
    final l$auth_loginTelegram = json['auth_loginTelegram'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_TelegramLogin(
      auth_loginTelegram:
          Mutation$Auth_TelegramLogin$auth_loginTelegram.fromJson(
              (l$auth_loginTelegram as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth_TelegramLogin$auth_loginTelegram auth_loginTelegram;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth_loginTelegram = auth_loginTelegram;
    _resultData['auth_loginTelegram'] = l$auth_loginTelegram.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth_loginTelegram = auth_loginTelegram;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth_loginTelegram,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_TelegramLogin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth_loginTelegram = auth_loginTelegram;
    final lOther$auth_loginTelegram = other.auth_loginTelegram;
    if (l$auth_loginTelegram != lOther$auth_loginTelegram) {
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

extension UtilityExtension$Mutation$Auth_TelegramLogin
    on Mutation$Auth_TelegramLogin {
  CopyWith$Mutation$Auth_TelegramLogin<Mutation$Auth_TelegramLogin>
      get copyWith => CopyWith$Mutation$Auth_TelegramLogin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_TelegramLogin<TRes> {
  factory CopyWith$Mutation$Auth_TelegramLogin(
    Mutation$Auth_TelegramLogin instance,
    TRes Function(Mutation$Auth_TelegramLogin) then,
  ) = _CopyWithImpl$Mutation$Auth_TelegramLogin;

  factory CopyWith$Mutation$Auth_TelegramLogin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth_TelegramLogin;

  TRes call({
    Mutation$Auth_TelegramLogin$auth_loginTelegram? auth_loginTelegram,
    String? $__typename,
  });
  CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes>
      get auth_loginTelegram;
}

class _CopyWithImpl$Mutation$Auth_TelegramLogin<TRes>
    implements CopyWith$Mutation$Auth_TelegramLogin<TRes> {
  _CopyWithImpl$Mutation$Auth_TelegramLogin(
    this._instance,
    this._then,
  );

  final Mutation$Auth_TelegramLogin _instance;

  final TRes Function(Mutation$Auth_TelegramLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth_loginTelegram = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_TelegramLogin(
        auth_loginTelegram:
            auth_loginTelegram == _undefined || auth_loginTelegram == null
                ? _instance.auth_loginTelegram
                : (auth_loginTelegram
                    as Mutation$Auth_TelegramLogin$auth_loginTelegram),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes>
      get auth_loginTelegram {
    final local$auth_loginTelegram = _instance.auth_loginTelegram;
    return CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram(
        local$auth_loginTelegram, (e) => call(auth_loginTelegram: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth_TelegramLogin<TRes>
    implements CopyWith$Mutation$Auth_TelegramLogin<TRes> {
  _CopyWithStubImpl$Mutation$Auth_TelegramLogin(this._res);

  TRes _res;

  call({
    Mutation$Auth_TelegramLogin$auth_loginTelegram? auth_loginTelegram,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes>
      get auth_loginTelegram =>
          CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram.stub(_res);
}

const documentNodeMutationAuth_TelegramLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth_TelegramLogin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Auth_TelegramLoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth_loginTelegram'),
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
            name: NameNode(value: 'token'),
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
Mutation$Auth_TelegramLogin _parserFn$Mutation$Auth_TelegramLogin(
        Map<String, dynamic> data) =>
    Mutation$Auth_TelegramLogin.fromJson(data);
typedef OnMutationCompleted$Mutation$Auth_TelegramLogin = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Auth_TelegramLogin?,
);

class Options$Mutation$Auth_TelegramLogin
    extends graphql.MutationOptions<Mutation$Auth_TelegramLogin> {
  Options$Mutation$Auth_TelegramLogin({
    String? operationName,
    required Variables$Mutation$Auth_TelegramLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_TelegramLogin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_TelegramLogin? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_TelegramLogin>? update,
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
                        : _parserFn$Mutation$Auth_TelegramLogin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_TelegramLogin,
          parserFn: _parserFn$Mutation$Auth_TelegramLogin,
        );

  final OnMutationCompleted$Mutation$Auth_TelegramLogin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Auth_TelegramLogin
    extends graphql.WatchQueryOptions<Mutation$Auth_TelegramLogin> {
  WatchOptions$Mutation$Auth_TelegramLogin({
    String? operationName,
    required Variables$Mutation$Auth_TelegramLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_TelegramLogin? typedOptimisticResult,
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
          document: documentNodeMutationAuth_TelegramLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Auth_TelegramLogin,
        );
}

extension ClientExtension$Mutation$Auth_TelegramLogin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Auth_TelegramLogin>>
      mutate$Auth_TelegramLogin(
              Options$Mutation$Auth_TelegramLogin options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Auth_TelegramLogin>
      watchMutation$Auth_TelegramLogin(
              WatchOptions$Mutation$Auth_TelegramLogin options) =>
          this.watchMutation(options);
}

class Mutation$Auth_TelegramLogin$HookResult {
  Mutation$Auth_TelegramLogin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Auth_TelegramLogin runMutation;

  final graphql.QueryResult<Mutation$Auth_TelegramLogin> result;
}

Mutation$Auth_TelegramLogin$HookResult useMutation$Auth_TelegramLogin(
    [WidgetOptions$Mutation$Auth_TelegramLogin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Auth_TelegramLogin());
  return Mutation$Auth_TelegramLogin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Auth_TelegramLogin>
    useWatchMutation$Auth_TelegramLogin(
            WatchOptions$Mutation$Auth_TelegramLogin options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Auth_TelegramLogin
    extends graphql.MutationOptions<Mutation$Auth_TelegramLogin> {
  WidgetOptions$Mutation$Auth_TelegramLogin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Auth_TelegramLogin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Auth_TelegramLogin? onCompleted,
    graphql.OnMutationUpdate<Mutation$Auth_TelegramLogin>? update,
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
                        : _parserFn$Mutation$Auth_TelegramLogin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuth_TelegramLogin,
          parserFn: _parserFn$Mutation$Auth_TelegramLogin,
        );

  final OnMutationCompleted$Mutation$Auth_TelegramLogin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Auth_TelegramLogin
    = graphql.MultiSourceResult<Mutation$Auth_TelegramLogin> Function(
  Variables$Mutation$Auth_TelegramLogin, {
  Object? optimisticResult,
  Mutation$Auth_TelegramLogin? typedOptimisticResult,
});
typedef Builder$Mutation$Auth_TelegramLogin = widgets.Widget Function(
  RunMutation$Mutation$Auth_TelegramLogin,
  graphql.QueryResult<Mutation$Auth_TelegramLogin>?,
);

class Mutation$Auth_TelegramLogin$Widget
    extends graphql_flutter.Mutation<Mutation$Auth_TelegramLogin> {
  Mutation$Auth_TelegramLogin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Auth_TelegramLogin? options,
    required Builder$Mutation$Auth_TelegramLogin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Auth_TelegramLogin(),
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

class Mutation$Auth_TelegramLogin$auth_loginTelegram {
  Mutation$Auth_TelegramLogin$auth_loginTelegram({
    this.token,
    this.email,
    this.firstname,
    this.lastname,
    this.$__typename = 'Auth_TelegramLoginResponse',
  });

  factory Mutation$Auth_TelegramLogin$auth_loginTelegram.fromJson(
      Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$email = json['email'];
    final l$firstname = json['firstname'];
    final l$lastname = json['lastname'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth_TelegramLogin$auth_loginTelegram(
      token: (l$token as String?),
      email: (l$email as String?),
      firstname: (l$firstname as String?),
      lastname: (l$lastname as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? token;

  final String? email;

  final String? firstname;

  final String? lastname;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstname = firstname;
    _resultData['firstname'] = l$firstname;
    final l$lastname = lastname;
    _resultData['lastname'] = l$lastname;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$email = email;
    final l$firstname = firstname;
    final l$lastname = lastname;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$email,
      l$firstname,
      l$lastname,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Auth_TelegramLogin$auth_loginTelegram ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Auth_TelegramLogin$auth_loginTelegram
    on Mutation$Auth_TelegramLogin$auth_loginTelegram {
  CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram<
          Mutation$Auth_TelegramLogin$auth_loginTelegram>
      get copyWith => CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes> {
  factory CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram(
    Mutation$Auth_TelegramLogin$auth_loginTelegram instance,
    TRes Function(Mutation$Auth_TelegramLogin$auth_loginTelegram) then,
  ) = _CopyWithImpl$Mutation$Auth_TelegramLogin$auth_loginTelegram;

  factory CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Auth_TelegramLogin$auth_loginTelegram;

  TRes call({
    String? token,
    String? email,
    String? firstname,
    String? lastname,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes>
    implements CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes> {
  _CopyWithImpl$Mutation$Auth_TelegramLogin$auth_loginTelegram(
    this._instance,
    this._then,
  );

  final Mutation$Auth_TelegramLogin$auth_loginTelegram _instance;

  final TRes Function(Mutation$Auth_TelegramLogin$auth_loginTelegram) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? email = _undefined,
    Object? firstname = _undefined,
    Object? lastname = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth_TelegramLogin$auth_loginTelegram(
        token: token == _undefined ? _instance.token : (token as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        firstname: firstname == _undefined
            ? _instance.firstname
            : (firstname as String?),
        lastname:
            lastname == _undefined ? _instance.lastname : (lastname as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes>
    implements CopyWith$Mutation$Auth_TelegramLogin$auth_loginTelegram<TRes> {
  _CopyWithStubImpl$Mutation$Auth_TelegramLogin$auth_loginTelegram(this._res);

  TRes _res;

  call({
    String? token,
    String? email,
    String? firstname,
    String? lastname,
    String? $__typename,
  }) =>
      _res;
}
