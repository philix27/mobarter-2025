import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$BankAccount_delete {
  factory Variables$Mutation$BankAccount_delete(
          {required Input$BankAccount_DeleteInput input}) =>
      Variables$Mutation$BankAccount_delete._({
        r'input': input,
      });

  Variables$Mutation$BankAccount_delete._(this._$data);

  factory Variables$Mutation$BankAccount_delete.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$BankAccount_DeleteInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$BankAccount_delete._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BankAccount_DeleteInput get input =>
      (_$data['input'] as Input$BankAccount_DeleteInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$BankAccount_delete<
          Variables$Mutation$BankAccount_delete>
      get copyWith => CopyWith$Variables$Mutation$BankAccount_delete(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$BankAccount_delete ||
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

abstract class CopyWith$Variables$Mutation$BankAccount_delete<TRes> {
  factory CopyWith$Variables$Mutation$BankAccount_delete(
    Variables$Mutation$BankAccount_delete instance,
    TRes Function(Variables$Mutation$BankAccount_delete) then,
  ) = _CopyWithImpl$Variables$Mutation$BankAccount_delete;

  factory CopyWith$Variables$Mutation$BankAccount_delete.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$BankAccount_delete;

  TRes call({Input$BankAccount_DeleteInput? input});
}

class _CopyWithImpl$Variables$Mutation$BankAccount_delete<TRes>
    implements CopyWith$Variables$Mutation$BankAccount_delete<TRes> {
  _CopyWithImpl$Variables$Mutation$BankAccount_delete(
    this._instance,
    this._then,
  );

  final Variables$Mutation$BankAccount_delete _instance;

  final TRes Function(Variables$Mutation$BankAccount_delete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$BankAccount_delete._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BankAccount_DeleteInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$BankAccount_delete<TRes>
    implements CopyWith$Variables$Mutation$BankAccount_delete<TRes> {
  _CopyWithStubImpl$Variables$Mutation$BankAccount_delete(this._res);

  TRes _res;

  call({Input$BankAccount_DeleteInput? input}) => _res;
}

class Mutation$BankAccount_delete {
  Mutation$BankAccount_delete({
    required this.bankAccount_delete,
    this.$__typename = 'Mutation',
  });

  factory Mutation$BankAccount_delete.fromJson(Map<String, dynamic> json) {
    final l$bankAccount_delete = json['bankAccount_delete'];
    final l$$__typename = json['__typename'];
    return Mutation$BankAccount_delete(
      bankAccount_delete:
          Mutation$BankAccount_delete$bankAccount_delete.fromJson(
              (l$bankAccount_delete as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$BankAccount_delete$bankAccount_delete bankAccount_delete;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankAccount_delete = bankAccount_delete;
    _resultData['bankAccount_delete'] = l$bankAccount_delete.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankAccount_delete = bankAccount_delete;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankAccount_delete,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$BankAccount_delete ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankAccount_delete = bankAccount_delete;
    final lOther$bankAccount_delete = other.bankAccount_delete;
    if (l$bankAccount_delete != lOther$bankAccount_delete) {
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

extension UtilityExtension$Mutation$BankAccount_delete
    on Mutation$BankAccount_delete {
  CopyWith$Mutation$BankAccount_delete<Mutation$BankAccount_delete>
      get copyWith => CopyWith$Mutation$BankAccount_delete(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BankAccount_delete<TRes> {
  factory CopyWith$Mutation$BankAccount_delete(
    Mutation$BankAccount_delete instance,
    TRes Function(Mutation$BankAccount_delete) then,
  ) = _CopyWithImpl$Mutation$BankAccount_delete;

  factory CopyWith$Mutation$BankAccount_delete.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BankAccount_delete;

  TRes call({
    Mutation$BankAccount_delete$bankAccount_delete? bankAccount_delete,
    String? $__typename,
  });
  CopyWith$Mutation$BankAccount_delete$bankAccount_delete<TRes>
      get bankAccount_delete;
}

class _CopyWithImpl$Mutation$BankAccount_delete<TRes>
    implements CopyWith$Mutation$BankAccount_delete<TRes> {
  _CopyWithImpl$Mutation$BankAccount_delete(
    this._instance,
    this._then,
  );

  final Mutation$BankAccount_delete _instance;

  final TRes Function(Mutation$BankAccount_delete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankAccount_delete = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BankAccount_delete(
        bankAccount_delete:
            bankAccount_delete == _undefined || bankAccount_delete == null
                ? _instance.bankAccount_delete
                : (bankAccount_delete
                    as Mutation$BankAccount_delete$bankAccount_delete),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$BankAccount_delete$bankAccount_delete<TRes>
      get bankAccount_delete {
    final local$bankAccount_delete = _instance.bankAccount_delete;
    return CopyWith$Mutation$BankAccount_delete$bankAccount_delete(
        local$bankAccount_delete, (e) => call(bankAccount_delete: e));
  }
}

class _CopyWithStubImpl$Mutation$BankAccount_delete<TRes>
    implements CopyWith$Mutation$BankAccount_delete<TRes> {
  _CopyWithStubImpl$Mutation$BankAccount_delete(this._res);

  TRes _res;

  call({
    Mutation$BankAccount_delete$bankAccount_delete? bankAccount_delete,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$BankAccount_delete$bankAccount_delete<TRes>
      get bankAccount_delete =>
          CopyWith$Mutation$BankAccount_delete$bankAccount_delete.stub(_res);
}

const documentNodeMutationBankAccount_delete = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'BankAccount_delete'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BankAccount_DeleteInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bankAccount_delete'),
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
Mutation$BankAccount_delete _parserFn$Mutation$BankAccount_delete(
        Map<String, dynamic> data) =>
    Mutation$BankAccount_delete.fromJson(data);
typedef OnMutationCompleted$Mutation$BankAccount_delete = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$BankAccount_delete?,
);

class Options$Mutation$BankAccount_delete
    extends graphql.MutationOptions<Mutation$BankAccount_delete> {
  Options$Mutation$BankAccount_delete({
    String? operationName,
    required Variables$Mutation$BankAccount_delete variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BankAccount_delete? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BankAccount_delete? onCompleted,
    graphql.OnMutationUpdate<Mutation$BankAccount_delete>? update,
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
                        : _parserFn$Mutation$BankAccount_delete(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBankAccount_delete,
          parserFn: _parserFn$Mutation$BankAccount_delete,
        );

  final OnMutationCompleted$Mutation$BankAccount_delete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$BankAccount_delete
    extends graphql.WatchQueryOptions<Mutation$BankAccount_delete> {
  WatchOptions$Mutation$BankAccount_delete({
    String? operationName,
    required Variables$Mutation$BankAccount_delete variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BankAccount_delete? typedOptimisticResult,
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
          document: documentNodeMutationBankAccount_delete,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$BankAccount_delete,
        );
}

extension ClientExtension$Mutation$BankAccount_delete on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$BankAccount_delete>>
      mutate$BankAccount_delete(
              Options$Mutation$BankAccount_delete options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$BankAccount_delete>
      watchMutation$BankAccount_delete(
              WatchOptions$Mutation$BankAccount_delete options) =>
          this.watchMutation(options);
}

class Mutation$BankAccount_delete$HookResult {
  Mutation$BankAccount_delete$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$BankAccount_delete runMutation;

  final graphql.QueryResult<Mutation$BankAccount_delete> result;
}

Mutation$BankAccount_delete$HookResult useMutation$BankAccount_delete(
    [WidgetOptions$Mutation$BankAccount_delete? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$BankAccount_delete());
  return Mutation$BankAccount_delete$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$BankAccount_delete>
    useWatchMutation$BankAccount_delete(
            WatchOptions$Mutation$BankAccount_delete options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$BankAccount_delete
    extends graphql.MutationOptions<Mutation$BankAccount_delete> {
  WidgetOptions$Mutation$BankAccount_delete({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BankAccount_delete? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BankAccount_delete? onCompleted,
    graphql.OnMutationUpdate<Mutation$BankAccount_delete>? update,
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
                        : _parserFn$Mutation$BankAccount_delete(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBankAccount_delete,
          parserFn: _parserFn$Mutation$BankAccount_delete,
        );

  final OnMutationCompleted$Mutation$BankAccount_delete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$BankAccount_delete
    = graphql.MultiSourceResult<Mutation$BankAccount_delete> Function(
  Variables$Mutation$BankAccount_delete, {
  Object? optimisticResult,
  Mutation$BankAccount_delete? typedOptimisticResult,
});
typedef Builder$Mutation$BankAccount_delete = widgets.Widget Function(
  RunMutation$Mutation$BankAccount_delete,
  graphql.QueryResult<Mutation$BankAccount_delete>?,
);

class Mutation$BankAccount_delete$Widget
    extends graphql_flutter.Mutation<Mutation$BankAccount_delete> {
  Mutation$BankAccount_delete$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$BankAccount_delete? options,
    required Builder$Mutation$BankAccount_delete builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$BankAccount_delete(),
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

class Mutation$BankAccount_delete$bankAccount_delete {
  Mutation$BankAccount_delete$bankAccount_delete({
    required this.message,
    this.$__typename = 'BankAccount_DeleteResponse',
  });

  factory Mutation$BankAccount_delete$bankAccount_delete.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$BankAccount_delete$bankAccount_delete(
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
    if (other is! Mutation$BankAccount_delete$bankAccount_delete ||
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

extension UtilityExtension$Mutation$BankAccount_delete$bankAccount_delete
    on Mutation$BankAccount_delete$bankAccount_delete {
  CopyWith$Mutation$BankAccount_delete$bankAccount_delete<
          Mutation$BankAccount_delete$bankAccount_delete>
      get copyWith => CopyWith$Mutation$BankAccount_delete$bankAccount_delete(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BankAccount_delete$bankAccount_delete<TRes> {
  factory CopyWith$Mutation$BankAccount_delete$bankAccount_delete(
    Mutation$BankAccount_delete$bankAccount_delete instance,
    TRes Function(Mutation$BankAccount_delete$bankAccount_delete) then,
  ) = _CopyWithImpl$Mutation$BankAccount_delete$bankAccount_delete;

  factory CopyWith$Mutation$BankAccount_delete$bankAccount_delete.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$BankAccount_delete$bankAccount_delete;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$BankAccount_delete$bankAccount_delete<TRes>
    implements CopyWith$Mutation$BankAccount_delete$bankAccount_delete<TRes> {
  _CopyWithImpl$Mutation$BankAccount_delete$bankAccount_delete(
    this._instance,
    this._then,
  );

  final Mutation$BankAccount_delete$bankAccount_delete _instance;

  final TRes Function(Mutation$BankAccount_delete$bankAccount_delete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BankAccount_delete$bankAccount_delete(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$BankAccount_delete$bankAccount_delete<TRes>
    implements CopyWith$Mutation$BankAccount_delete$bankAccount_delete<TRes> {
  _CopyWithStubImpl$Mutation$BankAccount_delete$bankAccount_delete(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$BankAccount_create {
  factory Variables$Mutation$BankAccount_create(
          {required Input$BankAccount_CreateInput input}) =>
      Variables$Mutation$BankAccount_create._({
        r'input': input,
      });

  Variables$Mutation$BankAccount_create._(this._$data);

  factory Variables$Mutation$BankAccount_create.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$BankAccount_CreateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$BankAccount_create._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BankAccount_CreateInput get input =>
      (_$data['input'] as Input$BankAccount_CreateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$BankAccount_create<
          Variables$Mutation$BankAccount_create>
      get copyWith => CopyWith$Variables$Mutation$BankAccount_create(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$BankAccount_create ||
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

abstract class CopyWith$Variables$Mutation$BankAccount_create<TRes> {
  factory CopyWith$Variables$Mutation$BankAccount_create(
    Variables$Mutation$BankAccount_create instance,
    TRes Function(Variables$Mutation$BankAccount_create) then,
  ) = _CopyWithImpl$Variables$Mutation$BankAccount_create;

  factory CopyWith$Variables$Mutation$BankAccount_create.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$BankAccount_create;

  TRes call({Input$BankAccount_CreateInput? input});
}

class _CopyWithImpl$Variables$Mutation$BankAccount_create<TRes>
    implements CopyWith$Variables$Mutation$BankAccount_create<TRes> {
  _CopyWithImpl$Variables$Mutation$BankAccount_create(
    this._instance,
    this._then,
  );

  final Variables$Mutation$BankAccount_create _instance;

  final TRes Function(Variables$Mutation$BankAccount_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$BankAccount_create._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BankAccount_CreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$BankAccount_create<TRes>
    implements CopyWith$Variables$Mutation$BankAccount_create<TRes> {
  _CopyWithStubImpl$Variables$Mutation$BankAccount_create(this._res);

  TRes _res;

  call({Input$BankAccount_CreateInput? input}) => _res;
}

class Mutation$BankAccount_create {
  Mutation$BankAccount_create({
    required this.bankAccount_create,
    this.$__typename = 'Mutation',
  });

  factory Mutation$BankAccount_create.fromJson(Map<String, dynamic> json) {
    final l$bankAccount_create = json['bankAccount_create'];
    final l$$__typename = json['__typename'];
    return Mutation$BankAccount_create(
      bankAccount_create:
          Mutation$BankAccount_create$bankAccount_create.fromJson(
              (l$bankAccount_create as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$BankAccount_create$bankAccount_create bankAccount_create;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankAccount_create = bankAccount_create;
    _resultData['bankAccount_create'] = l$bankAccount_create.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankAccount_create = bankAccount_create;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankAccount_create,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$BankAccount_create ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankAccount_create = bankAccount_create;
    final lOther$bankAccount_create = other.bankAccount_create;
    if (l$bankAccount_create != lOther$bankAccount_create) {
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

extension UtilityExtension$Mutation$BankAccount_create
    on Mutation$BankAccount_create {
  CopyWith$Mutation$BankAccount_create<Mutation$BankAccount_create>
      get copyWith => CopyWith$Mutation$BankAccount_create(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BankAccount_create<TRes> {
  factory CopyWith$Mutation$BankAccount_create(
    Mutation$BankAccount_create instance,
    TRes Function(Mutation$BankAccount_create) then,
  ) = _CopyWithImpl$Mutation$BankAccount_create;

  factory CopyWith$Mutation$BankAccount_create.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BankAccount_create;

  TRes call({
    Mutation$BankAccount_create$bankAccount_create? bankAccount_create,
    String? $__typename,
  });
  CopyWith$Mutation$BankAccount_create$bankAccount_create<TRes>
      get bankAccount_create;
}

class _CopyWithImpl$Mutation$BankAccount_create<TRes>
    implements CopyWith$Mutation$BankAccount_create<TRes> {
  _CopyWithImpl$Mutation$BankAccount_create(
    this._instance,
    this._then,
  );

  final Mutation$BankAccount_create _instance;

  final TRes Function(Mutation$BankAccount_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankAccount_create = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BankAccount_create(
        bankAccount_create:
            bankAccount_create == _undefined || bankAccount_create == null
                ? _instance.bankAccount_create
                : (bankAccount_create
                    as Mutation$BankAccount_create$bankAccount_create),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$BankAccount_create$bankAccount_create<TRes>
      get bankAccount_create {
    final local$bankAccount_create = _instance.bankAccount_create;
    return CopyWith$Mutation$BankAccount_create$bankAccount_create(
        local$bankAccount_create, (e) => call(bankAccount_create: e));
  }
}

class _CopyWithStubImpl$Mutation$BankAccount_create<TRes>
    implements CopyWith$Mutation$BankAccount_create<TRes> {
  _CopyWithStubImpl$Mutation$BankAccount_create(this._res);

  TRes _res;

  call({
    Mutation$BankAccount_create$bankAccount_create? bankAccount_create,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$BankAccount_create$bankAccount_create<TRes>
      get bankAccount_create =>
          CopyWith$Mutation$BankAccount_create$bankAccount_create.stub(_res);
}

const documentNodeMutationBankAccount_create = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'BankAccount_create'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BankAccount_CreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bankAccount_create'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account_no'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_name'),
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
Mutation$BankAccount_create _parserFn$Mutation$BankAccount_create(
        Map<String, dynamic> data) =>
    Mutation$BankAccount_create.fromJson(data);
typedef OnMutationCompleted$Mutation$BankAccount_create = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$BankAccount_create?,
);

class Options$Mutation$BankAccount_create
    extends graphql.MutationOptions<Mutation$BankAccount_create> {
  Options$Mutation$BankAccount_create({
    String? operationName,
    required Variables$Mutation$BankAccount_create variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BankAccount_create? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BankAccount_create? onCompleted,
    graphql.OnMutationUpdate<Mutation$BankAccount_create>? update,
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
                        : _parserFn$Mutation$BankAccount_create(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBankAccount_create,
          parserFn: _parserFn$Mutation$BankAccount_create,
        );

  final OnMutationCompleted$Mutation$BankAccount_create? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$BankAccount_create
    extends graphql.WatchQueryOptions<Mutation$BankAccount_create> {
  WatchOptions$Mutation$BankAccount_create({
    String? operationName,
    required Variables$Mutation$BankAccount_create variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BankAccount_create? typedOptimisticResult,
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
          document: documentNodeMutationBankAccount_create,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$BankAccount_create,
        );
}

extension ClientExtension$Mutation$BankAccount_create on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$BankAccount_create>>
      mutate$BankAccount_create(
              Options$Mutation$BankAccount_create options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$BankAccount_create>
      watchMutation$BankAccount_create(
              WatchOptions$Mutation$BankAccount_create options) =>
          this.watchMutation(options);
}

class Mutation$BankAccount_create$HookResult {
  Mutation$BankAccount_create$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$BankAccount_create runMutation;

  final graphql.QueryResult<Mutation$BankAccount_create> result;
}

Mutation$BankAccount_create$HookResult useMutation$BankAccount_create(
    [WidgetOptions$Mutation$BankAccount_create? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$BankAccount_create());
  return Mutation$BankAccount_create$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$BankAccount_create>
    useWatchMutation$BankAccount_create(
            WatchOptions$Mutation$BankAccount_create options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$BankAccount_create
    extends graphql.MutationOptions<Mutation$BankAccount_create> {
  WidgetOptions$Mutation$BankAccount_create({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BankAccount_create? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BankAccount_create? onCompleted,
    graphql.OnMutationUpdate<Mutation$BankAccount_create>? update,
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
                        : _parserFn$Mutation$BankAccount_create(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBankAccount_create,
          parserFn: _parserFn$Mutation$BankAccount_create,
        );

  final OnMutationCompleted$Mutation$BankAccount_create? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$BankAccount_create
    = graphql.MultiSourceResult<Mutation$BankAccount_create> Function(
  Variables$Mutation$BankAccount_create, {
  Object? optimisticResult,
  Mutation$BankAccount_create? typedOptimisticResult,
});
typedef Builder$Mutation$BankAccount_create = widgets.Widget Function(
  RunMutation$Mutation$BankAccount_create,
  graphql.QueryResult<Mutation$BankAccount_create>?,
);

class Mutation$BankAccount_create$Widget
    extends graphql_flutter.Mutation<Mutation$BankAccount_create> {
  Mutation$BankAccount_create$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$BankAccount_create? options,
    required Builder$Mutation$BankAccount_create builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$BankAccount_create(),
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

class Mutation$BankAccount_create$bankAccount_create {
  Mutation$BankAccount_create$bankAccount_create({
    required this.id,
    required this.account_no,
    required this.account_name,
    required this.bank_name,
    this.$__typename = 'BankAccount_Response',
  });

  factory Mutation$BankAccount_create$bankAccount_create.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$account_no = json['account_no'];
    final l$account_name = json['account_name'];
    final l$bank_name = json['bank_name'];
    final l$$__typename = json['__typename'];
    return Mutation$BankAccount_create$bankAccount_create(
      id: (l$id as num).toDouble(),
      account_no: (l$account_no as String),
      account_name: (l$account_name as String),
      bank_name: (l$bank_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final double id;

  final String account_no;

  final String account_name;

  final String bank_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$account_no = account_no;
    _resultData['account_no'] = l$account_no;
    final l$account_name = account_name;
    _resultData['account_name'] = l$account_name;
    final l$bank_name = bank_name;
    _resultData['bank_name'] = l$bank_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$account_no = account_no;
    final l$account_name = account_name;
    final l$bank_name = bank_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$account_no,
      l$account_name,
      l$bank_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$BankAccount_create$bankAccount_create ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$account_no = account_no;
    final lOther$account_no = other.account_no;
    if (l$account_no != lOther$account_no) {
      return false;
    }
    final l$account_name = account_name;
    final lOther$account_name = other.account_name;
    if (l$account_name != lOther$account_name) {
      return false;
    }
    final l$bank_name = bank_name;
    final lOther$bank_name = other.bank_name;
    if (l$bank_name != lOther$bank_name) {
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

extension UtilityExtension$Mutation$BankAccount_create$bankAccount_create
    on Mutation$BankAccount_create$bankAccount_create {
  CopyWith$Mutation$BankAccount_create$bankAccount_create<
          Mutation$BankAccount_create$bankAccount_create>
      get copyWith => CopyWith$Mutation$BankAccount_create$bankAccount_create(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BankAccount_create$bankAccount_create<TRes> {
  factory CopyWith$Mutation$BankAccount_create$bankAccount_create(
    Mutation$BankAccount_create$bankAccount_create instance,
    TRes Function(Mutation$BankAccount_create$bankAccount_create) then,
  ) = _CopyWithImpl$Mutation$BankAccount_create$bankAccount_create;

  factory CopyWith$Mutation$BankAccount_create$bankAccount_create.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$BankAccount_create$bankAccount_create;

  TRes call({
    double? id,
    String? account_no,
    String? account_name,
    String? bank_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$BankAccount_create$bankAccount_create<TRes>
    implements CopyWith$Mutation$BankAccount_create$bankAccount_create<TRes> {
  _CopyWithImpl$Mutation$BankAccount_create$bankAccount_create(
    this._instance,
    this._then,
  );

  final Mutation$BankAccount_create$bankAccount_create _instance;

  final TRes Function(Mutation$BankAccount_create$bankAccount_create) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? account_no = _undefined,
    Object? account_name = _undefined,
    Object? bank_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BankAccount_create$bankAccount_create(
        id: id == _undefined || id == null ? _instance.id : (id as double),
        account_no: account_no == _undefined || account_no == null
            ? _instance.account_no
            : (account_no as String),
        account_name: account_name == _undefined || account_name == null
            ? _instance.account_name
            : (account_name as String),
        bank_name: bank_name == _undefined || bank_name == null
            ? _instance.bank_name
            : (bank_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$BankAccount_create$bankAccount_create<TRes>
    implements CopyWith$Mutation$BankAccount_create$bankAccount_create<TRes> {
  _CopyWithStubImpl$Mutation$BankAccount_create$bankAccount_create(this._res);

  TRes _res;

  call({
    double? id,
    String? account_no,
    String? account_name,
    String? bank_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$BankAccount_getAll {
  Query$BankAccount_getAll({
    required this.bankAccount_getAll,
    this.$__typename = 'Query',
  });

  factory Query$BankAccount_getAll.fromJson(Map<String, dynamic> json) {
    final l$bankAccount_getAll = json['bankAccount_getAll'];
    final l$$__typename = json['__typename'];
    return Query$BankAccount_getAll(
      bankAccount_getAll: (l$bankAccount_getAll as List<dynamic>)
          .map((e) => Query$BankAccount_getAll$bankAccount_getAll.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$BankAccount_getAll$bankAccount_getAll> bankAccount_getAll;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankAccount_getAll = bankAccount_getAll;
    _resultData['bankAccount_getAll'] =
        l$bankAccount_getAll.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankAccount_getAll = bankAccount_getAll;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bankAccount_getAll.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$BankAccount_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankAccount_getAll = bankAccount_getAll;
    final lOther$bankAccount_getAll = other.bankAccount_getAll;
    if (l$bankAccount_getAll.length != lOther$bankAccount_getAll.length) {
      return false;
    }
    for (int i = 0; i < l$bankAccount_getAll.length; i++) {
      final l$bankAccount_getAll$entry = l$bankAccount_getAll[i];
      final lOther$bankAccount_getAll$entry = lOther$bankAccount_getAll[i];
      if (l$bankAccount_getAll$entry != lOther$bankAccount_getAll$entry) {
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

extension UtilityExtension$Query$BankAccount_getAll
    on Query$BankAccount_getAll {
  CopyWith$Query$BankAccount_getAll<Query$BankAccount_getAll> get copyWith =>
      CopyWith$Query$BankAccount_getAll(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$BankAccount_getAll<TRes> {
  factory CopyWith$Query$BankAccount_getAll(
    Query$BankAccount_getAll instance,
    TRes Function(Query$BankAccount_getAll) then,
  ) = _CopyWithImpl$Query$BankAccount_getAll;

  factory CopyWith$Query$BankAccount_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$BankAccount_getAll;

  TRes call({
    List<Query$BankAccount_getAll$bankAccount_getAll>? bankAccount_getAll,
    String? $__typename,
  });
  TRes bankAccount_getAll(
      Iterable<Query$BankAccount_getAll$bankAccount_getAll> Function(
              Iterable<
                  CopyWith$Query$BankAccount_getAll$bankAccount_getAll<
                      Query$BankAccount_getAll$bankAccount_getAll>>)
          _fn);
}

class _CopyWithImpl$Query$BankAccount_getAll<TRes>
    implements CopyWith$Query$BankAccount_getAll<TRes> {
  _CopyWithImpl$Query$BankAccount_getAll(
    this._instance,
    this._then,
  );

  final Query$BankAccount_getAll _instance;

  final TRes Function(Query$BankAccount_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankAccount_getAll = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$BankAccount_getAll(
        bankAccount_getAll:
            bankAccount_getAll == _undefined || bankAccount_getAll == null
                ? _instance.bankAccount_getAll
                : (bankAccount_getAll
                    as List<Query$BankAccount_getAll$bankAccount_getAll>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes bankAccount_getAll(
          Iterable<Query$BankAccount_getAll$bankAccount_getAll> Function(
                  Iterable<
                      CopyWith$Query$BankAccount_getAll$bankAccount_getAll<
                          Query$BankAccount_getAll$bankAccount_getAll>>)
              _fn) =>
      call(
          bankAccount_getAll: _fn(_instance.bankAccount_getAll
              .map((e) => CopyWith$Query$BankAccount_getAll$bankAccount_getAll(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$BankAccount_getAll<TRes>
    implements CopyWith$Query$BankAccount_getAll<TRes> {
  _CopyWithStubImpl$Query$BankAccount_getAll(this._res);

  TRes _res;

  call({
    List<Query$BankAccount_getAll$bankAccount_getAll>? bankAccount_getAll,
    String? $__typename,
  }) =>
      _res;

  bankAccount_getAll(_fn) => _res;
}

const documentNodeQueryBankAccount_getAll = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'BankAccount_getAll'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bankAccount_getAll'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account_no'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bankCode'),
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
Query$BankAccount_getAll _parserFn$Query$BankAccount_getAll(
        Map<String, dynamic> data) =>
    Query$BankAccount_getAll.fromJson(data);
typedef OnQueryComplete$Query$BankAccount_getAll = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$BankAccount_getAll?,
);

class Options$Query$BankAccount_getAll
    extends graphql.QueryOptions<Query$BankAccount_getAll> {
  Options$Query$BankAccount_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BankAccount_getAll? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$BankAccount_getAll? onComplete,
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
                        : _parserFn$Query$BankAccount_getAll(data),
                  ),
          onError: onError,
          document: documentNodeQueryBankAccount_getAll,
          parserFn: _parserFn$Query$BankAccount_getAll,
        );

  final OnQueryComplete$Query$BankAccount_getAll? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$BankAccount_getAll
    extends graphql.WatchQueryOptions<Query$BankAccount_getAll> {
  WatchOptions$Query$BankAccount_getAll({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BankAccount_getAll? typedOptimisticResult,
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
          document: documentNodeQueryBankAccount_getAll,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$BankAccount_getAll,
        );
}

class FetchMoreOptions$Query$BankAccount_getAll
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$BankAccount_getAll(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryBankAccount_getAll,
        );
}

extension ClientExtension$Query$BankAccount_getAll on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$BankAccount_getAll>>
      query$BankAccount_getAll(
              [Options$Query$BankAccount_getAll? options]) async =>
          await this.query(options ?? Options$Query$BankAccount_getAll());
  graphql.ObservableQuery<Query$BankAccount_getAll>
      watchQuery$BankAccount_getAll(
              [WatchOptions$Query$BankAccount_getAll? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$BankAccount_getAll());
  void writeQuery$BankAccount_getAll({
    required Query$BankAccount_getAll data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryBankAccount_getAll)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$BankAccount_getAll? readQuery$BankAccount_getAll(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryBankAccount_getAll)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$BankAccount_getAll.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$BankAccount_getAll>
    useQuery$BankAccount_getAll([Options$Query$BankAccount_getAll? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$BankAccount_getAll());
graphql.ObservableQuery<Query$BankAccount_getAll>
    useWatchQuery$BankAccount_getAll(
            [WatchOptions$Query$BankAccount_getAll? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$BankAccount_getAll());

class Query$BankAccount_getAll$Widget
    extends graphql_flutter.Query<Query$BankAccount_getAll> {
  Query$BankAccount_getAll$Widget({
    widgets.Key? key,
    Options$Query$BankAccount_getAll? options,
    required graphql_flutter.QueryBuilder<Query$BankAccount_getAll> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$BankAccount_getAll(),
          builder: builder,
        );
}

class Query$BankAccount_getAll$bankAccount_getAll {
  Query$BankAccount_getAll$bankAccount_getAll({
    required this.id,
    required this.account_name,
    required this.account_no,
    required this.bank_name,
    this.bankCode,
    this.$__typename = 'BankAccount_Response',
  });

  factory Query$BankAccount_getAll$bankAccount_getAll.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$account_name = json['account_name'];
    final l$account_no = json['account_no'];
    final l$bank_name = json['bank_name'];
    final l$bankCode = json['bankCode'];
    final l$$__typename = json['__typename'];
    return Query$BankAccount_getAll$bankAccount_getAll(
      id: (l$id as num).toDouble(),
      account_name: (l$account_name as String),
      account_no: (l$account_no as String),
      bank_name: (l$bank_name as String),
      bankCode: (l$bankCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final double id;

  final String account_name;

  final String account_no;

  final String bank_name;

  final String? bankCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$account_name = account_name;
    _resultData['account_name'] = l$account_name;
    final l$account_no = account_no;
    _resultData['account_no'] = l$account_no;
    final l$bank_name = bank_name;
    _resultData['bank_name'] = l$bank_name;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$account_name = account_name;
    final l$account_no = account_no;
    final l$bank_name = bank_name;
    final l$bankCode = bankCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$account_name,
      l$account_no,
      l$bank_name,
      l$bankCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$BankAccount_getAll$bankAccount_getAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$account_name = account_name;
    final lOther$account_name = other.account_name;
    if (l$account_name != lOther$account_name) {
      return false;
    }
    final l$account_no = account_no;
    final lOther$account_no = other.account_no;
    if (l$account_no != lOther$account_no) {
      return false;
    }
    final l$bank_name = bank_name;
    final lOther$bank_name = other.bank_name;
    if (l$bank_name != lOther$bank_name) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
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

extension UtilityExtension$Query$BankAccount_getAll$bankAccount_getAll
    on Query$BankAccount_getAll$bankAccount_getAll {
  CopyWith$Query$BankAccount_getAll$bankAccount_getAll<
          Query$BankAccount_getAll$bankAccount_getAll>
      get copyWith => CopyWith$Query$BankAccount_getAll$bankAccount_getAll(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BankAccount_getAll$bankAccount_getAll<TRes> {
  factory CopyWith$Query$BankAccount_getAll$bankAccount_getAll(
    Query$BankAccount_getAll$bankAccount_getAll instance,
    TRes Function(Query$BankAccount_getAll$bankAccount_getAll) then,
  ) = _CopyWithImpl$Query$BankAccount_getAll$bankAccount_getAll;

  factory CopyWith$Query$BankAccount_getAll$bankAccount_getAll.stub(TRes res) =
      _CopyWithStubImpl$Query$BankAccount_getAll$bankAccount_getAll;

  TRes call({
    double? id,
    String? account_name,
    String? account_no,
    String? bank_name,
    String? bankCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$BankAccount_getAll$bankAccount_getAll<TRes>
    implements CopyWith$Query$BankAccount_getAll$bankAccount_getAll<TRes> {
  _CopyWithImpl$Query$BankAccount_getAll$bankAccount_getAll(
    this._instance,
    this._then,
  );

  final Query$BankAccount_getAll$bankAccount_getAll _instance;

  final TRes Function(Query$BankAccount_getAll$bankAccount_getAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? account_name = _undefined,
    Object? account_no = _undefined,
    Object? bank_name = _undefined,
    Object? bankCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$BankAccount_getAll$bankAccount_getAll(
        id: id == _undefined || id == null ? _instance.id : (id as double),
        account_name: account_name == _undefined || account_name == null
            ? _instance.account_name
            : (account_name as String),
        account_no: account_no == _undefined || account_no == null
            ? _instance.account_no
            : (account_no as String),
        bank_name: bank_name == _undefined || bank_name == null
            ? _instance.bank_name
            : (bank_name as String),
        bankCode:
            bankCode == _undefined ? _instance.bankCode : (bankCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$BankAccount_getAll$bankAccount_getAll<TRes>
    implements CopyWith$Query$BankAccount_getAll$bankAccount_getAll<TRes> {
  _CopyWithStubImpl$Query$BankAccount_getAll$bankAccount_getAll(this._res);

  TRes _res;

  call({
    double? id,
    String? account_name,
    String? account_no,
    String? bank_name,
    String? bankCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$BankList {
  Query$BankList({
    required this.bankList,
    this.$__typename = 'Query',
  });

  factory Query$BankList.fromJson(Map<String, dynamic> json) {
    final l$bankList = json['bankList'];
    final l$$__typename = json['__typename'];
    return Query$BankList(
      bankList: (l$bankList as List<dynamic>)
          .map((e) =>
              Query$BankList$bankList.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$BankList$bankList> bankList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankList = bankList;
    _resultData['bankList'] = l$bankList.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankList = bankList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bankList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$BankList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankList = bankList;
    final lOther$bankList = other.bankList;
    if (l$bankList.length != lOther$bankList.length) {
      return false;
    }
    for (int i = 0; i < l$bankList.length; i++) {
      final l$bankList$entry = l$bankList[i];
      final lOther$bankList$entry = lOther$bankList[i];
      if (l$bankList$entry != lOther$bankList$entry) {
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

extension UtilityExtension$Query$BankList on Query$BankList {
  CopyWith$Query$BankList<Query$BankList> get copyWith =>
      CopyWith$Query$BankList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$BankList<TRes> {
  factory CopyWith$Query$BankList(
    Query$BankList instance,
    TRes Function(Query$BankList) then,
  ) = _CopyWithImpl$Query$BankList;

  factory CopyWith$Query$BankList.stub(TRes res) =
      _CopyWithStubImpl$Query$BankList;

  TRes call({
    List<Query$BankList$bankList>? bankList,
    String? $__typename,
  });
  TRes bankList(
      Iterable<Query$BankList$bankList> Function(
              Iterable<
                  CopyWith$Query$BankList$bankList<Query$BankList$bankList>>)
          _fn);
}

class _CopyWithImpl$Query$BankList<TRes>
    implements CopyWith$Query$BankList<TRes> {
  _CopyWithImpl$Query$BankList(
    this._instance,
    this._then,
  );

  final Query$BankList _instance;

  final TRes Function(Query$BankList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$BankList(
        bankList: bankList == _undefined || bankList == null
            ? _instance.bankList
            : (bankList as List<Query$BankList$bankList>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes bankList(
          Iterable<Query$BankList$bankList> Function(
                  Iterable<
                      CopyWith$Query$BankList$bankList<
                          Query$BankList$bankList>>)
              _fn) =>
      call(
          bankList: _fn(
              _instance.bankList.map((e) => CopyWith$Query$BankList$bankList(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$BankList<TRes>
    implements CopyWith$Query$BankList<TRes> {
  _CopyWithStubImpl$Query$BankList(this._res);

  TRes _res;

  call({
    List<Query$BankList$bankList>? bankList,
    String? $__typename,
  }) =>
      _res;

  bankList(_fn) => _res;
}

const documentNodeQueryBankList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'BankList'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bankList'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'bankCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bankName'),
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
Query$BankList _parserFn$Query$BankList(Map<String, dynamic> data) =>
    Query$BankList.fromJson(data);
typedef OnQueryComplete$Query$BankList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$BankList?,
);

class Options$Query$BankList extends graphql.QueryOptions<Query$BankList> {
  Options$Query$BankList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BankList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$BankList? onComplete,
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
                    data == null ? null : _parserFn$Query$BankList(data),
                  ),
          onError: onError,
          document: documentNodeQueryBankList,
          parserFn: _parserFn$Query$BankList,
        );

  final OnQueryComplete$Query$BankList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$BankList
    extends graphql.WatchQueryOptions<Query$BankList> {
  WatchOptions$Query$BankList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BankList? typedOptimisticResult,
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
          document: documentNodeQueryBankList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$BankList,
        );
}

class FetchMoreOptions$Query$BankList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$BankList({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryBankList,
        );
}

extension ClientExtension$Query$BankList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$BankList>> query$BankList(
          [Options$Query$BankList? options]) async =>
      await this.query(options ?? Options$Query$BankList());
  graphql.ObservableQuery<Query$BankList> watchQuery$BankList(
          [WatchOptions$Query$BankList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$BankList());
  void writeQuery$BankList({
    required Query$BankList data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryBankList)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$BankList? readQuery$BankList({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryBankList)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$BankList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$BankList> useQuery$BankList(
        [Options$Query$BankList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$BankList());
graphql.ObservableQuery<Query$BankList> useWatchQuery$BankList(
        [WatchOptions$Query$BankList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$BankList());

class Query$BankList$Widget extends graphql_flutter.Query<Query$BankList> {
  Query$BankList$Widget({
    widgets.Key? key,
    Options$Query$BankList? options,
    required graphql_flutter.QueryBuilder<Query$BankList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$BankList(),
          builder: builder,
        );
}

class Query$BankList$bankList {
  Query$BankList$bankList({
    this.bankCode,
    required this.bankName,
    this.$__typename = 'BankList_Response',
  });

  factory Query$BankList$bankList.fromJson(Map<String, dynamic> json) {
    final l$bankCode = json['bankCode'];
    final l$bankName = json['bankName'];
    final l$$__typename = json['__typename'];
    return Query$BankList$bankList(
      bankCode: (l$bankCode as String?),
      bankName: (l$bankName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? bankCode;

  final String bankName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankCode = bankCode;
    final l$bankName = bankName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankCode,
      l$bankName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$BankList$bankList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
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

extension UtilityExtension$Query$BankList$bankList on Query$BankList$bankList {
  CopyWith$Query$BankList$bankList<Query$BankList$bankList> get copyWith =>
      CopyWith$Query$BankList$bankList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$BankList$bankList<TRes> {
  factory CopyWith$Query$BankList$bankList(
    Query$BankList$bankList instance,
    TRes Function(Query$BankList$bankList) then,
  ) = _CopyWithImpl$Query$BankList$bankList;

  factory CopyWith$Query$BankList$bankList.stub(TRes res) =
      _CopyWithStubImpl$Query$BankList$bankList;

  TRes call({
    String? bankCode,
    String? bankName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$BankList$bankList<TRes>
    implements CopyWith$Query$BankList$bankList<TRes> {
  _CopyWithImpl$Query$BankList$bankList(
    this._instance,
    this._then,
  );

  final Query$BankList$bankList _instance;

  final TRes Function(Query$BankList$bankList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankCode = _undefined,
    Object? bankName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$BankList$bankList(
        bankCode:
            bankCode == _undefined ? _instance.bankCode : (bankCode as String?),
        bankName: bankName == _undefined || bankName == null
            ? _instance.bankName
            : (bankName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$BankList$bankList<TRes>
    implements CopyWith$Query$BankList$bankList<TRes> {
  _CopyWithStubImpl$Query$BankList$bankList(this._res);

  TRes _res;

  call({
    String? bankCode,
    String? bankName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Bank_verifyAccountNo {
  factory Variables$Query$Bank_verifyAccountNo(
          {required Input$BankGetAccountName_Input input}) =>
      Variables$Query$Bank_verifyAccountNo._({
        r'input': input,
      });

  Variables$Query$Bank_verifyAccountNo._(this._$data);

  factory Variables$Query$Bank_verifyAccountNo.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$BankGetAccountName_Input.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$Bank_verifyAccountNo._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BankGetAccountName_Input get input =>
      (_$data['input'] as Input$BankGetAccountName_Input);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Bank_verifyAccountNo<
          Variables$Query$Bank_verifyAccountNo>
      get copyWith => CopyWith$Variables$Query$Bank_verifyAccountNo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Bank_verifyAccountNo ||
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

abstract class CopyWith$Variables$Query$Bank_verifyAccountNo<TRes> {
  factory CopyWith$Variables$Query$Bank_verifyAccountNo(
    Variables$Query$Bank_verifyAccountNo instance,
    TRes Function(Variables$Query$Bank_verifyAccountNo) then,
  ) = _CopyWithImpl$Variables$Query$Bank_verifyAccountNo;

  factory CopyWith$Variables$Query$Bank_verifyAccountNo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Bank_verifyAccountNo;

  TRes call({Input$BankGetAccountName_Input? input});
}

class _CopyWithImpl$Variables$Query$Bank_verifyAccountNo<TRes>
    implements CopyWith$Variables$Query$Bank_verifyAccountNo<TRes> {
  _CopyWithImpl$Variables$Query$Bank_verifyAccountNo(
    this._instance,
    this._then,
  );

  final Variables$Query$Bank_verifyAccountNo _instance;

  final TRes Function(Variables$Query$Bank_verifyAccountNo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$Bank_verifyAccountNo._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BankGetAccountName_Input),
      }));
}

class _CopyWithStubImpl$Variables$Query$Bank_verifyAccountNo<TRes>
    implements CopyWith$Variables$Query$Bank_verifyAccountNo<TRes> {
  _CopyWithStubImpl$Variables$Query$Bank_verifyAccountNo(this._res);

  TRes _res;

  call({Input$BankGetAccountName_Input? input}) => _res;
}

class Query$Bank_verifyAccountNo {
  Query$Bank_verifyAccountNo({
    required this.bank_verifyAccountNo,
    this.$__typename = 'Query',
  });

  factory Query$Bank_verifyAccountNo.fromJson(Map<String, dynamic> json) {
    final l$bank_verifyAccountNo = json['bank_verifyAccountNo'];
    final l$$__typename = json['__typename'];
    return Query$Bank_verifyAccountNo(
      bank_verifyAccountNo:
          Query$Bank_verifyAccountNo$bank_verifyAccountNo.fromJson(
              (l$bank_verifyAccountNo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Bank_verifyAccountNo$bank_verifyAccountNo bank_verifyAccountNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_verifyAccountNo = bank_verifyAccountNo;
    _resultData['bank_verifyAccountNo'] = l$bank_verifyAccountNo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_verifyAccountNo = bank_verifyAccountNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_verifyAccountNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Bank_verifyAccountNo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_verifyAccountNo = bank_verifyAccountNo;
    final lOther$bank_verifyAccountNo = other.bank_verifyAccountNo;
    if (l$bank_verifyAccountNo != lOther$bank_verifyAccountNo) {
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

extension UtilityExtension$Query$Bank_verifyAccountNo
    on Query$Bank_verifyAccountNo {
  CopyWith$Query$Bank_verifyAccountNo<Query$Bank_verifyAccountNo>
      get copyWith => CopyWith$Query$Bank_verifyAccountNo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Bank_verifyAccountNo<TRes> {
  factory CopyWith$Query$Bank_verifyAccountNo(
    Query$Bank_verifyAccountNo instance,
    TRes Function(Query$Bank_verifyAccountNo) then,
  ) = _CopyWithImpl$Query$Bank_verifyAccountNo;

  factory CopyWith$Query$Bank_verifyAccountNo.stub(TRes res) =
      _CopyWithStubImpl$Query$Bank_verifyAccountNo;

  TRes call({
    Query$Bank_verifyAccountNo$bank_verifyAccountNo? bank_verifyAccountNo,
    String? $__typename,
  });
  CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes>
      get bank_verifyAccountNo;
}

class _CopyWithImpl$Query$Bank_verifyAccountNo<TRes>
    implements CopyWith$Query$Bank_verifyAccountNo<TRes> {
  _CopyWithImpl$Query$Bank_verifyAccountNo(
    this._instance,
    this._then,
  );

  final Query$Bank_verifyAccountNo _instance;

  final TRes Function(Query$Bank_verifyAccountNo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_verifyAccountNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Bank_verifyAccountNo(
        bank_verifyAccountNo:
            bank_verifyAccountNo == _undefined || bank_verifyAccountNo == null
                ? _instance.bank_verifyAccountNo
                : (bank_verifyAccountNo
                    as Query$Bank_verifyAccountNo$bank_verifyAccountNo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes>
      get bank_verifyAccountNo {
    final local$bank_verifyAccountNo = _instance.bank_verifyAccountNo;
    return CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo(
        local$bank_verifyAccountNo, (e) => call(bank_verifyAccountNo: e));
  }
}

class _CopyWithStubImpl$Query$Bank_verifyAccountNo<TRes>
    implements CopyWith$Query$Bank_verifyAccountNo<TRes> {
  _CopyWithStubImpl$Query$Bank_verifyAccountNo(this._res);

  TRes _res;

  call({
    Query$Bank_verifyAccountNo$bank_verifyAccountNo? bank_verifyAccountNo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes>
      get bank_verifyAccountNo =>
          CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo.stub(_res);
}

const documentNodeQueryBank_verifyAccountNo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Bank_verifyAccountNo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BankGetAccountName_Input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bank_verifyAccountNo'),
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
            name: NameNode(value: 'account_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account_number'),
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
Query$Bank_verifyAccountNo _parserFn$Query$Bank_verifyAccountNo(
        Map<String, dynamic> data) =>
    Query$Bank_verifyAccountNo.fromJson(data);
typedef OnQueryComplete$Query$Bank_verifyAccountNo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Bank_verifyAccountNo?,
);

class Options$Query$Bank_verifyAccountNo
    extends graphql.QueryOptions<Query$Bank_verifyAccountNo> {
  Options$Query$Bank_verifyAccountNo({
    String? operationName,
    required Variables$Query$Bank_verifyAccountNo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Bank_verifyAccountNo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Bank_verifyAccountNo? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                        : _parserFn$Query$Bank_verifyAccountNo(data),
                  ),
          onError: onError,
          document: documentNodeQueryBank_verifyAccountNo,
          parserFn: _parserFn$Query$Bank_verifyAccountNo,
        );

  final OnQueryComplete$Query$Bank_verifyAccountNo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Bank_verifyAccountNo
    extends graphql.WatchQueryOptions<Query$Bank_verifyAccountNo> {
  WatchOptions$Query$Bank_verifyAccountNo({
    String? operationName,
    required Variables$Query$Bank_verifyAccountNo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Bank_verifyAccountNo? typedOptimisticResult,
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
          document: documentNodeQueryBank_verifyAccountNo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Bank_verifyAccountNo,
        );
}

class FetchMoreOptions$Query$Bank_verifyAccountNo
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Bank_verifyAccountNo({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Bank_verifyAccountNo variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryBank_verifyAccountNo,
        );
}

extension ClientExtension$Query$Bank_verifyAccountNo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Bank_verifyAccountNo>>
      query$Bank_verifyAccountNo(
              Options$Query$Bank_verifyAccountNo options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$Bank_verifyAccountNo>
      watchQuery$Bank_verifyAccountNo(
              WatchOptions$Query$Bank_verifyAccountNo options) =>
          this.watchQuery(options);
  void writeQuery$Bank_verifyAccountNo({
    required Query$Bank_verifyAccountNo data,
    required Variables$Query$Bank_verifyAccountNo variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryBank_verifyAccountNo),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Bank_verifyAccountNo? readQuery$Bank_verifyAccountNo({
    required Variables$Query$Bank_verifyAccountNo variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryBank_verifyAccountNo),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Bank_verifyAccountNo.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Bank_verifyAccountNo>
    useQuery$Bank_verifyAccountNo(Options$Query$Bank_verifyAccountNo options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Bank_verifyAccountNo>
    useWatchQuery$Bank_verifyAccountNo(
            WatchOptions$Query$Bank_verifyAccountNo options) =>
        graphql_flutter.useWatchQuery(options);

class Query$Bank_verifyAccountNo$Widget
    extends graphql_flutter.Query<Query$Bank_verifyAccountNo> {
  Query$Bank_verifyAccountNo$Widget({
    widgets.Key? key,
    required Options$Query$Bank_verifyAccountNo options,
    required graphql_flutter.QueryBuilder<Query$Bank_verifyAccountNo> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Bank_verifyAccountNo$bank_verifyAccountNo {
  Query$Bank_verifyAccountNo$bank_verifyAccountNo({
    required this.account_name,
    required this.account_number,
    this.$__typename = 'BankGetAccountName_Response',
  });

  factory Query$Bank_verifyAccountNo$bank_verifyAccountNo.fromJson(
      Map<String, dynamic> json) {
    final l$account_name = json['account_name'];
    final l$account_number = json['account_number'];
    final l$$__typename = json['__typename'];
    return Query$Bank_verifyAccountNo$bank_verifyAccountNo(
      account_name: (l$account_name as String),
      account_number: (l$account_number as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String account_name;

  final String account_number;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$account_name = account_name;
    _resultData['account_name'] = l$account_name;
    final l$account_number = account_number;
    _resultData['account_number'] = l$account_number;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$account_name = account_name;
    final l$account_number = account_number;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$account_name,
      l$account_number,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Bank_verifyAccountNo$bank_verifyAccountNo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$account_name = account_name;
    final lOther$account_name = other.account_name;
    if (l$account_name != lOther$account_name) {
      return false;
    }
    final l$account_number = account_number;
    final lOther$account_number = other.account_number;
    if (l$account_number != lOther$account_number) {
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

extension UtilityExtension$Query$Bank_verifyAccountNo$bank_verifyAccountNo
    on Query$Bank_verifyAccountNo$bank_verifyAccountNo {
  CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo<
          Query$Bank_verifyAccountNo$bank_verifyAccountNo>
      get copyWith => CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes> {
  factory CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo(
    Query$Bank_verifyAccountNo$bank_verifyAccountNo instance,
    TRes Function(Query$Bank_verifyAccountNo$bank_verifyAccountNo) then,
  ) = _CopyWithImpl$Query$Bank_verifyAccountNo$bank_verifyAccountNo;

  factory CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Bank_verifyAccountNo$bank_verifyAccountNo;

  TRes call({
    String? account_name,
    String? account_number,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes>
    implements CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes> {
  _CopyWithImpl$Query$Bank_verifyAccountNo$bank_verifyAccountNo(
    this._instance,
    this._then,
  );

  final Query$Bank_verifyAccountNo$bank_verifyAccountNo _instance;

  final TRes Function(Query$Bank_verifyAccountNo$bank_verifyAccountNo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account_name = _undefined,
    Object? account_number = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Bank_verifyAccountNo$bank_verifyAccountNo(
        account_name: account_name == _undefined || account_name == null
            ? _instance.account_name
            : (account_name as String),
        account_number: account_number == _undefined || account_number == null
            ? _instance.account_number
            : (account_number as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes>
    implements CopyWith$Query$Bank_verifyAccountNo$bank_verifyAccountNo<TRes> {
  _CopyWithStubImpl$Query$Bank_verifyAccountNo$bank_verifyAccountNo(this._res);

  TRes _res;

  call({
    String? account_name,
    String? account_number,
    String? $__typename,
  }) =>
      _res;
}
