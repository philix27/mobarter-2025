import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$onchain_transferToken {
  factory Variables$Mutation$onchain_transferToken(
          {required Input$Onchain_TransferTokenInput input}) =>
      Variables$Mutation$onchain_transferToken._({
        r'input': input,
      });

  Variables$Mutation$onchain_transferToken._(this._$data);

  factory Variables$Mutation$onchain_transferToken.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Onchain_TransferTokenInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$onchain_transferToken._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Onchain_TransferTokenInput get input =>
      (_$data['input'] as Input$Onchain_TransferTokenInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$onchain_transferToken<
          Variables$Mutation$onchain_transferToken>
      get copyWith => CopyWith$Variables$Mutation$onchain_transferToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$onchain_transferToken ||
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

abstract class CopyWith$Variables$Mutation$onchain_transferToken<TRes> {
  factory CopyWith$Variables$Mutation$onchain_transferToken(
    Variables$Mutation$onchain_transferToken instance,
    TRes Function(Variables$Mutation$onchain_transferToken) then,
  ) = _CopyWithImpl$Variables$Mutation$onchain_transferToken;

  factory CopyWith$Variables$Mutation$onchain_transferToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$onchain_transferToken;

  TRes call({Input$Onchain_TransferTokenInput? input});
}

class _CopyWithImpl$Variables$Mutation$onchain_transferToken<TRes>
    implements CopyWith$Variables$Mutation$onchain_transferToken<TRes> {
  _CopyWithImpl$Variables$Mutation$onchain_transferToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$onchain_transferToken _instance;

  final TRes Function(Variables$Mutation$onchain_transferToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$onchain_transferToken._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Onchain_TransferTokenInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$onchain_transferToken<TRes>
    implements CopyWith$Variables$Mutation$onchain_transferToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$onchain_transferToken(this._res);

  TRes _res;

  call({Input$Onchain_TransferTokenInput? input}) => _res;
}

class Mutation$onchain_transferToken {
  Mutation$onchain_transferToken({
    required this.onchain_transferToken,
    this.$__typename = 'Mutation',
  });

  factory Mutation$onchain_transferToken.fromJson(Map<String, dynamic> json) {
    final l$onchain_transferToken = json['onchain_transferToken'];
    final l$$__typename = json['__typename'];
    return Mutation$onchain_transferToken(
      onchain_transferToken:
          Mutation$onchain_transferToken$onchain_transferToken.fromJson(
              (l$onchain_transferToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$onchain_transferToken$onchain_transferToken
      onchain_transferToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$onchain_transferToken = onchain_transferToken;
    _resultData['onchain_transferToken'] = l$onchain_transferToken.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$onchain_transferToken = onchain_transferToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$onchain_transferToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$onchain_transferToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$onchain_transferToken = onchain_transferToken;
    final lOther$onchain_transferToken = other.onchain_transferToken;
    if (l$onchain_transferToken != lOther$onchain_transferToken) {
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

extension UtilityExtension$Mutation$onchain_transferToken
    on Mutation$onchain_transferToken {
  CopyWith$Mutation$onchain_transferToken<Mutation$onchain_transferToken>
      get copyWith => CopyWith$Mutation$onchain_transferToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$onchain_transferToken<TRes> {
  factory CopyWith$Mutation$onchain_transferToken(
    Mutation$onchain_transferToken instance,
    TRes Function(Mutation$onchain_transferToken) then,
  ) = _CopyWithImpl$Mutation$onchain_transferToken;

  factory CopyWith$Mutation$onchain_transferToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$onchain_transferToken;

  TRes call({
    Mutation$onchain_transferToken$onchain_transferToken? onchain_transferToken,
    String? $__typename,
  });
  CopyWith$Mutation$onchain_transferToken$onchain_transferToken<TRes>
      get onchain_transferToken;
}

class _CopyWithImpl$Mutation$onchain_transferToken<TRes>
    implements CopyWith$Mutation$onchain_transferToken<TRes> {
  _CopyWithImpl$Mutation$onchain_transferToken(
    this._instance,
    this._then,
  );

  final Mutation$onchain_transferToken _instance;

  final TRes Function(Mutation$onchain_transferToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? onchain_transferToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$onchain_transferToken(
        onchain_transferToken:
            onchain_transferToken == _undefined || onchain_transferToken == null
                ? _instance.onchain_transferToken
                : (onchain_transferToken
                    as Mutation$onchain_transferToken$onchain_transferToken),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$onchain_transferToken$onchain_transferToken<TRes>
      get onchain_transferToken {
    final local$onchain_transferToken = _instance.onchain_transferToken;
    return CopyWith$Mutation$onchain_transferToken$onchain_transferToken(
        local$onchain_transferToken, (e) => call(onchain_transferToken: e));
  }
}

class _CopyWithStubImpl$Mutation$onchain_transferToken<TRes>
    implements CopyWith$Mutation$onchain_transferToken<TRes> {
  _CopyWithStubImpl$Mutation$onchain_transferToken(this._res);

  TRes _res;

  call({
    Mutation$onchain_transferToken$onchain_transferToken? onchain_transferToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$onchain_transferToken$onchain_transferToken<TRes>
      get onchain_transferToken =>
          CopyWith$Mutation$onchain_transferToken$onchain_transferToken.stub(
              _res);
}

const documentNodeMutationonchain_transferToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'onchain_transferToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Onchain_TransferTokenInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onchain_transferToken'),
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
Mutation$onchain_transferToken _parserFn$Mutation$onchain_transferToken(
        Map<String, dynamic> data) =>
    Mutation$onchain_transferToken.fromJson(data);
typedef OnMutationCompleted$Mutation$onchain_transferToken = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$onchain_transferToken?,
);

class Options$Mutation$onchain_transferToken
    extends graphql.MutationOptions<Mutation$onchain_transferToken> {
  Options$Mutation$onchain_transferToken({
    String? operationName,
    required Variables$Mutation$onchain_transferToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$onchain_transferToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$onchain_transferToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$onchain_transferToken>? update,
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
                        : _parserFn$Mutation$onchain_transferToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationonchain_transferToken,
          parserFn: _parserFn$Mutation$onchain_transferToken,
        );

  final OnMutationCompleted$Mutation$onchain_transferToken?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$onchain_transferToken
    extends graphql.WatchQueryOptions<Mutation$onchain_transferToken> {
  WatchOptions$Mutation$onchain_transferToken({
    String? operationName,
    required Variables$Mutation$onchain_transferToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$onchain_transferToken? typedOptimisticResult,
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
          document: documentNodeMutationonchain_transferToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$onchain_transferToken,
        );
}

extension ClientExtension$Mutation$onchain_transferToken
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$onchain_transferToken>>
      mutate$onchain_transferToken(
              Options$Mutation$onchain_transferToken options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$onchain_transferToken>
      watchMutation$onchain_transferToken(
              WatchOptions$Mutation$onchain_transferToken options) =>
          this.watchMutation(options);
}

class Mutation$onchain_transferToken$HookResult {
  Mutation$onchain_transferToken$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$onchain_transferToken runMutation;

  final graphql.QueryResult<Mutation$onchain_transferToken> result;
}

Mutation$onchain_transferToken$HookResult useMutation$onchain_transferToken(
    [WidgetOptions$Mutation$onchain_transferToken? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$onchain_transferToken());
  return Mutation$onchain_transferToken$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$onchain_transferToken>
    useWatchMutation$onchain_transferToken(
            WatchOptions$Mutation$onchain_transferToken options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$onchain_transferToken
    extends graphql.MutationOptions<Mutation$onchain_transferToken> {
  WidgetOptions$Mutation$onchain_transferToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$onchain_transferToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$onchain_transferToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$onchain_transferToken>? update,
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
                        : _parserFn$Mutation$onchain_transferToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationonchain_transferToken,
          parserFn: _parserFn$Mutation$onchain_transferToken,
        );

  final OnMutationCompleted$Mutation$onchain_transferToken?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$onchain_transferToken
    = graphql.MultiSourceResult<Mutation$onchain_transferToken> Function(
  Variables$Mutation$onchain_transferToken, {
  Object? optimisticResult,
  Mutation$onchain_transferToken? typedOptimisticResult,
});
typedef Builder$Mutation$onchain_transferToken = widgets.Widget Function(
  RunMutation$Mutation$onchain_transferToken,
  graphql.QueryResult<Mutation$onchain_transferToken>?,
);

class Mutation$onchain_transferToken$Widget
    extends graphql_flutter.Mutation<Mutation$onchain_transferToken> {
  Mutation$onchain_transferToken$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$onchain_transferToken? options,
    required Builder$Mutation$onchain_transferToken builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$onchain_transferToken(),
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

class Mutation$onchain_transferToken$onchain_transferToken {
  Mutation$onchain_transferToken$onchain_transferToken({
    required this.message,
    this.$__typename = 'Onchain_TransferTokenResponse',
  });

  factory Mutation$onchain_transferToken$onchain_transferToken.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$onchain_transferToken$onchain_transferToken(
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
    if (other is! Mutation$onchain_transferToken$onchain_transferToken ||
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

extension UtilityExtension$Mutation$onchain_transferToken$onchain_transferToken
    on Mutation$onchain_transferToken$onchain_transferToken {
  CopyWith$Mutation$onchain_transferToken$onchain_transferToken<
          Mutation$onchain_transferToken$onchain_transferToken>
      get copyWith =>
          CopyWith$Mutation$onchain_transferToken$onchain_transferToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$onchain_transferToken$onchain_transferToken<
    TRes> {
  factory CopyWith$Mutation$onchain_transferToken$onchain_transferToken(
    Mutation$onchain_transferToken$onchain_transferToken instance,
    TRes Function(Mutation$onchain_transferToken$onchain_transferToken) then,
  ) = _CopyWithImpl$Mutation$onchain_transferToken$onchain_transferToken;

  factory CopyWith$Mutation$onchain_transferToken$onchain_transferToken.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$onchain_transferToken$onchain_transferToken;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$onchain_transferToken$onchain_transferToken<TRes>
    implements
        CopyWith$Mutation$onchain_transferToken$onchain_transferToken<TRes> {
  _CopyWithImpl$Mutation$onchain_transferToken$onchain_transferToken(
    this._instance,
    this._then,
  );

  final Mutation$onchain_transferToken$onchain_transferToken _instance;

  final TRes Function(Mutation$onchain_transferToken$onchain_transferToken)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$onchain_transferToken$onchain_transferToken(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$onchain_transferToken$onchain_transferToken<
        TRes>
    implements
        CopyWith$Mutation$onchain_transferToken$onchain_transferToken<TRes> {
  _CopyWithStubImpl$Mutation$onchain_transferToken$onchain_transferToken(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}
