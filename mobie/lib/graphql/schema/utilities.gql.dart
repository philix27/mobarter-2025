import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$Utility_purchaseAirtime {
  factory Variables$Mutation$Utility_purchaseAirtime(
          {required Input$Utilities_PurchaseAirtimeInput input}) =>
      Variables$Mutation$Utility_purchaseAirtime._({
        r'input': input,
      });

  Variables$Mutation$Utility_purchaseAirtime._(this._$data);

  factory Variables$Mutation$Utility_purchaseAirtime.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Utilities_PurchaseAirtimeInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Utility_purchaseAirtime._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Utilities_PurchaseAirtimeInput get input =>
      (_$data['input'] as Input$Utilities_PurchaseAirtimeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Utility_purchaseAirtime<
          Variables$Mutation$Utility_purchaseAirtime>
      get copyWith => CopyWith$Variables$Mutation$Utility_purchaseAirtime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Utility_purchaseAirtime ||
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

abstract class CopyWith$Variables$Mutation$Utility_purchaseAirtime<TRes> {
  factory CopyWith$Variables$Mutation$Utility_purchaseAirtime(
    Variables$Mutation$Utility_purchaseAirtime instance,
    TRes Function(Variables$Mutation$Utility_purchaseAirtime) then,
  ) = _CopyWithImpl$Variables$Mutation$Utility_purchaseAirtime;

  factory CopyWith$Variables$Mutation$Utility_purchaseAirtime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Utility_purchaseAirtime;

  TRes call({Input$Utilities_PurchaseAirtimeInput? input});
}

class _CopyWithImpl$Variables$Mutation$Utility_purchaseAirtime<TRes>
    implements CopyWith$Variables$Mutation$Utility_purchaseAirtime<TRes> {
  _CopyWithImpl$Variables$Mutation$Utility_purchaseAirtime(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Utility_purchaseAirtime _instance;

  final TRes Function(Variables$Mutation$Utility_purchaseAirtime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Utility_purchaseAirtime._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Utilities_PurchaseAirtimeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Utility_purchaseAirtime<TRes>
    implements CopyWith$Variables$Mutation$Utility_purchaseAirtime<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Utility_purchaseAirtime(this._res);

  TRes _res;

  call({Input$Utilities_PurchaseAirtimeInput? input}) => _res;
}

class Mutation$Utility_purchaseAirtime {
  Mutation$Utility_purchaseAirtime({
    required this.utility_purchaseAirtime,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Utility_purchaseAirtime.fromJson(Map<String, dynamic> json) {
    final l$utility_purchaseAirtime = json['utility_purchaseAirtime'];
    final l$$__typename = json['__typename'];
    return Mutation$Utility_purchaseAirtime(
      utility_purchaseAirtime:
          Mutation$Utility_purchaseAirtime$utility_purchaseAirtime.fromJson(
              (l$utility_purchaseAirtime as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Utility_purchaseAirtime$utility_purchaseAirtime
      utility_purchaseAirtime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$utility_purchaseAirtime = utility_purchaseAirtime;
    _resultData['utility_purchaseAirtime'] = l$utility_purchaseAirtime.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$utility_purchaseAirtime = utility_purchaseAirtime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$utility_purchaseAirtime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Utility_purchaseAirtime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$utility_purchaseAirtime = utility_purchaseAirtime;
    final lOther$utility_purchaseAirtime = other.utility_purchaseAirtime;
    if (l$utility_purchaseAirtime != lOther$utility_purchaseAirtime) {
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

extension UtilityExtension$Mutation$Utility_purchaseAirtime
    on Mutation$Utility_purchaseAirtime {
  CopyWith$Mutation$Utility_purchaseAirtime<Mutation$Utility_purchaseAirtime>
      get copyWith => CopyWith$Mutation$Utility_purchaseAirtime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Utility_purchaseAirtime<TRes> {
  factory CopyWith$Mutation$Utility_purchaseAirtime(
    Mutation$Utility_purchaseAirtime instance,
    TRes Function(Mutation$Utility_purchaseAirtime) then,
  ) = _CopyWithImpl$Mutation$Utility_purchaseAirtime;

  factory CopyWith$Mutation$Utility_purchaseAirtime.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Utility_purchaseAirtime;

  TRes call({
    Mutation$Utility_purchaseAirtime$utility_purchaseAirtime?
        utility_purchaseAirtime,
    String? $__typename,
  });
  CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<TRes>
      get utility_purchaseAirtime;
}

class _CopyWithImpl$Mutation$Utility_purchaseAirtime<TRes>
    implements CopyWith$Mutation$Utility_purchaseAirtime<TRes> {
  _CopyWithImpl$Mutation$Utility_purchaseAirtime(
    this._instance,
    this._then,
  );

  final Mutation$Utility_purchaseAirtime _instance;

  final TRes Function(Mutation$Utility_purchaseAirtime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? utility_purchaseAirtime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Utility_purchaseAirtime(
        utility_purchaseAirtime: utility_purchaseAirtime == _undefined ||
                utility_purchaseAirtime == null
            ? _instance.utility_purchaseAirtime
            : (utility_purchaseAirtime
                as Mutation$Utility_purchaseAirtime$utility_purchaseAirtime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<TRes>
      get utility_purchaseAirtime {
    final local$utility_purchaseAirtime = _instance.utility_purchaseAirtime;
    return CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime(
        local$utility_purchaseAirtime, (e) => call(utility_purchaseAirtime: e));
  }
}

class _CopyWithStubImpl$Mutation$Utility_purchaseAirtime<TRes>
    implements CopyWith$Mutation$Utility_purchaseAirtime<TRes> {
  _CopyWithStubImpl$Mutation$Utility_purchaseAirtime(this._res);

  TRes _res;

  call({
    Mutation$Utility_purchaseAirtime$utility_purchaseAirtime?
        utility_purchaseAirtime,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<TRes>
      get utility_purchaseAirtime =>
          CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime
              .stub(_res);
}

const documentNodeMutationUtility_purchaseAirtime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Utility_purchaseAirtime'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Utilities_PurchaseAirtimeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'utility_purchaseAirtime'),
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
Mutation$Utility_purchaseAirtime _parserFn$Mutation$Utility_purchaseAirtime(
        Map<String, dynamic> data) =>
    Mutation$Utility_purchaseAirtime.fromJson(data);
typedef OnMutationCompleted$Mutation$Utility_purchaseAirtime = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Utility_purchaseAirtime?,
);

class Options$Mutation$Utility_purchaseAirtime
    extends graphql.MutationOptions<Mutation$Utility_purchaseAirtime> {
  Options$Mutation$Utility_purchaseAirtime({
    String? operationName,
    required Variables$Mutation$Utility_purchaseAirtime variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Utility_purchaseAirtime? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Utility_purchaseAirtime? onCompleted,
    graphql.OnMutationUpdate<Mutation$Utility_purchaseAirtime>? update,
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
                        : _parserFn$Mutation$Utility_purchaseAirtime(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUtility_purchaseAirtime,
          parserFn: _parserFn$Mutation$Utility_purchaseAirtime,
        );

  final OnMutationCompleted$Mutation$Utility_purchaseAirtime?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Utility_purchaseAirtime
    extends graphql.WatchQueryOptions<Mutation$Utility_purchaseAirtime> {
  WatchOptions$Mutation$Utility_purchaseAirtime({
    String? operationName,
    required Variables$Mutation$Utility_purchaseAirtime variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Utility_purchaseAirtime? typedOptimisticResult,
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
          document: documentNodeMutationUtility_purchaseAirtime,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Utility_purchaseAirtime,
        );
}

extension ClientExtension$Mutation$Utility_purchaseAirtime
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Utility_purchaseAirtime>>
      mutate$Utility_purchaseAirtime(
              Options$Mutation$Utility_purchaseAirtime options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Utility_purchaseAirtime>
      watchMutation$Utility_purchaseAirtime(
              WatchOptions$Mutation$Utility_purchaseAirtime options) =>
          this.watchMutation(options);
}

class Mutation$Utility_purchaseAirtime$HookResult {
  Mutation$Utility_purchaseAirtime$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Utility_purchaseAirtime runMutation;

  final graphql.QueryResult<Mutation$Utility_purchaseAirtime> result;
}

Mutation$Utility_purchaseAirtime$HookResult useMutation$Utility_purchaseAirtime(
    [WidgetOptions$Mutation$Utility_purchaseAirtime? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Utility_purchaseAirtime());
  return Mutation$Utility_purchaseAirtime$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Utility_purchaseAirtime>
    useWatchMutation$Utility_purchaseAirtime(
            WatchOptions$Mutation$Utility_purchaseAirtime options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Utility_purchaseAirtime
    extends graphql.MutationOptions<Mutation$Utility_purchaseAirtime> {
  WidgetOptions$Mutation$Utility_purchaseAirtime({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Utility_purchaseAirtime? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Utility_purchaseAirtime? onCompleted,
    graphql.OnMutationUpdate<Mutation$Utility_purchaseAirtime>? update,
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
                        : _parserFn$Mutation$Utility_purchaseAirtime(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUtility_purchaseAirtime,
          parserFn: _parserFn$Mutation$Utility_purchaseAirtime,
        );

  final OnMutationCompleted$Mutation$Utility_purchaseAirtime?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Utility_purchaseAirtime
    = graphql.MultiSourceResult<Mutation$Utility_purchaseAirtime> Function(
  Variables$Mutation$Utility_purchaseAirtime, {
  Object? optimisticResult,
  Mutation$Utility_purchaseAirtime? typedOptimisticResult,
});
typedef Builder$Mutation$Utility_purchaseAirtime = widgets.Widget Function(
  RunMutation$Mutation$Utility_purchaseAirtime,
  graphql.QueryResult<Mutation$Utility_purchaseAirtime>?,
);

class Mutation$Utility_purchaseAirtime$Widget
    extends graphql_flutter.Mutation<Mutation$Utility_purchaseAirtime> {
  Mutation$Utility_purchaseAirtime$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Utility_purchaseAirtime? options,
    required Builder$Mutation$Utility_purchaseAirtime builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Utility_purchaseAirtime(),
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

class Mutation$Utility_purchaseAirtime$utility_purchaseAirtime {
  Mutation$Utility_purchaseAirtime$utility_purchaseAirtime({
    required this.message,
    this.$__typename = 'Utilities_PurchaseTopUpResponse',
  });

  factory Mutation$Utility_purchaseAirtime$utility_purchaseAirtime.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Utility_purchaseAirtime$utility_purchaseAirtime(
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
    if (other is! Mutation$Utility_purchaseAirtime$utility_purchaseAirtime ||
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

extension UtilityExtension$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime
    on Mutation$Utility_purchaseAirtime$utility_purchaseAirtime {
  CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<
          Mutation$Utility_purchaseAirtime$utility_purchaseAirtime>
      get copyWith =>
          CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<
    TRes> {
  factory CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime(
    Mutation$Utility_purchaseAirtime$utility_purchaseAirtime instance,
    TRes Function(Mutation$Utility_purchaseAirtime$utility_purchaseAirtime)
        then,
  ) = _CopyWithImpl$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime;

  factory CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<
        TRes>
    implements
        CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<
            TRes> {
  _CopyWithImpl$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime(
    this._instance,
    this._then,
  );

  final Mutation$Utility_purchaseAirtime$utility_purchaseAirtime _instance;

  final TRes Function(Mutation$Utility_purchaseAirtime$utility_purchaseAirtime)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Utility_purchaseAirtime$utility_purchaseAirtime(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<
        TRes>
    implements
        CopyWith$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime<
            TRes> {
  _CopyWithStubImpl$Mutation$Utility_purchaseAirtime$utility_purchaseAirtime(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Utility_purchaseDataBundle {
  factory Variables$Mutation$Utility_purchaseDataBundle(
          {required Input$Utilities_PurchaseDataBundleInput input}) =>
      Variables$Mutation$Utility_purchaseDataBundle._({
        r'input': input,
      });

  Variables$Mutation$Utility_purchaseDataBundle._(this._$data);

  factory Variables$Mutation$Utility_purchaseDataBundle.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Utilities_PurchaseDataBundleInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Utility_purchaseDataBundle._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Utilities_PurchaseDataBundleInput get input =>
      (_$data['input'] as Input$Utilities_PurchaseDataBundleInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Utility_purchaseDataBundle<
          Variables$Mutation$Utility_purchaseDataBundle>
      get copyWith => CopyWith$Variables$Mutation$Utility_purchaseDataBundle(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Utility_purchaseDataBundle ||
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

abstract class CopyWith$Variables$Mutation$Utility_purchaseDataBundle<TRes> {
  factory CopyWith$Variables$Mutation$Utility_purchaseDataBundle(
    Variables$Mutation$Utility_purchaseDataBundle instance,
    TRes Function(Variables$Mutation$Utility_purchaseDataBundle) then,
  ) = _CopyWithImpl$Variables$Mutation$Utility_purchaseDataBundle;

  factory CopyWith$Variables$Mutation$Utility_purchaseDataBundle.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Utility_purchaseDataBundle;

  TRes call({Input$Utilities_PurchaseDataBundleInput? input});
}

class _CopyWithImpl$Variables$Mutation$Utility_purchaseDataBundle<TRes>
    implements CopyWith$Variables$Mutation$Utility_purchaseDataBundle<TRes> {
  _CopyWithImpl$Variables$Mutation$Utility_purchaseDataBundle(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Utility_purchaseDataBundle _instance;

  final TRes Function(Variables$Mutation$Utility_purchaseDataBundle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Utility_purchaseDataBundle._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Utilities_PurchaseDataBundleInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Utility_purchaseDataBundle<TRes>
    implements CopyWith$Variables$Mutation$Utility_purchaseDataBundle<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Utility_purchaseDataBundle(this._res);

  TRes _res;

  call({Input$Utilities_PurchaseDataBundleInput? input}) => _res;
}

class Mutation$Utility_purchaseDataBundle {
  Mutation$Utility_purchaseDataBundle({
    required this.utility_purchaseDataBundle,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Utility_purchaseDataBundle.fromJson(
      Map<String, dynamic> json) {
    final l$utility_purchaseDataBundle = json['utility_purchaseDataBundle'];
    final l$$__typename = json['__typename'];
    return Mutation$Utility_purchaseDataBundle(
      utility_purchaseDataBundle:
          Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle
              .fromJson((l$utility_purchaseDataBundle as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle
      utility_purchaseDataBundle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$utility_purchaseDataBundle = utility_purchaseDataBundle;
    _resultData['utility_purchaseDataBundle'] =
        l$utility_purchaseDataBundle.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$utility_purchaseDataBundle = utility_purchaseDataBundle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$utility_purchaseDataBundle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Utility_purchaseDataBundle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$utility_purchaseDataBundle = utility_purchaseDataBundle;
    final lOther$utility_purchaseDataBundle = other.utility_purchaseDataBundle;
    if (l$utility_purchaseDataBundle != lOther$utility_purchaseDataBundle) {
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

extension UtilityExtension$Mutation$Utility_purchaseDataBundle
    on Mutation$Utility_purchaseDataBundle {
  CopyWith$Mutation$Utility_purchaseDataBundle<
          Mutation$Utility_purchaseDataBundle>
      get copyWith => CopyWith$Mutation$Utility_purchaseDataBundle(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Utility_purchaseDataBundle<TRes> {
  factory CopyWith$Mutation$Utility_purchaseDataBundle(
    Mutation$Utility_purchaseDataBundle instance,
    TRes Function(Mutation$Utility_purchaseDataBundle) then,
  ) = _CopyWithImpl$Mutation$Utility_purchaseDataBundle;

  factory CopyWith$Mutation$Utility_purchaseDataBundle.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Utility_purchaseDataBundle;

  TRes call({
    Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle?
        utility_purchaseDataBundle,
    String? $__typename,
  });
  CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<TRes>
      get utility_purchaseDataBundle;
}

class _CopyWithImpl$Mutation$Utility_purchaseDataBundle<TRes>
    implements CopyWith$Mutation$Utility_purchaseDataBundle<TRes> {
  _CopyWithImpl$Mutation$Utility_purchaseDataBundle(
    this._instance,
    this._then,
  );

  final Mutation$Utility_purchaseDataBundle _instance;

  final TRes Function(Mutation$Utility_purchaseDataBundle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? utility_purchaseDataBundle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Utility_purchaseDataBundle(
        utility_purchaseDataBundle: utility_purchaseDataBundle == _undefined ||
                utility_purchaseDataBundle == null
            ? _instance.utility_purchaseDataBundle
            : (utility_purchaseDataBundle
                as Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<TRes>
      get utility_purchaseDataBundle {
    final local$utility_purchaseDataBundle =
        _instance.utility_purchaseDataBundle;
    return CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle(
        local$utility_purchaseDataBundle,
        (e) => call(utility_purchaseDataBundle: e));
  }
}

class _CopyWithStubImpl$Mutation$Utility_purchaseDataBundle<TRes>
    implements CopyWith$Mutation$Utility_purchaseDataBundle<TRes> {
  _CopyWithStubImpl$Mutation$Utility_purchaseDataBundle(this._res);

  TRes _res;

  call({
    Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle?
        utility_purchaseDataBundle,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<TRes>
      get utility_purchaseDataBundle =>
          CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle
              .stub(_res);
}

const documentNodeMutationUtility_purchaseDataBundle =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Utility_purchaseDataBundle'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Utilities_PurchaseDataBundleInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'utility_purchaseDataBundle'),
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
Mutation$Utility_purchaseDataBundle
    _parserFn$Mutation$Utility_purchaseDataBundle(Map<String, dynamic> data) =>
        Mutation$Utility_purchaseDataBundle.fromJson(data);
typedef OnMutationCompleted$Mutation$Utility_purchaseDataBundle = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Utility_purchaseDataBundle?,
);

class Options$Mutation$Utility_purchaseDataBundle
    extends graphql.MutationOptions<Mutation$Utility_purchaseDataBundle> {
  Options$Mutation$Utility_purchaseDataBundle({
    String? operationName,
    required Variables$Mutation$Utility_purchaseDataBundle variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Utility_purchaseDataBundle? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Utility_purchaseDataBundle? onCompleted,
    graphql.OnMutationUpdate<Mutation$Utility_purchaseDataBundle>? update,
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
                        : _parserFn$Mutation$Utility_purchaseDataBundle(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUtility_purchaseDataBundle,
          parserFn: _parserFn$Mutation$Utility_purchaseDataBundle,
        );

  final OnMutationCompleted$Mutation$Utility_purchaseDataBundle?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Utility_purchaseDataBundle
    extends graphql.WatchQueryOptions<Mutation$Utility_purchaseDataBundle> {
  WatchOptions$Mutation$Utility_purchaseDataBundle({
    String? operationName,
    required Variables$Mutation$Utility_purchaseDataBundle variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Utility_purchaseDataBundle? typedOptimisticResult,
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
          document: documentNodeMutationUtility_purchaseDataBundle,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Utility_purchaseDataBundle,
        );
}

extension ClientExtension$Mutation$Utility_purchaseDataBundle
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Utility_purchaseDataBundle>>
      mutate$Utility_purchaseDataBundle(
              Options$Mutation$Utility_purchaseDataBundle options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Utility_purchaseDataBundle>
      watchMutation$Utility_purchaseDataBundle(
              WatchOptions$Mutation$Utility_purchaseDataBundle options) =>
          this.watchMutation(options);
}

class Mutation$Utility_purchaseDataBundle$HookResult {
  Mutation$Utility_purchaseDataBundle$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Utility_purchaseDataBundle runMutation;

  final graphql.QueryResult<Mutation$Utility_purchaseDataBundle> result;
}

Mutation$Utility_purchaseDataBundle$HookResult
    useMutation$Utility_purchaseDataBundle(
        [WidgetOptions$Mutation$Utility_purchaseDataBundle? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$Utility_purchaseDataBundle());
  return Mutation$Utility_purchaseDataBundle$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Utility_purchaseDataBundle>
    useWatchMutation$Utility_purchaseDataBundle(
            WatchOptions$Mutation$Utility_purchaseDataBundle options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Utility_purchaseDataBundle
    extends graphql.MutationOptions<Mutation$Utility_purchaseDataBundle> {
  WidgetOptions$Mutation$Utility_purchaseDataBundle({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Utility_purchaseDataBundle? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Utility_purchaseDataBundle? onCompleted,
    graphql.OnMutationUpdate<Mutation$Utility_purchaseDataBundle>? update,
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
                        : _parserFn$Mutation$Utility_purchaseDataBundle(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUtility_purchaseDataBundle,
          parserFn: _parserFn$Mutation$Utility_purchaseDataBundle,
        );

  final OnMutationCompleted$Mutation$Utility_purchaseDataBundle?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Utility_purchaseDataBundle
    = graphql.MultiSourceResult<Mutation$Utility_purchaseDataBundle> Function(
  Variables$Mutation$Utility_purchaseDataBundle, {
  Object? optimisticResult,
  Mutation$Utility_purchaseDataBundle? typedOptimisticResult,
});
typedef Builder$Mutation$Utility_purchaseDataBundle = widgets.Widget Function(
  RunMutation$Mutation$Utility_purchaseDataBundle,
  graphql.QueryResult<Mutation$Utility_purchaseDataBundle>?,
);

class Mutation$Utility_purchaseDataBundle$Widget
    extends graphql_flutter.Mutation<Mutation$Utility_purchaseDataBundle> {
  Mutation$Utility_purchaseDataBundle$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Utility_purchaseDataBundle? options,
    required Builder$Mutation$Utility_purchaseDataBundle builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$Utility_purchaseDataBundle(),
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

class Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle {
  Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle({
    required this.message,
    this.$__typename = 'Utilities_PurchaseTopUpResponse',
  });

  factory Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle(
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
            is! Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle ||
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

extension UtilityExtension$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle
    on Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle {
  CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<
          Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle>
      get copyWith =>
          CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<
    TRes> {
  factory CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle(
    Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle instance,
    TRes Function(
            Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle)
        then,
  ) = _CopyWithImpl$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle;

  factory CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<
        TRes>
    implements
        CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<
            TRes> {
  _CopyWithImpl$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle(
    this._instance,
    this._then,
  );

  final Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle
      _instance;

  final TRes Function(
      Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<
        TRes>
    implements
        CopyWith$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle<
            TRes> {
  _CopyWithStubImpl$Mutation$Utility_purchaseDataBundle$utility_purchaseDataBundle(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ElectricityBill_getProviders {
  factory Variables$Query$ElectricityBill_getProviders(
          {required Input$ElectricityBill_ProviderInput input}) =>
      Variables$Query$ElectricityBill_getProviders._({
        r'input': input,
      });

  Variables$Query$ElectricityBill_getProviders._(this._$data);

  factory Variables$Query$ElectricityBill_getProviders.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ElectricityBill_ProviderInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$ElectricityBill_getProviders._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ElectricityBill_ProviderInput get input =>
      (_$data['input'] as Input$ElectricityBill_ProviderInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ElectricityBill_getProviders<
          Variables$Query$ElectricityBill_getProviders>
      get copyWith => CopyWith$Variables$Query$ElectricityBill_getProviders(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ElectricityBill_getProviders ||
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

abstract class CopyWith$Variables$Query$ElectricityBill_getProviders<TRes> {
  factory CopyWith$Variables$Query$ElectricityBill_getProviders(
    Variables$Query$ElectricityBill_getProviders instance,
    TRes Function(Variables$Query$ElectricityBill_getProviders) then,
  ) = _CopyWithImpl$Variables$Query$ElectricityBill_getProviders;

  factory CopyWith$Variables$Query$ElectricityBill_getProviders.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ElectricityBill_getProviders;

  TRes call({Input$ElectricityBill_ProviderInput? input});
}

class _CopyWithImpl$Variables$Query$ElectricityBill_getProviders<TRes>
    implements CopyWith$Variables$Query$ElectricityBill_getProviders<TRes> {
  _CopyWithImpl$Variables$Query$ElectricityBill_getProviders(
    this._instance,
    this._then,
  );

  final Variables$Query$ElectricityBill_getProviders _instance;

  final TRes Function(Variables$Query$ElectricityBill_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$ElectricityBill_getProviders._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ElectricityBill_ProviderInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ElectricityBill_getProviders<TRes>
    implements CopyWith$Variables$Query$ElectricityBill_getProviders<TRes> {
  _CopyWithStubImpl$Variables$Query$ElectricityBill_getProviders(this._res);

  TRes _res;

  call({Input$ElectricityBill_ProviderInput? input}) => _res;
}

class Query$ElectricityBill_getProviders {
  Query$ElectricityBill_getProviders({
    required this.electricityBill_getProviders,
    this.$__typename = 'Query',
  });

  factory Query$ElectricityBill_getProviders.fromJson(
      Map<String, dynamic> json) {
    final l$electricityBill_getProviders = json['electricityBill_getProviders'];
    final l$$__typename = json['__typename'];
    return Query$ElectricityBill_getProviders(
      electricityBill_getProviders: (l$electricityBill_getProviders
              as List<dynamic>)
          .map((e) =>
              Query$ElectricityBill_getProviders$electricityBill_getProviders
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ElectricityBill_getProviders$electricityBill_getProviders>
      electricityBill_getProviders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$electricityBill_getProviders = electricityBill_getProviders;
    _resultData['electricityBill_getProviders'] =
        l$electricityBill_getProviders.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$electricityBill_getProviders = electricityBill_getProviders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$electricityBill_getProviders.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ElectricityBill_getProviders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$electricityBill_getProviders = electricityBill_getProviders;
    final lOther$electricityBill_getProviders =
        other.electricityBill_getProviders;
    if (l$electricityBill_getProviders.length !=
        lOther$electricityBill_getProviders.length) {
      return false;
    }
    for (int i = 0; i < l$electricityBill_getProviders.length; i++) {
      final l$electricityBill_getProviders$entry =
          l$electricityBill_getProviders[i];
      final lOther$electricityBill_getProviders$entry =
          lOther$electricityBill_getProviders[i];
      if (l$electricityBill_getProviders$entry !=
          lOther$electricityBill_getProviders$entry) {
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

extension UtilityExtension$Query$ElectricityBill_getProviders
    on Query$ElectricityBill_getProviders {
  CopyWith$Query$ElectricityBill_getProviders<
          Query$ElectricityBill_getProviders>
      get copyWith => CopyWith$Query$ElectricityBill_getProviders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectricityBill_getProviders<TRes> {
  factory CopyWith$Query$ElectricityBill_getProviders(
    Query$ElectricityBill_getProviders instance,
    TRes Function(Query$ElectricityBill_getProviders) then,
  ) = _CopyWithImpl$Query$ElectricityBill_getProviders;

  factory CopyWith$Query$ElectricityBill_getProviders.stub(TRes res) =
      _CopyWithStubImpl$Query$ElectricityBill_getProviders;

  TRes call({
    List<Query$ElectricityBill_getProviders$electricityBill_getProviders>?
        electricityBill_getProviders,
    String? $__typename,
  });
  TRes electricityBill_getProviders(
      Iterable<Query$ElectricityBill_getProviders$electricityBill_getProviders> Function(
              Iterable<
                  CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders<
                      Query$ElectricityBill_getProviders$electricityBill_getProviders>>)
          _fn);
}

class _CopyWithImpl$Query$ElectricityBill_getProviders<TRes>
    implements CopyWith$Query$ElectricityBill_getProviders<TRes> {
  _CopyWithImpl$Query$ElectricityBill_getProviders(
    this._instance,
    this._then,
  );

  final Query$ElectricityBill_getProviders _instance;

  final TRes Function(Query$ElectricityBill_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? electricityBill_getProviders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectricityBill_getProviders(
        electricityBill_getProviders: electricityBill_getProviders ==
                    _undefined ||
                electricityBill_getProviders == null
            ? _instance.electricityBill_getProviders
            : (electricityBill_getProviders as List<
                Query$ElectricityBill_getProviders$electricityBill_getProviders>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes electricityBill_getProviders(
          Iterable<Query$ElectricityBill_getProviders$electricityBill_getProviders> Function(
                  Iterable<
                      CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders<
                          Query$ElectricityBill_getProviders$electricityBill_getProviders>>)
              _fn) =>
      call(
          electricityBill_getProviders: _fn(
              _instance.electricityBill_getProviders.map((e) =>
                  CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ElectricityBill_getProviders<TRes>
    implements CopyWith$Query$ElectricityBill_getProviders<TRes> {
  _CopyWithStubImpl$Query$ElectricityBill_getProviders(this._res);

  TRes _res;

  call({
    List<Query$ElectricityBill_getProviders$electricityBill_getProviders>?
        electricityBill_getProviders,
    String? $__typename,
  }) =>
      _res;

  electricityBill_getProviders(_fn) => _res;
}

const documentNodeQueryElectricityBill_getProviders =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ElectricityBill_getProviders'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ElectricityBill_ProviderInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'electricityBill_getProviders'),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'logo'),
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
            name: NameNode(value: 'category'),
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
Query$ElectricityBill_getProviders _parserFn$Query$ElectricityBill_getProviders(
        Map<String, dynamic> data) =>
    Query$ElectricityBill_getProviders.fromJson(data);
typedef OnQueryComplete$Query$ElectricityBill_getProviders = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$ElectricityBill_getProviders?,
);

class Options$Query$ElectricityBill_getProviders
    extends graphql.QueryOptions<Query$ElectricityBill_getProviders> {
  Options$Query$ElectricityBill_getProviders({
    String? operationName,
    required Variables$Query$ElectricityBill_getProviders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ElectricityBill_getProviders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ElectricityBill_getProviders? onComplete,
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
                        : _parserFn$Query$ElectricityBill_getProviders(data),
                  ),
          onError: onError,
          document: documentNodeQueryElectricityBill_getProviders,
          parserFn: _parserFn$Query$ElectricityBill_getProviders,
        );

  final OnQueryComplete$Query$ElectricityBill_getProviders?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ElectricityBill_getProviders
    extends graphql.WatchQueryOptions<Query$ElectricityBill_getProviders> {
  WatchOptions$Query$ElectricityBill_getProviders({
    String? operationName,
    required Variables$Query$ElectricityBill_getProviders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ElectricityBill_getProviders? typedOptimisticResult,
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
          document: documentNodeQueryElectricityBill_getProviders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ElectricityBill_getProviders,
        );
}

class FetchMoreOptions$Query$ElectricityBill_getProviders
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ElectricityBill_getProviders({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ElectricityBill_getProviders variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryElectricityBill_getProviders,
        );
}

extension ClientExtension$Query$ElectricityBill_getProviders
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ElectricityBill_getProviders>>
      query$ElectricityBill_getProviders(
              Options$Query$ElectricityBill_getProviders options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$ElectricityBill_getProviders>
      watchQuery$ElectricityBill_getProviders(
              WatchOptions$Query$ElectricityBill_getProviders options) =>
          this.watchQuery(options);
  void writeQuery$ElectricityBill_getProviders({
    required Query$ElectricityBill_getProviders data,
    required Variables$Query$ElectricityBill_getProviders variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryElectricityBill_getProviders),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ElectricityBill_getProviders? readQuery$ElectricityBill_getProviders({
    required Variables$Query$ElectricityBill_getProviders variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryElectricityBill_getProviders),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ElectricityBill_getProviders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ElectricityBill_getProviders>
    useQuery$ElectricityBill_getProviders(
            Options$Query$ElectricityBill_getProviders options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ElectricityBill_getProviders>
    useWatchQuery$ElectricityBill_getProviders(
            WatchOptions$Query$ElectricityBill_getProviders options) =>
        graphql_flutter.useWatchQuery(options);

class Query$ElectricityBill_getProviders$Widget
    extends graphql_flutter.Query<Query$ElectricityBill_getProviders> {
  Query$ElectricityBill_getProviders$Widget({
    widgets.Key? key,
    required Options$Query$ElectricityBill_getProviders options,
    required graphql_flutter.QueryBuilder<Query$ElectricityBill_getProviders>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$ElectricityBill_getProviders$electricityBill_getProviders {
  Query$ElectricityBill_getProviders$electricityBill_getProviders({
    required this.name,
    required this.logo,
    required this.status,
    required this.category,
    this.$__typename = 'ElectricityBill_ProvidersResponse',
  });

  factory Query$ElectricityBill_getProviders$electricityBill_getProviders.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$logo = json['logo'];
    final l$status = json['status'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$ElectricityBill_getProviders$electricityBill_getProviders(
      name: (l$name as String),
      logo: (l$logo as String),
      status: (l$status as bool),
      category: (l$category as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String logo;

  final bool status;

  final String category;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$logo = logo;
    _resultData['logo'] = l$logo;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$logo = logo;
    final l$status = status;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$logo,
      l$status,
      l$category,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ElectricityBill_getProviders$electricityBill_getProviders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$logo = logo;
    final lOther$logo = other.logo;
    if (l$logo != lOther$logo) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
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

extension UtilityExtension$Query$ElectricityBill_getProviders$electricityBill_getProviders
    on Query$ElectricityBill_getProviders$electricityBill_getProviders {
  CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders<
          Query$ElectricityBill_getProviders$electricityBill_getProviders>
      get copyWith =>
          CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders<
    TRes> {
  factory CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders(
    Query$ElectricityBill_getProviders$electricityBill_getProviders instance,
    TRes Function(
            Query$ElectricityBill_getProviders$electricityBill_getProviders)
        then,
  ) = _CopyWithImpl$Query$ElectricityBill_getProviders$electricityBill_getProviders;

  factory CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ElectricityBill_getProviders$electricityBill_getProviders;

  TRes call({
    String? name,
    String? logo,
    bool? status,
    String? category,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ElectricityBill_getProviders$electricityBill_getProviders<
        TRes>
    implements
        CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders<
            TRes> {
  _CopyWithImpl$Query$ElectricityBill_getProviders$electricityBill_getProviders(
    this._instance,
    this._then,
  );

  final Query$ElectricityBill_getProviders$electricityBill_getProviders
      _instance;

  final TRes Function(
      Query$ElectricityBill_getProviders$electricityBill_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? logo = _undefined,
    Object? status = _undefined,
    Object? category = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectricityBill_getProviders$electricityBill_getProviders(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        logo: logo == _undefined || logo == null
            ? _instance.logo
            : (logo as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as bool),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ElectricityBill_getProviders$electricityBill_getProviders<
        TRes>
    implements
        CopyWith$Query$ElectricityBill_getProviders$electricityBill_getProviders<
            TRes> {
  _CopyWithStubImpl$Query$ElectricityBill_getProviders$electricityBill_getProviders(
      this._res);

  TRes _res;

  call({
    String? name,
    String? logo,
    bool? status,
    String? category,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ElectricityBill_verifyAccount {
  factory Variables$Mutation$ElectricityBill_verifyAccount(
          {required Input$ElectricityBill_ValidateAccountInput input}) =>
      Variables$Mutation$ElectricityBill_verifyAccount._({
        r'input': input,
      });

  Variables$Mutation$ElectricityBill_verifyAccount._(this._$data);

  factory Variables$Mutation$ElectricityBill_verifyAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ElectricityBill_ValidateAccountInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ElectricityBill_verifyAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ElectricityBill_ValidateAccountInput get input =>
      (_$data['input'] as Input$ElectricityBill_ValidateAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ElectricityBill_verifyAccount<
          Variables$Mutation$ElectricityBill_verifyAccount>
      get copyWith => CopyWith$Variables$Mutation$ElectricityBill_verifyAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ElectricityBill_verifyAccount ||
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

abstract class CopyWith$Variables$Mutation$ElectricityBill_verifyAccount<TRes> {
  factory CopyWith$Variables$Mutation$ElectricityBill_verifyAccount(
    Variables$Mutation$ElectricityBill_verifyAccount instance,
    TRes Function(Variables$Mutation$ElectricityBill_verifyAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$ElectricityBill_verifyAccount;

  factory CopyWith$Variables$Mutation$ElectricityBill_verifyAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ElectricityBill_verifyAccount;

  TRes call({Input$ElectricityBill_ValidateAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$ElectricityBill_verifyAccount<TRes>
    implements CopyWith$Variables$Mutation$ElectricityBill_verifyAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$ElectricityBill_verifyAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ElectricityBill_verifyAccount _instance;

  final TRes Function(Variables$Mutation$ElectricityBill_verifyAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ElectricityBill_verifyAccount._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ElectricityBill_ValidateAccountInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ElectricityBill_verifyAccount<TRes>
    implements CopyWith$Variables$Mutation$ElectricityBill_verifyAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ElectricityBill_verifyAccount(this._res);

  TRes _res;

  call({Input$ElectricityBill_ValidateAccountInput? input}) => _res;
}

class Mutation$ElectricityBill_verifyAccount {
  Mutation$ElectricityBill_verifyAccount({
    required this.electricityBill_verifyAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ElectricityBill_verifyAccount.fromJson(
      Map<String, dynamic> json) {
    final l$electricityBill_verifyAccount =
        json['electricityBill_verifyAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$ElectricityBill_verifyAccount(
      electricityBill_verifyAccount:
          Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount
              .fromJson(
                  (l$electricityBill_verifyAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount
      electricityBill_verifyAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$electricityBill_verifyAccount = electricityBill_verifyAccount;
    _resultData['electricityBill_verifyAccount'] =
        l$electricityBill_verifyAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$electricityBill_verifyAccount = electricityBill_verifyAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$electricityBill_verifyAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ElectricityBill_verifyAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$electricityBill_verifyAccount = electricityBill_verifyAccount;
    final lOther$electricityBill_verifyAccount =
        other.electricityBill_verifyAccount;
    if (l$electricityBill_verifyAccount !=
        lOther$electricityBill_verifyAccount) {
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

extension UtilityExtension$Mutation$ElectricityBill_verifyAccount
    on Mutation$ElectricityBill_verifyAccount {
  CopyWith$Mutation$ElectricityBill_verifyAccount<
          Mutation$ElectricityBill_verifyAccount>
      get copyWith => CopyWith$Mutation$ElectricityBill_verifyAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ElectricityBill_verifyAccount<TRes> {
  factory CopyWith$Mutation$ElectricityBill_verifyAccount(
    Mutation$ElectricityBill_verifyAccount instance,
    TRes Function(Mutation$ElectricityBill_verifyAccount) then,
  ) = _CopyWithImpl$Mutation$ElectricityBill_verifyAccount;

  factory CopyWith$Mutation$ElectricityBill_verifyAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ElectricityBill_verifyAccount;

  TRes call({
    Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount?
        electricityBill_verifyAccount,
    String? $__typename,
  });
  CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
      TRes> get electricityBill_verifyAccount;
}

class _CopyWithImpl$Mutation$ElectricityBill_verifyAccount<TRes>
    implements CopyWith$Mutation$ElectricityBill_verifyAccount<TRes> {
  _CopyWithImpl$Mutation$ElectricityBill_verifyAccount(
    this._instance,
    this._then,
  );

  final Mutation$ElectricityBill_verifyAccount _instance;

  final TRes Function(Mutation$ElectricityBill_verifyAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? electricityBill_verifyAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ElectricityBill_verifyAccount(
        electricityBill_verifyAccount: electricityBill_verifyAccount ==
                    _undefined ||
                electricityBill_verifyAccount == null
            ? _instance.electricityBill_verifyAccount
            : (electricityBill_verifyAccount
                as Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
      TRes> get electricityBill_verifyAccount {
    final local$electricityBill_verifyAccount =
        _instance.electricityBill_verifyAccount;
    return CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount(
        local$electricityBill_verifyAccount,
        (e) => call(electricityBill_verifyAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$ElectricityBill_verifyAccount<TRes>
    implements CopyWith$Mutation$ElectricityBill_verifyAccount<TRes> {
  _CopyWithStubImpl$Mutation$ElectricityBill_verifyAccount(this._res);

  TRes _res;

  call({
    Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount?
        electricityBill_verifyAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
          TRes>
      get electricityBill_verifyAccount =>
          CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount
              .stub(_res);
}

const documentNodeMutationElectricityBill_verifyAccount =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ElectricityBill_verifyAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ElectricityBill_ValidateAccountInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'electricityBill_verifyAccount'),
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
            name: NameNode(value: 'customerAddress'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customerName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'meterNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'meterType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'minimuVendAmount'),
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
Mutation$ElectricityBill_verifyAccount
    _parserFn$Mutation$ElectricityBill_verifyAccount(
            Map<String, dynamic> data) =>
        Mutation$ElectricityBill_verifyAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$ElectricityBill_verifyAccount
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ElectricityBill_verifyAccount?,
);

class Options$Mutation$ElectricityBill_verifyAccount
    extends graphql.MutationOptions<Mutation$ElectricityBill_verifyAccount> {
  Options$Mutation$ElectricityBill_verifyAccount({
    String? operationName,
    required Variables$Mutation$ElectricityBill_verifyAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ElectricityBill_verifyAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ElectricityBill_verifyAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$ElectricityBill_verifyAccount>? update,
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
                        : _parserFn$Mutation$ElectricityBill_verifyAccount(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationElectricityBill_verifyAccount,
          parserFn: _parserFn$Mutation$ElectricityBill_verifyAccount,
        );

  final OnMutationCompleted$Mutation$ElectricityBill_verifyAccount?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ElectricityBill_verifyAccount
    extends graphql.WatchQueryOptions<Mutation$ElectricityBill_verifyAccount> {
  WatchOptions$Mutation$ElectricityBill_verifyAccount({
    String? operationName,
    required Variables$Mutation$ElectricityBill_verifyAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ElectricityBill_verifyAccount? typedOptimisticResult,
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
          document: documentNodeMutationElectricityBill_verifyAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ElectricityBill_verifyAccount,
        );
}

extension ClientExtension$Mutation$ElectricityBill_verifyAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ElectricityBill_verifyAccount>>
      mutate$ElectricityBill_verifyAccount(
              Options$Mutation$ElectricityBill_verifyAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ElectricityBill_verifyAccount>
      watchMutation$ElectricityBill_verifyAccount(
              WatchOptions$Mutation$ElectricityBill_verifyAccount options) =>
          this.watchMutation(options);
}

class Mutation$ElectricityBill_verifyAccount$HookResult {
  Mutation$ElectricityBill_verifyAccount$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ElectricityBill_verifyAccount runMutation;

  final graphql.QueryResult<Mutation$ElectricityBill_verifyAccount> result;
}

Mutation$ElectricityBill_verifyAccount$HookResult
    useMutation$ElectricityBill_verifyAccount(
        [WidgetOptions$Mutation$ElectricityBill_verifyAccount? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$ElectricityBill_verifyAccount());
  return Mutation$ElectricityBill_verifyAccount$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ElectricityBill_verifyAccount>
    useWatchMutation$ElectricityBill_verifyAccount(
            WatchOptions$Mutation$ElectricityBill_verifyAccount options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ElectricityBill_verifyAccount
    extends graphql.MutationOptions<Mutation$ElectricityBill_verifyAccount> {
  WidgetOptions$Mutation$ElectricityBill_verifyAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ElectricityBill_verifyAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ElectricityBill_verifyAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$ElectricityBill_verifyAccount>? update,
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
                        : _parserFn$Mutation$ElectricityBill_verifyAccount(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationElectricityBill_verifyAccount,
          parserFn: _parserFn$Mutation$ElectricityBill_verifyAccount,
        );

  final OnMutationCompleted$Mutation$ElectricityBill_verifyAccount?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ElectricityBill_verifyAccount
    = graphql.MultiSourceResult<Mutation$ElectricityBill_verifyAccount>
        Function(
  Variables$Mutation$ElectricityBill_verifyAccount, {
  Object? optimisticResult,
  Mutation$ElectricityBill_verifyAccount? typedOptimisticResult,
});
typedef Builder$Mutation$ElectricityBill_verifyAccount = widgets.Widget
    Function(
  RunMutation$Mutation$ElectricityBill_verifyAccount,
  graphql.QueryResult<Mutation$ElectricityBill_verifyAccount>?,
);

class Mutation$ElectricityBill_verifyAccount$Widget
    extends graphql_flutter.Mutation<Mutation$ElectricityBill_verifyAccount> {
  Mutation$ElectricityBill_verifyAccount$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ElectricityBill_verifyAccount? options,
    required Builder$Mutation$ElectricityBill_verifyAccount builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$ElectricityBill_verifyAccount(),
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

class Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount {
  Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount({
    required this.customerAddress,
    required this.customerName,
    required this.meterNumber,
    required this.meterType,
    required this.minimuVendAmount,
    this.$__typename = 'ElectricityBill_ValidateAccountResponse',
  });

  factory Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount.fromJson(
      Map<String, dynamic> json) {
    final l$customerAddress = json['customerAddress'];
    final l$customerName = json['customerName'];
    final l$meterNumber = json['meterNumber'];
    final l$meterType = json['meterType'];
    final l$minimuVendAmount = json['minimuVendAmount'];
    final l$$__typename = json['__typename'];
    return Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount(
      customerAddress: (l$customerAddress as String),
      customerName: (l$customerName as String),
      meterNumber: (l$meterNumber as String),
      meterType: (l$meterType as String),
      minimuVendAmount: (l$minimuVendAmount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String customerAddress;

  final String customerName;

  final String meterNumber;

  final String meterType;

  final int minimuVendAmount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customerAddress = customerAddress;
    _resultData['customerAddress'] = l$customerAddress;
    final l$customerName = customerName;
    _resultData['customerName'] = l$customerName;
    final l$meterNumber = meterNumber;
    _resultData['meterNumber'] = l$meterNumber;
    final l$meterType = meterType;
    _resultData['meterType'] = l$meterType;
    final l$minimuVendAmount = minimuVendAmount;
    _resultData['minimuVendAmount'] = l$minimuVendAmount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customerAddress = customerAddress;
    final l$customerName = customerName;
    final l$meterNumber = meterNumber;
    final l$meterType = meterType;
    final l$minimuVendAmount = minimuVendAmount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customerAddress,
      l$customerName,
      l$meterNumber,
      l$meterType,
      l$minimuVendAmount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerAddress = customerAddress;
    final lOther$customerAddress = other.customerAddress;
    if (l$customerAddress != lOther$customerAddress) {
      return false;
    }
    final l$customerName = customerName;
    final lOther$customerName = other.customerName;
    if (l$customerName != lOther$customerName) {
      return false;
    }
    final l$meterNumber = meterNumber;
    final lOther$meterNumber = other.meterNumber;
    if (l$meterNumber != lOther$meterNumber) {
      return false;
    }
    final l$meterType = meterType;
    final lOther$meterType = other.meterType;
    if (l$meterType != lOther$meterType) {
      return false;
    }
    final l$minimuVendAmount = minimuVendAmount;
    final lOther$minimuVendAmount = other.minimuVendAmount;
    if (l$minimuVendAmount != lOther$minimuVendAmount) {
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

extension UtilityExtension$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount
    on Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount {
  CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
          Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount>
      get copyWith =>
          CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
    TRes> {
  factory CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount(
    Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount
        instance,
    TRes Function(
            Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount)
        then,
  ) = _CopyWithImpl$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount;

  factory CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount;

  TRes call({
    String? customerAddress,
    String? customerName,
    String? meterNumber,
    String? meterType,
    int? minimuVendAmount,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
        TRes>
    implements
        CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
            TRes> {
  _CopyWithImpl$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount(
    this._instance,
    this._then,
  );

  final Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount
      _instance;

  final TRes Function(
          Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerAddress = _undefined,
    Object? customerName = _undefined,
    Object? meterNumber = _undefined,
    Object? meterType = _undefined,
    Object? minimuVendAmount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount(
        customerAddress:
            customerAddress == _undefined || customerAddress == null
                ? _instance.customerAddress
                : (customerAddress as String),
        customerName: customerName == _undefined || customerName == null
            ? _instance.customerName
            : (customerName as String),
        meterNumber: meterNumber == _undefined || meterNumber == null
            ? _instance.meterNumber
            : (meterNumber as String),
        meterType: meterType == _undefined || meterType == null
            ? _instance.meterType
            : (meterType as String),
        minimuVendAmount:
            minimuVendAmount == _undefined || minimuVendAmount == null
                ? _instance.minimuVendAmount
                : (minimuVendAmount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
        TRes>
    implements
        CopyWith$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount<
            TRes> {
  _CopyWithStubImpl$Mutation$ElectricityBill_verifyAccount$electricityBill_verifyAccount(
      this._res);

  TRes _res;

  call({
    String? customerAddress,
    String? customerName,
    String? meterNumber,
    String? meterType,
    int? minimuVendAmount,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ElectricityBill_makePayment {
  factory Variables$Mutation$ElectricityBill_makePayment(
          {required Input$ElectricityBill_PaymentInput input}) =>
      Variables$Mutation$ElectricityBill_makePayment._({
        r'input': input,
      });

  Variables$Mutation$ElectricityBill_makePayment._(this._$data);

  factory Variables$Mutation$ElectricityBill_makePayment.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ElectricityBill_PaymentInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ElectricityBill_makePayment._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ElectricityBill_PaymentInput get input =>
      (_$data['input'] as Input$ElectricityBill_PaymentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ElectricityBill_makePayment<
          Variables$Mutation$ElectricityBill_makePayment>
      get copyWith => CopyWith$Variables$Mutation$ElectricityBill_makePayment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ElectricityBill_makePayment ||
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

abstract class CopyWith$Variables$Mutation$ElectricityBill_makePayment<TRes> {
  factory CopyWith$Variables$Mutation$ElectricityBill_makePayment(
    Variables$Mutation$ElectricityBill_makePayment instance,
    TRes Function(Variables$Mutation$ElectricityBill_makePayment) then,
  ) = _CopyWithImpl$Variables$Mutation$ElectricityBill_makePayment;

  factory CopyWith$Variables$Mutation$ElectricityBill_makePayment.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ElectricityBill_makePayment;

  TRes call({Input$ElectricityBill_PaymentInput? input});
}

class _CopyWithImpl$Variables$Mutation$ElectricityBill_makePayment<TRes>
    implements CopyWith$Variables$Mutation$ElectricityBill_makePayment<TRes> {
  _CopyWithImpl$Variables$Mutation$ElectricityBill_makePayment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ElectricityBill_makePayment _instance;

  final TRes Function(Variables$Mutation$ElectricityBill_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ElectricityBill_makePayment._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ElectricityBill_PaymentInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ElectricityBill_makePayment<TRes>
    implements CopyWith$Variables$Mutation$ElectricityBill_makePayment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ElectricityBill_makePayment(this._res);

  TRes _res;

  call({Input$ElectricityBill_PaymentInput? input}) => _res;
}

class Mutation$ElectricityBill_makePayment {
  Mutation$ElectricityBill_makePayment({
    required this.electricityBill_makePayment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ElectricityBill_makePayment.fromJson(
      Map<String, dynamic> json) {
    final l$electricityBill_makePayment = json['electricityBill_makePayment'];
    final l$$__typename = json['__typename'];
    return Mutation$ElectricityBill_makePayment(
      electricityBill_makePayment:
          Mutation$ElectricityBill_makePayment$electricityBill_makePayment
              .fromJson(
                  (l$electricityBill_makePayment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ElectricityBill_makePayment$electricityBill_makePayment
      electricityBill_makePayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$electricityBill_makePayment = electricityBill_makePayment;
    _resultData['electricityBill_makePayment'] =
        l$electricityBill_makePayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$electricityBill_makePayment = electricityBill_makePayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$electricityBill_makePayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ElectricityBill_makePayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$electricityBill_makePayment = electricityBill_makePayment;
    final lOther$electricityBill_makePayment =
        other.electricityBill_makePayment;
    if (l$electricityBill_makePayment != lOther$electricityBill_makePayment) {
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

extension UtilityExtension$Mutation$ElectricityBill_makePayment
    on Mutation$ElectricityBill_makePayment {
  CopyWith$Mutation$ElectricityBill_makePayment<
          Mutation$ElectricityBill_makePayment>
      get copyWith => CopyWith$Mutation$ElectricityBill_makePayment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ElectricityBill_makePayment<TRes> {
  factory CopyWith$Mutation$ElectricityBill_makePayment(
    Mutation$ElectricityBill_makePayment instance,
    TRes Function(Mutation$ElectricityBill_makePayment) then,
  ) = _CopyWithImpl$Mutation$ElectricityBill_makePayment;

  factory CopyWith$Mutation$ElectricityBill_makePayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ElectricityBill_makePayment;

  TRes call({
    Mutation$ElectricityBill_makePayment$electricityBill_makePayment?
        electricityBill_makePayment,
    String? $__typename,
  });
  CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
      TRes> get electricityBill_makePayment;
}

class _CopyWithImpl$Mutation$ElectricityBill_makePayment<TRes>
    implements CopyWith$Mutation$ElectricityBill_makePayment<TRes> {
  _CopyWithImpl$Mutation$ElectricityBill_makePayment(
    this._instance,
    this._then,
  );

  final Mutation$ElectricityBill_makePayment _instance;

  final TRes Function(Mutation$ElectricityBill_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? electricityBill_makePayment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ElectricityBill_makePayment(
        electricityBill_makePayment: electricityBill_makePayment ==
                    _undefined ||
                electricityBill_makePayment == null
            ? _instance.electricityBill_makePayment
            : (electricityBill_makePayment
                as Mutation$ElectricityBill_makePayment$electricityBill_makePayment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
      TRes> get electricityBill_makePayment {
    final local$electricityBill_makePayment =
        _instance.electricityBill_makePayment;
    return CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment(
        local$electricityBill_makePayment,
        (e) => call(electricityBill_makePayment: e));
  }
}

class _CopyWithStubImpl$Mutation$ElectricityBill_makePayment<TRes>
    implements CopyWith$Mutation$ElectricityBill_makePayment<TRes> {
  _CopyWithStubImpl$Mutation$ElectricityBill_makePayment(this._res);

  TRes _res;

  call({
    Mutation$ElectricityBill_makePayment$electricityBill_makePayment?
        electricityBill_makePayment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
          TRes>
      get electricityBill_makePayment =>
          CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment
              .stub(_res);
}

const documentNodeMutationElectricityBill_makePayment =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ElectricityBill_makePayment'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ElectricityBill_PaymentInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'electricityBill_makePayment'),
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
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'biller'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bonusToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'chargedAmount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'commission'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customerId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transactionDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'unit'),
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
Mutation$ElectricityBill_makePayment
    _parserFn$Mutation$ElectricityBill_makePayment(Map<String, dynamic> data) =>
        Mutation$ElectricityBill_makePayment.fromJson(data);
typedef OnMutationCompleted$Mutation$ElectricityBill_makePayment
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ElectricityBill_makePayment?,
);

class Options$Mutation$ElectricityBill_makePayment
    extends graphql.MutationOptions<Mutation$ElectricityBill_makePayment> {
  Options$Mutation$ElectricityBill_makePayment({
    String? operationName,
    required Variables$Mutation$ElectricityBill_makePayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ElectricityBill_makePayment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ElectricityBill_makePayment? onCompleted,
    graphql.OnMutationUpdate<Mutation$ElectricityBill_makePayment>? update,
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
                        : _parserFn$Mutation$ElectricityBill_makePayment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationElectricityBill_makePayment,
          parserFn: _parserFn$Mutation$ElectricityBill_makePayment,
        );

  final OnMutationCompleted$Mutation$ElectricityBill_makePayment?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ElectricityBill_makePayment
    extends graphql.WatchQueryOptions<Mutation$ElectricityBill_makePayment> {
  WatchOptions$Mutation$ElectricityBill_makePayment({
    String? operationName,
    required Variables$Mutation$ElectricityBill_makePayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ElectricityBill_makePayment? typedOptimisticResult,
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
          document: documentNodeMutationElectricityBill_makePayment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ElectricityBill_makePayment,
        );
}

extension ClientExtension$Mutation$ElectricityBill_makePayment
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ElectricityBill_makePayment>>
      mutate$ElectricityBill_makePayment(
              Options$Mutation$ElectricityBill_makePayment options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ElectricityBill_makePayment>
      watchMutation$ElectricityBill_makePayment(
              WatchOptions$Mutation$ElectricityBill_makePayment options) =>
          this.watchMutation(options);
}

class Mutation$ElectricityBill_makePayment$HookResult {
  Mutation$ElectricityBill_makePayment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ElectricityBill_makePayment runMutation;

  final graphql.QueryResult<Mutation$ElectricityBill_makePayment> result;
}

Mutation$ElectricityBill_makePayment$HookResult
    useMutation$ElectricityBill_makePayment(
        [WidgetOptions$Mutation$ElectricityBill_makePayment? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$ElectricityBill_makePayment());
  return Mutation$ElectricityBill_makePayment$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ElectricityBill_makePayment>
    useWatchMutation$ElectricityBill_makePayment(
            WatchOptions$Mutation$ElectricityBill_makePayment options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ElectricityBill_makePayment
    extends graphql.MutationOptions<Mutation$ElectricityBill_makePayment> {
  WidgetOptions$Mutation$ElectricityBill_makePayment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ElectricityBill_makePayment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ElectricityBill_makePayment? onCompleted,
    graphql.OnMutationUpdate<Mutation$ElectricityBill_makePayment>? update,
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
                        : _parserFn$Mutation$ElectricityBill_makePayment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationElectricityBill_makePayment,
          parserFn: _parserFn$Mutation$ElectricityBill_makePayment,
        );

  final OnMutationCompleted$Mutation$ElectricityBill_makePayment?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ElectricityBill_makePayment
    = graphql.MultiSourceResult<Mutation$ElectricityBill_makePayment> Function(
  Variables$Mutation$ElectricityBill_makePayment, {
  Object? optimisticResult,
  Mutation$ElectricityBill_makePayment? typedOptimisticResult,
});
typedef Builder$Mutation$ElectricityBill_makePayment = widgets.Widget Function(
  RunMutation$Mutation$ElectricityBill_makePayment,
  graphql.QueryResult<Mutation$ElectricityBill_makePayment>?,
);

class Mutation$ElectricityBill_makePayment$Widget
    extends graphql_flutter.Mutation<Mutation$ElectricityBill_makePayment> {
  Mutation$ElectricityBill_makePayment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ElectricityBill_makePayment? options,
    required Builder$Mutation$ElectricityBill_makePayment builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$ElectricityBill_makePayment(),
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

class Mutation$ElectricityBill_makePayment$electricityBill_makePayment {
  Mutation$ElectricityBill_makePayment$electricityBill_makePayment({
    required this.amount,
    required this.biller,
    required this.bonusToken,
    required this.chargedAmount,
    required this.commission,
    required this.customerId,
    required this.transactionDate,
    required this.unit,
    this.$__typename = 'ElectricityBill_PaymentResponse',
  });

  factory Mutation$ElectricityBill_makePayment$electricityBill_makePayment.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$biller = json['biller'];
    final l$bonusToken = json['bonusToken'];
    final l$chargedAmount = json['chargedAmount'];
    final l$commission = json['commission'];
    final l$customerId = json['customerId'];
    final l$transactionDate = json['transactionDate'];
    final l$unit = json['unit'];
    final l$$__typename = json['__typename'];
    return Mutation$ElectricityBill_makePayment$electricityBill_makePayment(
      amount: (l$amount as String),
      biller: (l$biller as String),
      bonusToken: (l$bonusToken as String),
      chargedAmount: (l$chargedAmount as int),
      commission: (l$commission as int),
      customerId: (l$customerId as String),
      transactionDate: (l$transactionDate as String),
      unit: (l$unit as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String amount;

  final String biller;

  final String bonusToken;

  final int chargedAmount;

  final int commission;

  final String customerId;

  final String transactionDate;

  final String unit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$biller = biller;
    _resultData['biller'] = l$biller;
    final l$bonusToken = bonusToken;
    _resultData['bonusToken'] = l$bonusToken;
    final l$chargedAmount = chargedAmount;
    _resultData['chargedAmount'] = l$chargedAmount;
    final l$commission = commission;
    _resultData['commission'] = l$commission;
    final l$customerId = customerId;
    _resultData['customerId'] = l$customerId;
    final l$transactionDate = transactionDate;
    _resultData['transactionDate'] = l$transactionDate;
    final l$unit = unit;
    _resultData['unit'] = l$unit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$biller = biller;
    final l$bonusToken = bonusToken;
    final l$chargedAmount = chargedAmount;
    final l$commission = commission;
    final l$customerId = customerId;
    final l$transactionDate = transactionDate;
    final l$unit = unit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$biller,
      l$bonusToken,
      l$chargedAmount,
      l$commission,
      l$customerId,
      l$transactionDate,
      l$unit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ElectricityBill_makePayment$electricityBill_makePayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$biller = biller;
    final lOther$biller = other.biller;
    if (l$biller != lOther$biller) {
      return false;
    }
    final l$bonusToken = bonusToken;
    final lOther$bonusToken = other.bonusToken;
    if (l$bonusToken != lOther$bonusToken) {
      return false;
    }
    final l$chargedAmount = chargedAmount;
    final lOther$chargedAmount = other.chargedAmount;
    if (l$chargedAmount != lOther$chargedAmount) {
      return false;
    }
    final l$commission = commission;
    final lOther$commission = other.commission;
    if (l$commission != lOther$commission) {
      return false;
    }
    final l$customerId = customerId;
    final lOther$customerId = other.customerId;
    if (l$customerId != lOther$customerId) {
      return false;
    }
    final l$transactionDate = transactionDate;
    final lOther$transactionDate = other.transactionDate;
    if (l$transactionDate != lOther$transactionDate) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
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

extension UtilityExtension$Mutation$ElectricityBill_makePayment$electricityBill_makePayment
    on Mutation$ElectricityBill_makePayment$electricityBill_makePayment {
  CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
          Mutation$ElectricityBill_makePayment$electricityBill_makePayment>
      get copyWith =>
          CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
    TRes> {
  factory CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment(
    Mutation$ElectricityBill_makePayment$electricityBill_makePayment instance,
    TRes Function(
            Mutation$ElectricityBill_makePayment$electricityBill_makePayment)
        then,
  ) = _CopyWithImpl$Mutation$ElectricityBill_makePayment$electricityBill_makePayment;

  factory CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ElectricityBill_makePayment$electricityBill_makePayment;

  TRes call({
    String? amount,
    String? biller,
    String? bonusToken,
    int? chargedAmount,
    int? commission,
    String? customerId,
    String? transactionDate,
    String? unit,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
        TRes>
    implements
        CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
            TRes> {
  _CopyWithImpl$Mutation$ElectricityBill_makePayment$electricityBill_makePayment(
    this._instance,
    this._then,
  );

  final Mutation$ElectricityBill_makePayment$electricityBill_makePayment
      _instance;

  final TRes Function(
      Mutation$ElectricityBill_makePayment$electricityBill_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? biller = _undefined,
    Object? bonusToken = _undefined,
    Object? chargedAmount = _undefined,
    Object? commission = _undefined,
    Object? customerId = _undefined,
    Object? transactionDate = _undefined,
    Object? unit = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ElectricityBill_makePayment$electricityBill_makePayment(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as String),
        biller: biller == _undefined || biller == null
            ? _instance.biller
            : (biller as String),
        bonusToken: bonusToken == _undefined || bonusToken == null
            ? _instance.bonusToken
            : (bonusToken as String),
        chargedAmount: chargedAmount == _undefined || chargedAmount == null
            ? _instance.chargedAmount
            : (chargedAmount as int),
        commission: commission == _undefined || commission == null
            ? _instance.commission
            : (commission as int),
        customerId: customerId == _undefined || customerId == null
            ? _instance.customerId
            : (customerId as String),
        transactionDate:
            transactionDate == _undefined || transactionDate == null
                ? _instance.transactionDate
                : (transactionDate as String),
        unit: unit == _undefined || unit == null
            ? _instance.unit
            : (unit as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
        TRes>
    implements
        CopyWith$Mutation$ElectricityBill_makePayment$electricityBill_makePayment<
            TRes> {
  _CopyWithStubImpl$Mutation$ElectricityBill_makePayment$electricityBill_makePayment(
      this._res);

  TRes _res;

  call({
    String? amount,
    String? biller,
    String? bonusToken,
    int? chargedAmount,
    int? commission,
    String? customerId,
    String? transactionDate,
    String? unit,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$tvBills_getProviders {
  factory Variables$Query$tvBills_getProviders(
          {required Input$TvBill_GetTVProvidersInput input}) =>
      Variables$Query$tvBills_getProviders._({
        r'input': input,
      });

  Variables$Query$tvBills_getProviders._(this._$data);

  factory Variables$Query$tvBills_getProviders.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$TvBill_GetTVProvidersInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$tvBills_getProviders._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TvBill_GetTVProvidersInput get input =>
      (_$data['input'] as Input$TvBill_GetTVProvidersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$tvBills_getProviders<
          Variables$Query$tvBills_getProviders>
      get copyWith => CopyWith$Variables$Query$tvBills_getProviders(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$tvBills_getProviders ||
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

abstract class CopyWith$Variables$Query$tvBills_getProviders<TRes> {
  factory CopyWith$Variables$Query$tvBills_getProviders(
    Variables$Query$tvBills_getProviders instance,
    TRes Function(Variables$Query$tvBills_getProviders) then,
  ) = _CopyWithImpl$Variables$Query$tvBills_getProviders;

  factory CopyWith$Variables$Query$tvBills_getProviders.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$tvBills_getProviders;

  TRes call({Input$TvBill_GetTVProvidersInput? input});
}

class _CopyWithImpl$Variables$Query$tvBills_getProviders<TRes>
    implements CopyWith$Variables$Query$tvBills_getProviders<TRes> {
  _CopyWithImpl$Variables$Query$tvBills_getProviders(
    this._instance,
    this._then,
  );

  final Variables$Query$tvBills_getProviders _instance;

  final TRes Function(Variables$Query$tvBills_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$tvBills_getProviders._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TvBill_GetTVProvidersInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$tvBills_getProviders<TRes>
    implements CopyWith$Variables$Query$tvBills_getProviders<TRes> {
  _CopyWithStubImpl$Variables$Query$tvBills_getProviders(this._res);

  TRes _res;

  call({Input$TvBill_GetTVProvidersInput? input}) => _res;
}

class Query$tvBills_getProviders {
  Query$tvBills_getProviders({
    required this.tvBills_getProviders,
    this.$__typename = 'Query',
  });

  factory Query$tvBills_getProviders.fromJson(Map<String, dynamic> json) {
    final l$tvBills_getProviders = json['tvBills_getProviders'];
    final l$$__typename = json['__typename'];
    return Query$tvBills_getProviders(
      tvBills_getProviders: (l$tvBills_getProviders as List<dynamic>)
          .map((e) => Query$tvBills_getProviders$tvBills_getProviders.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$tvBills_getProviders$tvBills_getProviders>
      tvBills_getProviders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tvBills_getProviders = tvBills_getProviders;
    _resultData['tvBills_getProviders'] =
        l$tvBills_getProviders.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tvBills_getProviders = tvBills_getProviders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tvBills_getProviders.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$tvBills_getProviders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tvBills_getProviders = tvBills_getProviders;
    final lOther$tvBills_getProviders = other.tvBills_getProviders;
    if (l$tvBills_getProviders.length != lOther$tvBills_getProviders.length) {
      return false;
    }
    for (int i = 0; i < l$tvBills_getProviders.length; i++) {
      final l$tvBills_getProviders$entry = l$tvBills_getProviders[i];
      final lOther$tvBills_getProviders$entry = lOther$tvBills_getProviders[i];
      if (l$tvBills_getProviders$entry != lOther$tvBills_getProviders$entry) {
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

extension UtilityExtension$Query$tvBills_getProviders
    on Query$tvBills_getProviders {
  CopyWith$Query$tvBills_getProviders<Query$tvBills_getProviders>
      get copyWith => CopyWith$Query$tvBills_getProviders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$tvBills_getProviders<TRes> {
  factory CopyWith$Query$tvBills_getProviders(
    Query$tvBills_getProviders instance,
    TRes Function(Query$tvBills_getProviders) then,
  ) = _CopyWithImpl$Query$tvBills_getProviders;

  factory CopyWith$Query$tvBills_getProviders.stub(TRes res) =
      _CopyWithStubImpl$Query$tvBills_getProviders;

  TRes call({
    List<Query$tvBills_getProviders$tvBills_getProviders>? tvBills_getProviders,
    String? $__typename,
  });
  TRes tvBills_getProviders(
      Iterable<Query$tvBills_getProviders$tvBills_getProviders> Function(
              Iterable<
                  CopyWith$Query$tvBills_getProviders$tvBills_getProviders<
                      Query$tvBills_getProviders$tvBills_getProviders>>)
          _fn);
}

class _CopyWithImpl$Query$tvBills_getProviders<TRes>
    implements CopyWith$Query$tvBills_getProviders<TRes> {
  _CopyWithImpl$Query$tvBills_getProviders(
    this._instance,
    this._then,
  );

  final Query$tvBills_getProviders _instance;

  final TRes Function(Query$tvBills_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tvBills_getProviders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$tvBills_getProviders(
        tvBills_getProviders:
            tvBills_getProviders == _undefined || tvBills_getProviders == null
                ? _instance.tvBills_getProviders
                : (tvBills_getProviders
                    as List<Query$tvBills_getProviders$tvBills_getProviders>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes tvBills_getProviders(
          Iterable<Query$tvBills_getProviders$tvBills_getProviders> Function(
                  Iterable<
                      CopyWith$Query$tvBills_getProviders$tvBills_getProviders<
                          Query$tvBills_getProviders$tvBills_getProviders>>)
              _fn) =>
      call(
          tvBills_getProviders: _fn(_instance.tvBills_getProviders.map(
              (e) => CopyWith$Query$tvBills_getProviders$tvBills_getProviders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$tvBills_getProviders<TRes>
    implements CopyWith$Query$tvBills_getProviders<TRes> {
  _CopyWithStubImpl$Query$tvBills_getProviders(this._res);

  TRes _res;

  call({
    List<Query$tvBills_getProviders$tvBills_getProviders>? tvBills_getProviders,
    String? $__typename,
  }) =>
      _res;

  tvBills_getProviders(_fn) => _res;
}

const documentNodeQuerytvBills_getProviders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'tvBills_getProviders'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TvBill_GetTVProvidersInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tvBills_getProviders'),
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
            name: NameNode(value: 'logo'),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'slug'),
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
Query$tvBills_getProviders _parserFn$Query$tvBills_getProviders(
        Map<String, dynamic> data) =>
    Query$tvBills_getProviders.fromJson(data);
typedef OnQueryComplete$Query$tvBills_getProviders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$tvBills_getProviders?,
);

class Options$Query$tvBills_getProviders
    extends graphql.QueryOptions<Query$tvBills_getProviders> {
  Options$Query$tvBills_getProviders({
    String? operationName,
    required Variables$Query$tvBills_getProviders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$tvBills_getProviders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$tvBills_getProviders? onComplete,
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
                        : _parserFn$Query$tvBills_getProviders(data),
                  ),
          onError: onError,
          document: documentNodeQuerytvBills_getProviders,
          parserFn: _parserFn$Query$tvBills_getProviders,
        );

  final OnQueryComplete$Query$tvBills_getProviders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$tvBills_getProviders
    extends graphql.WatchQueryOptions<Query$tvBills_getProviders> {
  WatchOptions$Query$tvBills_getProviders({
    String? operationName,
    required Variables$Query$tvBills_getProviders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$tvBills_getProviders? typedOptimisticResult,
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
          document: documentNodeQuerytvBills_getProviders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$tvBills_getProviders,
        );
}

class FetchMoreOptions$Query$tvBills_getProviders
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$tvBills_getProviders({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$tvBills_getProviders variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerytvBills_getProviders,
        );
}

extension ClientExtension$Query$tvBills_getProviders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$tvBills_getProviders>>
      query$tvBills_getProviders(
              Options$Query$tvBills_getProviders options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$tvBills_getProviders>
      watchQuery$tvBills_getProviders(
              WatchOptions$Query$tvBills_getProviders options) =>
          this.watchQuery(options);
  void writeQuery$tvBills_getProviders({
    required Query$tvBills_getProviders data,
    required Variables$Query$tvBills_getProviders variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerytvBills_getProviders),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$tvBills_getProviders? readQuery$tvBills_getProviders({
    required Variables$Query$tvBills_getProviders variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerytvBills_getProviders),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$tvBills_getProviders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$tvBills_getProviders>
    useQuery$tvBills_getProviders(Options$Query$tvBills_getProviders options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$tvBills_getProviders>
    useWatchQuery$tvBills_getProviders(
            WatchOptions$Query$tvBills_getProviders options) =>
        graphql_flutter.useWatchQuery(options);

class Query$tvBills_getProviders$Widget
    extends graphql_flutter.Query<Query$tvBills_getProviders> {
  Query$tvBills_getProviders$Widget({
    widgets.Key? key,
    required Options$Query$tvBills_getProviders options,
    required graphql_flutter.QueryBuilder<Query$tvBills_getProviders> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$tvBills_getProviders$tvBills_getProviders {
  Query$tvBills_getProviders$tvBills_getProviders({
    required this.logo,
    required this.category,
    required this.name,
    required this.slug,
    required this.status,
    this.$__typename = 'TvBill_GetTVProvidersResponse',
  });

  factory Query$tvBills_getProviders$tvBills_getProviders.fromJson(
      Map<String, dynamic> json) {
    final l$logo = json['logo'];
    final l$category = json['category'];
    final l$name = json['name'];
    final l$slug = json['slug'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$tvBills_getProviders$tvBills_getProviders(
      logo: (l$logo as String),
      category: (l$category as String),
      name: (l$name as String),
      slug: (l$slug as String),
      status: (l$status as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String logo;

  final String category;

  final String name;

  final String slug;

  final bool status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logo = logo;
    _resultData['logo'] = l$logo;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logo = logo;
    final l$category = category;
    final l$name = name;
    final l$slug = slug;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logo,
      l$category,
      l$name,
      l$slug,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$tvBills_getProviders$tvBills_getProviders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$logo = logo;
    final lOther$logo = other.logo;
    if (l$logo != lOther$logo) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
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

extension UtilityExtension$Query$tvBills_getProviders$tvBills_getProviders
    on Query$tvBills_getProviders$tvBills_getProviders {
  CopyWith$Query$tvBills_getProviders$tvBills_getProviders<
          Query$tvBills_getProviders$tvBills_getProviders>
      get copyWith => CopyWith$Query$tvBills_getProviders$tvBills_getProviders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$tvBills_getProviders$tvBills_getProviders<TRes> {
  factory CopyWith$Query$tvBills_getProviders$tvBills_getProviders(
    Query$tvBills_getProviders$tvBills_getProviders instance,
    TRes Function(Query$tvBills_getProviders$tvBills_getProviders) then,
  ) = _CopyWithImpl$Query$tvBills_getProviders$tvBills_getProviders;

  factory CopyWith$Query$tvBills_getProviders$tvBills_getProviders.stub(
          TRes res) =
      _CopyWithStubImpl$Query$tvBills_getProviders$tvBills_getProviders;

  TRes call({
    String? logo,
    String? category,
    String? name,
    String? slug,
    bool? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$tvBills_getProviders$tvBills_getProviders<TRes>
    implements CopyWith$Query$tvBills_getProviders$tvBills_getProviders<TRes> {
  _CopyWithImpl$Query$tvBills_getProviders$tvBills_getProviders(
    this._instance,
    this._then,
  );

  final Query$tvBills_getProviders$tvBills_getProviders _instance;

  final TRes Function(Query$tvBills_getProviders$tvBills_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logo = _undefined,
    Object? category = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$tvBills_getProviders$tvBills_getProviders(
        logo: logo == _undefined || logo == null
            ? _instance.logo
            : (logo as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$tvBills_getProviders$tvBills_getProviders<TRes>
    implements CopyWith$Query$tvBills_getProviders$tvBills_getProviders<TRes> {
  _CopyWithStubImpl$Query$tvBills_getProviders$tvBills_getProviders(this._res);

  TRes _res;

  call({
    String? logo,
    String? category,
    String? name,
    String? slug,
    bool? status,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$tvBills_getBouquet {
  factory Variables$Query$tvBills_getBouquet(
          {required Input$TvBill_GetTVBouquetInput input}) =>
      Variables$Query$tvBills_getBouquet._({
        r'input': input,
      });

  Variables$Query$tvBills_getBouquet._(this._$data);

  factory Variables$Query$tvBills_getBouquet.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$TvBill_GetTVBouquetInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$tvBills_getBouquet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TvBill_GetTVBouquetInput get input =>
      (_$data['input'] as Input$TvBill_GetTVBouquetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$tvBills_getBouquet<
          Variables$Query$tvBills_getBouquet>
      get copyWith => CopyWith$Variables$Query$tvBills_getBouquet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$tvBills_getBouquet ||
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

abstract class CopyWith$Variables$Query$tvBills_getBouquet<TRes> {
  factory CopyWith$Variables$Query$tvBills_getBouquet(
    Variables$Query$tvBills_getBouquet instance,
    TRes Function(Variables$Query$tvBills_getBouquet) then,
  ) = _CopyWithImpl$Variables$Query$tvBills_getBouquet;

  factory CopyWith$Variables$Query$tvBills_getBouquet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$tvBills_getBouquet;

  TRes call({Input$TvBill_GetTVBouquetInput? input});
}

class _CopyWithImpl$Variables$Query$tvBills_getBouquet<TRes>
    implements CopyWith$Variables$Query$tvBills_getBouquet<TRes> {
  _CopyWithImpl$Variables$Query$tvBills_getBouquet(
    this._instance,
    this._then,
  );

  final Variables$Query$tvBills_getBouquet _instance;

  final TRes Function(Variables$Query$tvBills_getBouquet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$tvBills_getBouquet._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TvBill_GetTVBouquetInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$tvBills_getBouquet<TRes>
    implements CopyWith$Variables$Query$tvBills_getBouquet<TRes> {
  _CopyWithStubImpl$Variables$Query$tvBills_getBouquet(this._res);

  TRes _res;

  call({Input$TvBill_GetTVBouquetInput? input}) => _res;
}

class Query$tvBills_getBouquet {
  Query$tvBills_getBouquet({
    required this.tvBills_getBouquet,
    this.$__typename = 'Query',
  });

  factory Query$tvBills_getBouquet.fromJson(Map<String, dynamic> json) {
    final l$tvBills_getBouquet = json['tvBills_getBouquet'];
    final l$$__typename = json['__typename'];
    return Query$tvBills_getBouquet(
      tvBills_getBouquet: (l$tvBills_getBouquet as List<dynamic>)
          .map((e) => Query$tvBills_getBouquet$tvBills_getBouquet.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$tvBills_getBouquet$tvBills_getBouquet> tvBills_getBouquet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tvBills_getBouquet = tvBills_getBouquet;
    _resultData['tvBills_getBouquet'] =
        l$tvBills_getBouquet.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tvBills_getBouquet = tvBills_getBouquet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tvBills_getBouquet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$tvBills_getBouquet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tvBills_getBouquet = tvBills_getBouquet;
    final lOther$tvBills_getBouquet = other.tvBills_getBouquet;
    if (l$tvBills_getBouquet.length != lOther$tvBills_getBouquet.length) {
      return false;
    }
    for (int i = 0; i < l$tvBills_getBouquet.length; i++) {
      final l$tvBills_getBouquet$entry = l$tvBills_getBouquet[i];
      final lOther$tvBills_getBouquet$entry = lOther$tvBills_getBouquet[i];
      if (l$tvBills_getBouquet$entry != lOther$tvBills_getBouquet$entry) {
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

extension UtilityExtension$Query$tvBills_getBouquet
    on Query$tvBills_getBouquet {
  CopyWith$Query$tvBills_getBouquet<Query$tvBills_getBouquet> get copyWith =>
      CopyWith$Query$tvBills_getBouquet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$tvBills_getBouquet<TRes> {
  factory CopyWith$Query$tvBills_getBouquet(
    Query$tvBills_getBouquet instance,
    TRes Function(Query$tvBills_getBouquet) then,
  ) = _CopyWithImpl$Query$tvBills_getBouquet;

  factory CopyWith$Query$tvBills_getBouquet.stub(TRes res) =
      _CopyWithStubImpl$Query$tvBills_getBouquet;

  TRes call({
    List<Query$tvBills_getBouquet$tvBills_getBouquet>? tvBills_getBouquet,
    String? $__typename,
  });
  TRes tvBills_getBouquet(
      Iterable<Query$tvBills_getBouquet$tvBills_getBouquet> Function(
              Iterable<
                  CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet<
                      Query$tvBills_getBouquet$tvBills_getBouquet>>)
          _fn);
}

class _CopyWithImpl$Query$tvBills_getBouquet<TRes>
    implements CopyWith$Query$tvBills_getBouquet<TRes> {
  _CopyWithImpl$Query$tvBills_getBouquet(
    this._instance,
    this._then,
  );

  final Query$tvBills_getBouquet _instance;

  final TRes Function(Query$tvBills_getBouquet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tvBills_getBouquet = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$tvBills_getBouquet(
        tvBills_getBouquet:
            tvBills_getBouquet == _undefined || tvBills_getBouquet == null
                ? _instance.tvBills_getBouquet
                : (tvBills_getBouquet
                    as List<Query$tvBills_getBouquet$tvBills_getBouquet>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes tvBills_getBouquet(
          Iterable<Query$tvBills_getBouquet$tvBills_getBouquet> Function(
                  Iterable<
                      CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet<
                          Query$tvBills_getBouquet$tvBills_getBouquet>>)
              _fn) =>
      call(
          tvBills_getBouquet: _fn(_instance.tvBills_getBouquet
              .map((e) => CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$tvBills_getBouquet<TRes>
    implements CopyWith$Query$tvBills_getBouquet<TRes> {
  _CopyWithStubImpl$Query$tvBills_getBouquet(this._res);

  TRes _res;

  call({
    List<Query$tvBills_getBouquet$tvBills_getBouquet>? tvBills_getBouquet,
    String? $__typename,
  }) =>
      _res;

  tvBills_getBouquet(_fn) => _res;
}

const documentNodeQuerytvBills_getBouquet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'tvBills_getBouquet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TvBill_GetTVBouquetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tvBills_getBouquet'),
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
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
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
Query$tvBills_getBouquet _parserFn$Query$tvBills_getBouquet(
        Map<String, dynamic> data) =>
    Query$tvBills_getBouquet.fromJson(data);
typedef OnQueryComplete$Query$tvBills_getBouquet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$tvBills_getBouquet?,
);

class Options$Query$tvBills_getBouquet
    extends graphql.QueryOptions<Query$tvBills_getBouquet> {
  Options$Query$tvBills_getBouquet({
    String? operationName,
    required Variables$Query$tvBills_getBouquet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$tvBills_getBouquet? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$tvBills_getBouquet? onComplete,
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
                        : _parserFn$Query$tvBills_getBouquet(data),
                  ),
          onError: onError,
          document: documentNodeQuerytvBills_getBouquet,
          parserFn: _parserFn$Query$tvBills_getBouquet,
        );

  final OnQueryComplete$Query$tvBills_getBouquet? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$tvBills_getBouquet
    extends graphql.WatchQueryOptions<Query$tvBills_getBouquet> {
  WatchOptions$Query$tvBills_getBouquet({
    String? operationName,
    required Variables$Query$tvBills_getBouquet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$tvBills_getBouquet? typedOptimisticResult,
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
          document: documentNodeQuerytvBills_getBouquet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$tvBills_getBouquet,
        );
}

class FetchMoreOptions$Query$tvBills_getBouquet
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$tvBills_getBouquet({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$tvBills_getBouquet variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerytvBills_getBouquet,
        );
}

extension ClientExtension$Query$tvBills_getBouquet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$tvBills_getBouquet>>
      query$tvBills_getBouquet(
              Options$Query$tvBills_getBouquet options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$tvBills_getBouquet>
      watchQuery$tvBills_getBouquet(
              WatchOptions$Query$tvBills_getBouquet options) =>
          this.watchQuery(options);
  void writeQuery$tvBills_getBouquet({
    required Query$tvBills_getBouquet data,
    required Variables$Query$tvBills_getBouquet variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerytvBills_getBouquet),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$tvBills_getBouquet? readQuery$tvBills_getBouquet({
    required Variables$Query$tvBills_getBouquet variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerytvBills_getBouquet),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$tvBills_getBouquet.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$tvBills_getBouquet>
    useQuery$tvBills_getBouquet(Options$Query$tvBills_getBouquet options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$tvBills_getBouquet>
    useWatchQuery$tvBills_getBouquet(
            WatchOptions$Query$tvBills_getBouquet options) =>
        graphql_flutter.useWatchQuery(options);

class Query$tvBills_getBouquet$Widget
    extends graphql_flutter.Query<Query$tvBills_getBouquet> {
  Query$tvBills_getBouquet$Widget({
    widgets.Key? key,
    required Options$Query$tvBills_getBouquet options,
    required graphql_flutter.QueryBuilder<Query$tvBills_getBouquet> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$tvBills_getBouquet$tvBills_getBouquet {
  Query$tvBills_getBouquet$tvBills_getBouquet({
    required this.code,
    required this.description,
    required this.price,
    this.$__typename = 'TvBill_GetBouquetPackageResponse',
  });

  factory Query$tvBills_getBouquet$tvBills_getBouquet.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$price = json['price'];
    final l$$__typename = json['__typename'];
    return Query$tvBills_getBouquet$tvBills_getBouquet(
      code: (l$code as String),
      description: (l$description as String),
      price: (l$price as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String price;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$price = price;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$description,
      l$price,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$tvBills_getBouquet$tvBills_getBouquet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
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

extension UtilityExtension$Query$tvBills_getBouquet$tvBills_getBouquet
    on Query$tvBills_getBouquet$tvBills_getBouquet {
  CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet<
          Query$tvBills_getBouquet$tvBills_getBouquet>
      get copyWith => CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet<TRes> {
  factory CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet(
    Query$tvBills_getBouquet$tvBills_getBouquet instance,
    TRes Function(Query$tvBills_getBouquet$tvBills_getBouquet) then,
  ) = _CopyWithImpl$Query$tvBills_getBouquet$tvBills_getBouquet;

  factory CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet.stub(TRes res) =
      _CopyWithStubImpl$Query$tvBills_getBouquet$tvBills_getBouquet;

  TRes call({
    String? code,
    String? description,
    String? price,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$tvBills_getBouquet$tvBills_getBouquet<TRes>
    implements CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet<TRes> {
  _CopyWithImpl$Query$tvBills_getBouquet$tvBills_getBouquet(
    this._instance,
    this._then,
  );

  final Query$tvBills_getBouquet$tvBills_getBouquet _instance;

  final TRes Function(Query$tvBills_getBouquet$tvBills_getBouquet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? price = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$tvBills_getBouquet$tvBills_getBouquet(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$tvBills_getBouquet$tvBills_getBouquet<TRes>
    implements CopyWith$Query$tvBills_getBouquet$tvBills_getBouquet<TRes> {
  _CopyWithStubImpl$Query$tvBills_getBouquet$tvBills_getBouquet(this._res);

  TRes _res;

  call({
    String? code,
    String? description,
    String? price,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$tvBills_validateAccount {
  factory Variables$Mutation$tvBills_validateAccount(
          {required Input$TvBill_ValidateAccountInput input}) =>
      Variables$Mutation$tvBills_validateAccount._({
        r'input': input,
      });

  Variables$Mutation$tvBills_validateAccount._(this._$data);

  factory Variables$Mutation$tvBills_validateAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$TvBill_ValidateAccountInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$tvBills_validateAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TvBill_ValidateAccountInput get input =>
      (_$data['input'] as Input$TvBill_ValidateAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$tvBills_validateAccount<
          Variables$Mutation$tvBills_validateAccount>
      get copyWith => CopyWith$Variables$Mutation$tvBills_validateAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$tvBills_validateAccount ||
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

abstract class CopyWith$Variables$Mutation$tvBills_validateAccount<TRes> {
  factory CopyWith$Variables$Mutation$tvBills_validateAccount(
    Variables$Mutation$tvBills_validateAccount instance,
    TRes Function(Variables$Mutation$tvBills_validateAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$tvBills_validateAccount;

  factory CopyWith$Variables$Mutation$tvBills_validateAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$tvBills_validateAccount;

  TRes call({Input$TvBill_ValidateAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$tvBills_validateAccount<TRes>
    implements CopyWith$Variables$Mutation$tvBills_validateAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$tvBills_validateAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$tvBills_validateAccount _instance;

  final TRes Function(Variables$Mutation$tvBills_validateAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$tvBills_validateAccount._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TvBill_ValidateAccountInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$tvBills_validateAccount<TRes>
    implements CopyWith$Variables$Mutation$tvBills_validateAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$tvBills_validateAccount(this._res);

  TRes _res;

  call({Input$TvBill_ValidateAccountInput? input}) => _res;
}

class Mutation$tvBills_validateAccount {
  Mutation$tvBills_validateAccount({
    required this.tvBills_validateAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$tvBills_validateAccount.fromJson(Map<String, dynamic> json) {
    final l$tvBills_validateAccount = json['tvBills_validateAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$tvBills_validateAccount(
      tvBills_validateAccount:
          Mutation$tvBills_validateAccount$tvBills_validateAccount.fromJson(
              (l$tvBills_validateAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$tvBills_validateAccount$tvBills_validateAccount
      tvBills_validateAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tvBills_validateAccount = tvBills_validateAccount;
    _resultData['tvBills_validateAccount'] = l$tvBills_validateAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tvBills_validateAccount = tvBills_validateAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tvBills_validateAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$tvBills_validateAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tvBills_validateAccount = tvBills_validateAccount;
    final lOther$tvBills_validateAccount = other.tvBills_validateAccount;
    if (l$tvBills_validateAccount != lOther$tvBills_validateAccount) {
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

extension UtilityExtension$Mutation$tvBills_validateAccount
    on Mutation$tvBills_validateAccount {
  CopyWith$Mutation$tvBills_validateAccount<Mutation$tvBills_validateAccount>
      get copyWith => CopyWith$Mutation$tvBills_validateAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$tvBills_validateAccount<TRes> {
  factory CopyWith$Mutation$tvBills_validateAccount(
    Mutation$tvBills_validateAccount instance,
    TRes Function(Mutation$tvBills_validateAccount) then,
  ) = _CopyWithImpl$Mutation$tvBills_validateAccount;

  factory CopyWith$Mutation$tvBills_validateAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$tvBills_validateAccount;

  TRes call({
    Mutation$tvBills_validateAccount$tvBills_validateAccount?
        tvBills_validateAccount,
    String? $__typename,
  });
  CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount<TRes>
      get tvBills_validateAccount;
}

class _CopyWithImpl$Mutation$tvBills_validateAccount<TRes>
    implements CopyWith$Mutation$tvBills_validateAccount<TRes> {
  _CopyWithImpl$Mutation$tvBills_validateAccount(
    this._instance,
    this._then,
  );

  final Mutation$tvBills_validateAccount _instance;

  final TRes Function(Mutation$tvBills_validateAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tvBills_validateAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$tvBills_validateAccount(
        tvBills_validateAccount: tvBills_validateAccount == _undefined ||
                tvBills_validateAccount == null
            ? _instance.tvBills_validateAccount
            : (tvBills_validateAccount
                as Mutation$tvBills_validateAccount$tvBills_validateAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount<TRes>
      get tvBills_validateAccount {
    final local$tvBills_validateAccount = _instance.tvBills_validateAccount;
    return CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount(
        local$tvBills_validateAccount, (e) => call(tvBills_validateAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$tvBills_validateAccount<TRes>
    implements CopyWith$Mutation$tvBills_validateAccount<TRes> {
  _CopyWithStubImpl$Mutation$tvBills_validateAccount(this._res);

  TRes _res;

  call({
    Mutation$tvBills_validateAccount$tvBills_validateAccount?
        tvBills_validateAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount<TRes>
      get tvBills_validateAccount =>
          CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount
              .stub(_res);
}

const documentNodeMutationtvBills_validateAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'tvBills_validateAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TvBill_ValidateAccountInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tvBills_validateAccount'),
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
            name: NameNode(value: 'customerName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'smartCardNumber'),
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
Mutation$tvBills_validateAccount _parserFn$Mutation$tvBills_validateAccount(
        Map<String, dynamic> data) =>
    Mutation$tvBills_validateAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$tvBills_validateAccount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$tvBills_validateAccount?,
);

class Options$Mutation$tvBills_validateAccount
    extends graphql.MutationOptions<Mutation$tvBills_validateAccount> {
  Options$Mutation$tvBills_validateAccount({
    String? operationName,
    required Variables$Mutation$tvBills_validateAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$tvBills_validateAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$tvBills_validateAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$tvBills_validateAccount>? update,
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
                        : _parserFn$Mutation$tvBills_validateAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationtvBills_validateAccount,
          parserFn: _parserFn$Mutation$tvBills_validateAccount,
        );

  final OnMutationCompleted$Mutation$tvBills_validateAccount?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$tvBills_validateAccount
    extends graphql.WatchQueryOptions<Mutation$tvBills_validateAccount> {
  WatchOptions$Mutation$tvBills_validateAccount({
    String? operationName,
    required Variables$Mutation$tvBills_validateAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$tvBills_validateAccount? typedOptimisticResult,
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
          document: documentNodeMutationtvBills_validateAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$tvBills_validateAccount,
        );
}

extension ClientExtension$Mutation$tvBills_validateAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$tvBills_validateAccount>>
      mutate$tvBills_validateAccount(
              Options$Mutation$tvBills_validateAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$tvBills_validateAccount>
      watchMutation$tvBills_validateAccount(
              WatchOptions$Mutation$tvBills_validateAccount options) =>
          this.watchMutation(options);
}

class Mutation$tvBills_validateAccount$HookResult {
  Mutation$tvBills_validateAccount$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$tvBills_validateAccount runMutation;

  final graphql.QueryResult<Mutation$tvBills_validateAccount> result;
}

Mutation$tvBills_validateAccount$HookResult useMutation$tvBills_validateAccount(
    [WidgetOptions$Mutation$tvBills_validateAccount? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$tvBills_validateAccount());
  return Mutation$tvBills_validateAccount$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$tvBills_validateAccount>
    useWatchMutation$tvBills_validateAccount(
            WatchOptions$Mutation$tvBills_validateAccount options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$tvBills_validateAccount
    extends graphql.MutationOptions<Mutation$tvBills_validateAccount> {
  WidgetOptions$Mutation$tvBills_validateAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$tvBills_validateAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$tvBills_validateAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$tvBills_validateAccount>? update,
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
                        : _parserFn$Mutation$tvBills_validateAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationtvBills_validateAccount,
          parserFn: _parserFn$Mutation$tvBills_validateAccount,
        );

  final OnMutationCompleted$Mutation$tvBills_validateAccount?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$tvBills_validateAccount
    = graphql.MultiSourceResult<Mutation$tvBills_validateAccount> Function(
  Variables$Mutation$tvBills_validateAccount, {
  Object? optimisticResult,
  Mutation$tvBills_validateAccount? typedOptimisticResult,
});
typedef Builder$Mutation$tvBills_validateAccount = widgets.Widget Function(
  RunMutation$Mutation$tvBills_validateAccount,
  graphql.QueryResult<Mutation$tvBills_validateAccount>?,
);

class Mutation$tvBills_validateAccount$Widget
    extends graphql_flutter.Mutation<Mutation$tvBills_validateAccount> {
  Mutation$tvBills_validateAccount$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$tvBills_validateAccount? options,
    required Builder$Mutation$tvBills_validateAccount builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$tvBills_validateAccount(),
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

class Mutation$tvBills_validateAccount$tvBills_validateAccount {
  Mutation$tvBills_validateAccount$tvBills_validateAccount({
    required this.customerName,
    required this.service,
    required this.smartCardNumber,
    this.$__typename = 'TvBill_ValidateAccountResponse',
  });

  factory Mutation$tvBills_validateAccount$tvBills_validateAccount.fromJson(
      Map<String, dynamic> json) {
    final l$customerName = json['customerName'];
    final l$service = json['service'];
    final l$smartCardNumber = json['smartCardNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$tvBills_validateAccount$tvBills_validateAccount(
      customerName: (l$customerName as String),
      service: (l$service as String),
      smartCardNumber: (l$smartCardNumber as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String customerName;

  final String service;

  final String smartCardNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customerName = customerName;
    _resultData['customerName'] = l$customerName;
    final l$service = service;
    _resultData['service'] = l$service;
    final l$smartCardNumber = smartCardNumber;
    _resultData['smartCardNumber'] = l$smartCardNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customerName = customerName;
    final l$service = service;
    final l$smartCardNumber = smartCardNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customerName,
      l$service,
      l$smartCardNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$tvBills_validateAccount$tvBills_validateAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerName = customerName;
    final lOther$customerName = other.customerName;
    if (l$customerName != lOther$customerName) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$smartCardNumber = smartCardNumber;
    final lOther$smartCardNumber = other.smartCardNumber;
    if (l$smartCardNumber != lOther$smartCardNumber) {
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

extension UtilityExtension$Mutation$tvBills_validateAccount$tvBills_validateAccount
    on Mutation$tvBills_validateAccount$tvBills_validateAccount {
  CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount<
          Mutation$tvBills_validateAccount$tvBills_validateAccount>
      get copyWith =>
          CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount<
    TRes> {
  factory CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount(
    Mutation$tvBills_validateAccount$tvBills_validateAccount instance,
    TRes Function(Mutation$tvBills_validateAccount$tvBills_validateAccount)
        then,
  ) = _CopyWithImpl$Mutation$tvBills_validateAccount$tvBills_validateAccount;

  factory CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$tvBills_validateAccount$tvBills_validateAccount;

  TRes call({
    String? customerName,
    String? service,
    String? smartCardNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$tvBills_validateAccount$tvBills_validateAccount<
        TRes>
    implements
        CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount<
            TRes> {
  _CopyWithImpl$Mutation$tvBills_validateAccount$tvBills_validateAccount(
    this._instance,
    this._then,
  );

  final Mutation$tvBills_validateAccount$tvBills_validateAccount _instance;

  final TRes Function(Mutation$tvBills_validateAccount$tvBills_validateAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerName = _undefined,
    Object? service = _undefined,
    Object? smartCardNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$tvBills_validateAccount$tvBills_validateAccount(
        customerName: customerName == _undefined || customerName == null
            ? _instance.customerName
            : (customerName as String),
        service: service == _undefined || service == null
            ? _instance.service
            : (service as String),
        smartCardNumber:
            smartCardNumber == _undefined || smartCardNumber == null
                ? _instance.smartCardNumber
                : (smartCardNumber as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$tvBills_validateAccount$tvBills_validateAccount<
        TRes>
    implements
        CopyWith$Mutation$tvBills_validateAccount$tvBills_validateAccount<
            TRes> {
  _CopyWithStubImpl$Mutation$tvBills_validateAccount$tvBills_validateAccount(
      this._res);

  TRes _res;

  call({
    String? customerName,
    String? service,
    String? smartCardNumber,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$tvBills_makePayment {
  factory Variables$Mutation$tvBills_makePayment(
          {required Input$TvBill_PaymentInput input}) =>
      Variables$Mutation$tvBills_makePayment._({
        r'input': input,
      });

  Variables$Mutation$tvBills_makePayment._(this._$data);

  factory Variables$Mutation$tvBills_makePayment.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TvBill_PaymentInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$tvBills_makePayment._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TvBill_PaymentInput get input =>
      (_$data['input'] as Input$TvBill_PaymentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$tvBills_makePayment<
          Variables$Mutation$tvBills_makePayment>
      get copyWith => CopyWith$Variables$Mutation$tvBills_makePayment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$tvBills_makePayment ||
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

abstract class CopyWith$Variables$Mutation$tvBills_makePayment<TRes> {
  factory CopyWith$Variables$Mutation$tvBills_makePayment(
    Variables$Mutation$tvBills_makePayment instance,
    TRes Function(Variables$Mutation$tvBills_makePayment) then,
  ) = _CopyWithImpl$Variables$Mutation$tvBills_makePayment;

  factory CopyWith$Variables$Mutation$tvBills_makePayment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$tvBills_makePayment;

  TRes call({Input$TvBill_PaymentInput? input});
}

class _CopyWithImpl$Variables$Mutation$tvBills_makePayment<TRes>
    implements CopyWith$Variables$Mutation$tvBills_makePayment<TRes> {
  _CopyWithImpl$Variables$Mutation$tvBills_makePayment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$tvBills_makePayment _instance;

  final TRes Function(Variables$Mutation$tvBills_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$tvBills_makePayment._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TvBill_PaymentInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$tvBills_makePayment<TRes>
    implements CopyWith$Variables$Mutation$tvBills_makePayment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$tvBills_makePayment(this._res);

  TRes _res;

  call({Input$TvBill_PaymentInput? input}) => _res;
}

class Mutation$tvBills_makePayment {
  Mutation$tvBills_makePayment({
    required this.tvBills_makePayment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$tvBills_makePayment.fromJson(Map<String, dynamic> json) {
    final l$tvBills_makePayment = json['tvBills_makePayment'];
    final l$$__typename = json['__typename'];
    return Mutation$tvBills_makePayment(
      tvBills_makePayment:
          Mutation$tvBills_makePayment$tvBills_makePayment.fromJson(
              (l$tvBills_makePayment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$tvBills_makePayment$tvBills_makePayment tvBills_makePayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tvBills_makePayment = tvBills_makePayment;
    _resultData['tvBills_makePayment'] = l$tvBills_makePayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tvBills_makePayment = tvBills_makePayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tvBills_makePayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$tvBills_makePayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tvBills_makePayment = tvBills_makePayment;
    final lOther$tvBills_makePayment = other.tvBills_makePayment;
    if (l$tvBills_makePayment != lOther$tvBills_makePayment) {
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

extension UtilityExtension$Mutation$tvBills_makePayment
    on Mutation$tvBills_makePayment {
  CopyWith$Mutation$tvBills_makePayment<Mutation$tvBills_makePayment>
      get copyWith => CopyWith$Mutation$tvBills_makePayment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$tvBills_makePayment<TRes> {
  factory CopyWith$Mutation$tvBills_makePayment(
    Mutation$tvBills_makePayment instance,
    TRes Function(Mutation$tvBills_makePayment) then,
  ) = _CopyWithImpl$Mutation$tvBills_makePayment;

  factory CopyWith$Mutation$tvBills_makePayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$tvBills_makePayment;

  TRes call({
    Mutation$tvBills_makePayment$tvBills_makePayment? tvBills_makePayment,
    String? $__typename,
  });
  CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment<TRes>
      get tvBills_makePayment;
}

class _CopyWithImpl$Mutation$tvBills_makePayment<TRes>
    implements CopyWith$Mutation$tvBills_makePayment<TRes> {
  _CopyWithImpl$Mutation$tvBills_makePayment(
    this._instance,
    this._then,
  );

  final Mutation$tvBills_makePayment _instance;

  final TRes Function(Mutation$tvBills_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tvBills_makePayment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$tvBills_makePayment(
        tvBills_makePayment:
            tvBills_makePayment == _undefined || tvBills_makePayment == null
                ? _instance.tvBills_makePayment
                : (tvBills_makePayment
                    as Mutation$tvBills_makePayment$tvBills_makePayment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment<TRes>
      get tvBills_makePayment {
    final local$tvBills_makePayment = _instance.tvBills_makePayment;
    return CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment(
        local$tvBills_makePayment, (e) => call(tvBills_makePayment: e));
  }
}

class _CopyWithStubImpl$Mutation$tvBills_makePayment<TRes>
    implements CopyWith$Mutation$tvBills_makePayment<TRes> {
  _CopyWithStubImpl$Mutation$tvBills_makePayment(this._res);

  TRes _res;

  call({
    Mutation$tvBills_makePayment$tvBills_makePayment? tvBills_makePayment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment<TRes>
      get tvBills_makePayment =>
          CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment.stub(_res);
}

const documentNodeMutationtvBills_makePayment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'tvBills_makePayment'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TvBill_PaymentInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tvBills_makePayment'),
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
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'biller'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'commission'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customerId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transactionId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transactionDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customerId'),
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
Mutation$tvBills_makePayment _parserFn$Mutation$tvBills_makePayment(
        Map<String, dynamic> data) =>
    Mutation$tvBills_makePayment.fromJson(data);
typedef OnMutationCompleted$Mutation$tvBills_makePayment = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$tvBills_makePayment?,
);

class Options$Mutation$tvBills_makePayment
    extends graphql.MutationOptions<Mutation$tvBills_makePayment> {
  Options$Mutation$tvBills_makePayment({
    String? operationName,
    required Variables$Mutation$tvBills_makePayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$tvBills_makePayment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$tvBills_makePayment? onCompleted,
    graphql.OnMutationUpdate<Mutation$tvBills_makePayment>? update,
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
                        : _parserFn$Mutation$tvBills_makePayment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationtvBills_makePayment,
          parserFn: _parserFn$Mutation$tvBills_makePayment,
        );

  final OnMutationCompleted$Mutation$tvBills_makePayment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$tvBills_makePayment
    extends graphql.WatchQueryOptions<Mutation$tvBills_makePayment> {
  WatchOptions$Mutation$tvBills_makePayment({
    String? operationName,
    required Variables$Mutation$tvBills_makePayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$tvBills_makePayment? typedOptimisticResult,
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
          document: documentNodeMutationtvBills_makePayment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$tvBills_makePayment,
        );
}

extension ClientExtension$Mutation$tvBills_makePayment
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$tvBills_makePayment>>
      mutate$tvBills_makePayment(
              Options$Mutation$tvBills_makePayment options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$tvBills_makePayment>
      watchMutation$tvBills_makePayment(
              WatchOptions$Mutation$tvBills_makePayment options) =>
          this.watchMutation(options);
}

class Mutation$tvBills_makePayment$HookResult {
  Mutation$tvBills_makePayment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$tvBills_makePayment runMutation;

  final graphql.QueryResult<Mutation$tvBills_makePayment> result;
}

Mutation$tvBills_makePayment$HookResult useMutation$tvBills_makePayment(
    [WidgetOptions$Mutation$tvBills_makePayment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$tvBills_makePayment());
  return Mutation$tvBills_makePayment$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$tvBills_makePayment>
    useWatchMutation$tvBills_makePayment(
            WatchOptions$Mutation$tvBills_makePayment options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$tvBills_makePayment
    extends graphql.MutationOptions<Mutation$tvBills_makePayment> {
  WidgetOptions$Mutation$tvBills_makePayment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$tvBills_makePayment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$tvBills_makePayment? onCompleted,
    graphql.OnMutationUpdate<Mutation$tvBills_makePayment>? update,
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
                        : _parserFn$Mutation$tvBills_makePayment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationtvBills_makePayment,
          parserFn: _parserFn$Mutation$tvBills_makePayment,
        );

  final OnMutationCompleted$Mutation$tvBills_makePayment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$tvBills_makePayment
    = graphql.MultiSourceResult<Mutation$tvBills_makePayment> Function(
  Variables$Mutation$tvBills_makePayment, {
  Object? optimisticResult,
  Mutation$tvBills_makePayment? typedOptimisticResult,
});
typedef Builder$Mutation$tvBills_makePayment = widgets.Widget Function(
  RunMutation$Mutation$tvBills_makePayment,
  graphql.QueryResult<Mutation$tvBills_makePayment>?,
);

class Mutation$tvBills_makePayment$Widget
    extends graphql_flutter.Mutation<Mutation$tvBills_makePayment> {
  Mutation$tvBills_makePayment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$tvBills_makePayment? options,
    required Builder$Mutation$tvBills_makePayment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$tvBills_makePayment(),
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

class Mutation$tvBills_makePayment$tvBills_makePayment {
  Mutation$tvBills_makePayment$tvBills_makePayment({
    required this.amount,
    required this.biller,
    required this.commission,
    required this.customerId,
    required this.transactionId,
    required this.transactionDate,
    this.$__typename = 'TvBill_PaymentResponse',
  });

  factory Mutation$tvBills_makePayment$tvBills_makePayment.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$biller = json['biller'];
    final l$commission = json['commission'];
    final l$customerId = json['customerId'];
    final l$transactionId = json['transactionId'];
    final l$transactionDate = json['transactionDate'];
    final l$$__typename = json['__typename'];
    return Mutation$tvBills_makePayment$tvBills_makePayment(
      amount: (l$amount as int),
      biller: (l$biller as String),
      commission: (l$commission as int),
      customerId: (l$customerId as String),
      transactionId: (l$transactionId as String),
      transactionDate: (l$transactionDate as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int amount;

  final String biller;

  final int commission;

  final String customerId;

  final String transactionId;

  final String transactionDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$biller = biller;
    _resultData['biller'] = l$biller;
    final l$commission = commission;
    _resultData['commission'] = l$commission;
    final l$customerId = customerId;
    _resultData['customerId'] = l$customerId;
    final l$transactionId = transactionId;
    _resultData['transactionId'] = l$transactionId;
    final l$transactionDate = transactionDate;
    _resultData['transactionDate'] = l$transactionDate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$biller = biller;
    final l$commission = commission;
    final l$customerId = customerId;
    final l$transactionId = transactionId;
    final l$transactionDate = transactionDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$biller,
      l$commission,
      l$customerId,
      l$transactionId,
      l$transactionDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$tvBills_makePayment$tvBills_makePayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$biller = biller;
    final lOther$biller = other.biller;
    if (l$biller != lOther$biller) {
      return false;
    }
    final l$commission = commission;
    final lOther$commission = other.commission;
    if (l$commission != lOther$commission) {
      return false;
    }
    final l$customerId = customerId;
    final lOther$customerId = other.customerId;
    if (l$customerId != lOther$customerId) {
      return false;
    }
    final l$transactionId = transactionId;
    final lOther$transactionId = other.transactionId;
    if (l$transactionId != lOther$transactionId) {
      return false;
    }
    final l$transactionDate = transactionDate;
    final lOther$transactionDate = other.transactionDate;
    if (l$transactionDate != lOther$transactionDate) {
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

extension UtilityExtension$Mutation$tvBills_makePayment$tvBills_makePayment
    on Mutation$tvBills_makePayment$tvBills_makePayment {
  CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment<
          Mutation$tvBills_makePayment$tvBills_makePayment>
      get copyWith => CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment<TRes> {
  factory CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment(
    Mutation$tvBills_makePayment$tvBills_makePayment instance,
    TRes Function(Mutation$tvBills_makePayment$tvBills_makePayment) then,
  ) = _CopyWithImpl$Mutation$tvBills_makePayment$tvBills_makePayment;

  factory CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$tvBills_makePayment$tvBills_makePayment;

  TRes call({
    int? amount,
    String? biller,
    int? commission,
    String? customerId,
    String? transactionId,
    String? transactionDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$tvBills_makePayment$tvBills_makePayment<TRes>
    implements CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment<TRes> {
  _CopyWithImpl$Mutation$tvBills_makePayment$tvBills_makePayment(
    this._instance,
    this._then,
  );

  final Mutation$tvBills_makePayment$tvBills_makePayment _instance;

  final TRes Function(Mutation$tvBills_makePayment$tvBills_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? biller = _undefined,
    Object? commission = _undefined,
    Object? customerId = _undefined,
    Object? transactionId = _undefined,
    Object? transactionDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$tvBills_makePayment$tvBills_makePayment(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as int),
        biller: biller == _undefined || biller == null
            ? _instance.biller
            : (biller as String),
        commission: commission == _undefined || commission == null
            ? _instance.commission
            : (commission as int),
        customerId: customerId == _undefined || customerId == null
            ? _instance.customerId
            : (customerId as String),
        transactionId: transactionId == _undefined || transactionId == null
            ? _instance.transactionId
            : (transactionId as String),
        transactionDate:
            transactionDate == _undefined || transactionDate == null
                ? _instance.transactionDate
                : (transactionDate as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$tvBills_makePayment$tvBills_makePayment<TRes>
    implements CopyWith$Mutation$tvBills_makePayment$tvBills_makePayment<TRes> {
  _CopyWithStubImpl$Mutation$tvBills_makePayment$tvBills_makePayment(this._res);

  TRes _res;

  call({
    int? amount,
    String? biller,
    int? commission,
    String? customerId,
    String? transactionId,
    String? transactionDate,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$fundBetting_getProviders {
  factory Variables$Query$fundBetting_getProviders(
          {required Input$BettingProvidersInput input}) =>
      Variables$Query$fundBetting_getProviders._({
        r'input': input,
      });

  Variables$Query$fundBetting_getProviders._(this._$data);

  factory Variables$Query$fundBetting_getProviders.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BettingProvidersInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$fundBetting_getProviders._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BettingProvidersInput get input =>
      (_$data['input'] as Input$BettingProvidersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$fundBetting_getProviders<
          Variables$Query$fundBetting_getProviders>
      get copyWith => CopyWith$Variables$Query$fundBetting_getProviders(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$fundBetting_getProviders ||
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

abstract class CopyWith$Variables$Query$fundBetting_getProviders<TRes> {
  factory CopyWith$Variables$Query$fundBetting_getProviders(
    Variables$Query$fundBetting_getProviders instance,
    TRes Function(Variables$Query$fundBetting_getProviders) then,
  ) = _CopyWithImpl$Variables$Query$fundBetting_getProviders;

  factory CopyWith$Variables$Query$fundBetting_getProviders.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$fundBetting_getProviders;

  TRes call({Input$BettingProvidersInput? input});
}

class _CopyWithImpl$Variables$Query$fundBetting_getProviders<TRes>
    implements CopyWith$Variables$Query$fundBetting_getProviders<TRes> {
  _CopyWithImpl$Variables$Query$fundBetting_getProviders(
    this._instance,
    this._then,
  );

  final Variables$Query$fundBetting_getProviders _instance;

  final TRes Function(Variables$Query$fundBetting_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$fundBetting_getProviders._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BettingProvidersInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$fundBetting_getProviders<TRes>
    implements CopyWith$Variables$Query$fundBetting_getProviders<TRes> {
  _CopyWithStubImpl$Variables$Query$fundBetting_getProviders(this._res);

  TRes _res;

  call({Input$BettingProvidersInput? input}) => _res;
}

class Query$fundBetting_getProviders {
  Query$fundBetting_getProviders({
    required this.fundBetting_getProviders,
    this.$__typename = 'Query',
  });

  factory Query$fundBetting_getProviders.fromJson(Map<String, dynamic> json) {
    final l$fundBetting_getProviders = json['fundBetting_getProviders'];
    final l$$__typename = json['__typename'];
    return Query$fundBetting_getProviders(
      fundBetting_getProviders: (l$fundBetting_getProviders as List<dynamic>)
          .map((e) =>
              Query$fundBetting_getProviders$fundBetting_getProviders.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$fundBetting_getProviders$fundBetting_getProviders>
      fundBetting_getProviders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fundBetting_getProviders = fundBetting_getProviders;
    _resultData['fundBetting_getProviders'] =
        l$fundBetting_getProviders.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fundBetting_getProviders = fundBetting_getProviders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$fundBetting_getProviders.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$fundBetting_getProviders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fundBetting_getProviders = fundBetting_getProviders;
    final lOther$fundBetting_getProviders = other.fundBetting_getProviders;
    if (l$fundBetting_getProviders.length !=
        lOther$fundBetting_getProviders.length) {
      return false;
    }
    for (int i = 0; i < l$fundBetting_getProviders.length; i++) {
      final l$fundBetting_getProviders$entry = l$fundBetting_getProviders[i];
      final lOther$fundBetting_getProviders$entry =
          lOther$fundBetting_getProviders[i];
      if (l$fundBetting_getProviders$entry !=
          lOther$fundBetting_getProviders$entry) {
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

extension UtilityExtension$Query$fundBetting_getProviders
    on Query$fundBetting_getProviders {
  CopyWith$Query$fundBetting_getProviders<Query$fundBetting_getProviders>
      get copyWith => CopyWith$Query$fundBetting_getProviders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$fundBetting_getProviders<TRes> {
  factory CopyWith$Query$fundBetting_getProviders(
    Query$fundBetting_getProviders instance,
    TRes Function(Query$fundBetting_getProviders) then,
  ) = _CopyWithImpl$Query$fundBetting_getProviders;

  factory CopyWith$Query$fundBetting_getProviders.stub(TRes res) =
      _CopyWithStubImpl$Query$fundBetting_getProviders;

  TRes call({
    List<Query$fundBetting_getProviders$fundBetting_getProviders>?
        fundBetting_getProviders,
    String? $__typename,
  });
  TRes fundBetting_getProviders(
      Iterable<Query$fundBetting_getProviders$fundBetting_getProviders> Function(
              Iterable<
                  CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders<
                      Query$fundBetting_getProviders$fundBetting_getProviders>>)
          _fn);
}

class _CopyWithImpl$Query$fundBetting_getProviders<TRes>
    implements CopyWith$Query$fundBetting_getProviders<TRes> {
  _CopyWithImpl$Query$fundBetting_getProviders(
    this._instance,
    this._then,
  );

  final Query$fundBetting_getProviders _instance;

  final TRes Function(Query$fundBetting_getProviders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fundBetting_getProviders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fundBetting_getProviders(
        fundBetting_getProviders: fundBetting_getProviders == _undefined ||
                fundBetting_getProviders == null
            ? _instance.fundBetting_getProviders
            : (fundBetting_getProviders as List<
                Query$fundBetting_getProviders$fundBetting_getProviders>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes fundBetting_getProviders(
          Iterable<Query$fundBetting_getProviders$fundBetting_getProviders> Function(
                  Iterable<
                      CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders<
                          Query$fundBetting_getProviders$fundBetting_getProviders>>)
              _fn) =>
      call(
          fundBetting_getProviders: _fn(_instance.fundBetting_getProviders.map(
              (e) =>
                  CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$fundBetting_getProviders<TRes>
    implements CopyWith$Query$fundBetting_getProviders<TRes> {
  _CopyWithStubImpl$Query$fundBetting_getProviders(this._res);

  TRes _res;

  call({
    List<Query$fundBetting_getProviders$fundBetting_getProviders>?
        fundBetting_getProviders,
    String? $__typename,
  }) =>
      _res;

  fundBetting_getProviders(_fn) => _res;
}

const documentNodeQueryfundBetting_getProviders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fundBetting_getProviders'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BettingProvidersInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fundBetting_getProviders'),
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
            name: NameNode(value: 'logo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
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
Query$fundBetting_getProviders _parserFn$Query$fundBetting_getProviders(
        Map<String, dynamic> data) =>
    Query$fundBetting_getProviders.fromJson(data);
typedef OnQueryComplete$Query$fundBetting_getProviders = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$fundBetting_getProviders?,
);

class Options$Query$fundBetting_getProviders
    extends graphql.QueryOptions<Query$fundBetting_getProviders> {
  Options$Query$fundBetting_getProviders({
    String? operationName,
    required Variables$Query$fundBetting_getProviders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$fundBetting_getProviders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$fundBetting_getProviders? onComplete,
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
                        : _parserFn$Query$fundBetting_getProviders(data),
                  ),
          onError: onError,
          document: documentNodeQueryfundBetting_getProviders,
          parserFn: _parserFn$Query$fundBetting_getProviders,
        );

  final OnQueryComplete$Query$fundBetting_getProviders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$fundBetting_getProviders
    extends graphql.WatchQueryOptions<Query$fundBetting_getProviders> {
  WatchOptions$Query$fundBetting_getProviders({
    String? operationName,
    required Variables$Query$fundBetting_getProviders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$fundBetting_getProviders? typedOptimisticResult,
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
          document: documentNodeQueryfundBetting_getProviders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$fundBetting_getProviders,
        );
}

class FetchMoreOptions$Query$fundBetting_getProviders
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$fundBetting_getProviders({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$fundBetting_getProviders variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryfundBetting_getProviders,
        );
}

extension ClientExtension$Query$fundBetting_getProviders
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$fundBetting_getProviders>>
      query$fundBetting_getProviders(
              Options$Query$fundBetting_getProviders options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$fundBetting_getProviders>
      watchQuery$fundBetting_getProviders(
              WatchOptions$Query$fundBetting_getProviders options) =>
          this.watchQuery(options);
  void writeQuery$fundBetting_getProviders({
    required Query$fundBetting_getProviders data,
    required Variables$Query$fundBetting_getProviders variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryfundBetting_getProviders),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$fundBetting_getProviders? readQuery$fundBetting_getProviders({
    required Variables$Query$fundBetting_getProviders variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryfundBetting_getProviders),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$fundBetting_getProviders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$fundBetting_getProviders>
    useQuery$fundBetting_getProviders(
            Options$Query$fundBetting_getProviders options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$fundBetting_getProviders>
    useWatchQuery$fundBetting_getProviders(
            WatchOptions$Query$fundBetting_getProviders options) =>
        graphql_flutter.useWatchQuery(options);

class Query$fundBetting_getProviders$Widget
    extends graphql_flutter.Query<Query$fundBetting_getProviders> {
  Query$fundBetting_getProviders$Widget({
    widgets.Key? key,
    required Options$Query$fundBetting_getProviders options,
    required graphql_flutter.QueryBuilder<Query$fundBetting_getProviders>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$fundBetting_getProviders$fundBetting_getProviders {
  Query$fundBetting_getProviders$fundBetting_getProviders({
    required this.logo,
    required this.name,
    this.$__typename = 'BettingProvidersResponse',
  });

  factory Query$fundBetting_getProviders$fundBetting_getProviders.fromJson(
      Map<String, dynamic> json) {
    final l$logo = json['logo'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$fundBetting_getProviders$fundBetting_getProviders(
      logo: (l$logo as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String logo;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logo = logo;
    _resultData['logo'] = l$logo;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logo = logo;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logo,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$fundBetting_getProviders$fundBetting_getProviders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$logo = logo;
    final lOther$logo = other.logo;
    if (l$logo != lOther$logo) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$fundBetting_getProviders$fundBetting_getProviders
    on Query$fundBetting_getProviders$fundBetting_getProviders {
  CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders<
          Query$fundBetting_getProviders$fundBetting_getProviders>
      get copyWith =>
          CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders<
    TRes> {
  factory CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders(
    Query$fundBetting_getProviders$fundBetting_getProviders instance,
    TRes Function(Query$fundBetting_getProviders$fundBetting_getProviders) then,
  ) = _CopyWithImpl$Query$fundBetting_getProviders$fundBetting_getProviders;

  factory CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders.stub(
          TRes res) =
      _CopyWithStubImpl$Query$fundBetting_getProviders$fundBetting_getProviders;

  TRes call({
    String? logo,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$fundBetting_getProviders$fundBetting_getProviders<
        TRes>
    implements
        CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders<TRes> {
  _CopyWithImpl$Query$fundBetting_getProviders$fundBetting_getProviders(
    this._instance,
    this._then,
  );

  final Query$fundBetting_getProviders$fundBetting_getProviders _instance;

  final TRes Function(Query$fundBetting_getProviders$fundBetting_getProviders)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logo = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fundBetting_getProviders$fundBetting_getProviders(
        logo: logo == _undefined || logo == null
            ? _instance.logo
            : (logo as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$fundBetting_getProviders$fundBetting_getProviders<
        TRes>
    implements
        CopyWith$Query$fundBetting_getProviders$fundBetting_getProviders<TRes> {
  _CopyWithStubImpl$Query$fundBetting_getProviders$fundBetting_getProviders(
      this._res);

  TRes _res;

  call({
    String? logo,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$fundBetting_makePayment {
  factory Variables$Mutation$fundBetting_makePayment(
          {required Input$BettingPaymentInput input}) =>
      Variables$Mutation$fundBetting_makePayment._({
        r'input': input,
      });

  Variables$Mutation$fundBetting_makePayment._(this._$data);

  factory Variables$Mutation$fundBetting_makePayment.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BettingPaymentInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$fundBetting_makePayment._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BettingPaymentInput get input =>
      (_$data['input'] as Input$BettingPaymentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$fundBetting_makePayment<
          Variables$Mutation$fundBetting_makePayment>
      get copyWith => CopyWith$Variables$Mutation$fundBetting_makePayment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$fundBetting_makePayment ||
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

abstract class CopyWith$Variables$Mutation$fundBetting_makePayment<TRes> {
  factory CopyWith$Variables$Mutation$fundBetting_makePayment(
    Variables$Mutation$fundBetting_makePayment instance,
    TRes Function(Variables$Mutation$fundBetting_makePayment) then,
  ) = _CopyWithImpl$Variables$Mutation$fundBetting_makePayment;

  factory CopyWith$Variables$Mutation$fundBetting_makePayment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$fundBetting_makePayment;

  TRes call({Input$BettingPaymentInput? input});
}

class _CopyWithImpl$Variables$Mutation$fundBetting_makePayment<TRes>
    implements CopyWith$Variables$Mutation$fundBetting_makePayment<TRes> {
  _CopyWithImpl$Variables$Mutation$fundBetting_makePayment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$fundBetting_makePayment _instance;

  final TRes Function(Variables$Mutation$fundBetting_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$fundBetting_makePayment._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BettingPaymentInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$fundBetting_makePayment<TRes>
    implements CopyWith$Variables$Mutation$fundBetting_makePayment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$fundBetting_makePayment(this._res);

  TRes _res;

  call({Input$BettingPaymentInput? input}) => _res;
}

class Mutation$fundBetting_makePayment {
  Mutation$fundBetting_makePayment({
    required this.fundBetting_makePayment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$fundBetting_makePayment.fromJson(Map<String, dynamic> json) {
    final l$fundBetting_makePayment = json['fundBetting_makePayment'];
    final l$$__typename = json['__typename'];
    return Mutation$fundBetting_makePayment(
      fundBetting_makePayment:
          Mutation$fundBetting_makePayment$fundBetting_makePayment.fromJson(
              (l$fundBetting_makePayment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$fundBetting_makePayment$fundBetting_makePayment
      fundBetting_makePayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fundBetting_makePayment = fundBetting_makePayment;
    _resultData['fundBetting_makePayment'] = l$fundBetting_makePayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fundBetting_makePayment = fundBetting_makePayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fundBetting_makePayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$fundBetting_makePayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fundBetting_makePayment = fundBetting_makePayment;
    final lOther$fundBetting_makePayment = other.fundBetting_makePayment;
    if (l$fundBetting_makePayment != lOther$fundBetting_makePayment) {
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

extension UtilityExtension$Mutation$fundBetting_makePayment
    on Mutation$fundBetting_makePayment {
  CopyWith$Mutation$fundBetting_makePayment<Mutation$fundBetting_makePayment>
      get copyWith => CopyWith$Mutation$fundBetting_makePayment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$fundBetting_makePayment<TRes> {
  factory CopyWith$Mutation$fundBetting_makePayment(
    Mutation$fundBetting_makePayment instance,
    TRes Function(Mutation$fundBetting_makePayment) then,
  ) = _CopyWithImpl$Mutation$fundBetting_makePayment;

  factory CopyWith$Mutation$fundBetting_makePayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$fundBetting_makePayment;

  TRes call({
    Mutation$fundBetting_makePayment$fundBetting_makePayment?
        fundBetting_makePayment,
    String? $__typename,
  });
  CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment<TRes>
      get fundBetting_makePayment;
}

class _CopyWithImpl$Mutation$fundBetting_makePayment<TRes>
    implements CopyWith$Mutation$fundBetting_makePayment<TRes> {
  _CopyWithImpl$Mutation$fundBetting_makePayment(
    this._instance,
    this._then,
  );

  final Mutation$fundBetting_makePayment _instance;

  final TRes Function(Mutation$fundBetting_makePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fundBetting_makePayment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$fundBetting_makePayment(
        fundBetting_makePayment: fundBetting_makePayment == _undefined ||
                fundBetting_makePayment == null
            ? _instance.fundBetting_makePayment
            : (fundBetting_makePayment
                as Mutation$fundBetting_makePayment$fundBetting_makePayment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment<TRes>
      get fundBetting_makePayment {
    final local$fundBetting_makePayment = _instance.fundBetting_makePayment;
    return CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment(
        local$fundBetting_makePayment, (e) => call(fundBetting_makePayment: e));
  }
}

class _CopyWithStubImpl$Mutation$fundBetting_makePayment<TRes>
    implements CopyWith$Mutation$fundBetting_makePayment<TRes> {
  _CopyWithStubImpl$Mutation$fundBetting_makePayment(this._res);

  TRes _res;

  call({
    Mutation$fundBetting_makePayment$fundBetting_makePayment?
        fundBetting_makePayment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment<TRes>
      get fundBetting_makePayment =>
          CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment
              .stub(_res);
}

const documentNodeMutationfundBetting_makePayment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'fundBetting_makePayment'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BettingPaymentInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fundBetting_makePayment'),
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
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_phone_number'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_email_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'order_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'request_id'),
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
Mutation$fundBetting_makePayment _parserFn$Mutation$fundBetting_makePayment(
        Map<String, dynamic> data) =>
    Mutation$fundBetting_makePayment.fromJson(data);
typedef OnMutationCompleted$Mutation$fundBetting_makePayment = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$fundBetting_makePayment?,
);

class Options$Mutation$fundBetting_makePayment
    extends graphql.MutationOptions<Mutation$fundBetting_makePayment> {
  Options$Mutation$fundBetting_makePayment({
    String? operationName,
    required Variables$Mutation$fundBetting_makePayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$fundBetting_makePayment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$fundBetting_makePayment? onCompleted,
    graphql.OnMutationUpdate<Mutation$fundBetting_makePayment>? update,
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
                        : _parserFn$Mutation$fundBetting_makePayment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationfundBetting_makePayment,
          parserFn: _parserFn$Mutation$fundBetting_makePayment,
        );

  final OnMutationCompleted$Mutation$fundBetting_makePayment?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$fundBetting_makePayment
    extends graphql.WatchQueryOptions<Mutation$fundBetting_makePayment> {
  WatchOptions$Mutation$fundBetting_makePayment({
    String? operationName,
    required Variables$Mutation$fundBetting_makePayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$fundBetting_makePayment? typedOptimisticResult,
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
          document: documentNodeMutationfundBetting_makePayment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$fundBetting_makePayment,
        );
}

extension ClientExtension$Mutation$fundBetting_makePayment
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$fundBetting_makePayment>>
      mutate$fundBetting_makePayment(
              Options$Mutation$fundBetting_makePayment options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$fundBetting_makePayment>
      watchMutation$fundBetting_makePayment(
              WatchOptions$Mutation$fundBetting_makePayment options) =>
          this.watchMutation(options);
}

class Mutation$fundBetting_makePayment$HookResult {
  Mutation$fundBetting_makePayment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$fundBetting_makePayment runMutation;

  final graphql.QueryResult<Mutation$fundBetting_makePayment> result;
}

Mutation$fundBetting_makePayment$HookResult useMutation$fundBetting_makePayment(
    [WidgetOptions$Mutation$fundBetting_makePayment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$fundBetting_makePayment());
  return Mutation$fundBetting_makePayment$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$fundBetting_makePayment>
    useWatchMutation$fundBetting_makePayment(
            WatchOptions$Mutation$fundBetting_makePayment options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$fundBetting_makePayment
    extends graphql.MutationOptions<Mutation$fundBetting_makePayment> {
  WidgetOptions$Mutation$fundBetting_makePayment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$fundBetting_makePayment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$fundBetting_makePayment? onCompleted,
    graphql.OnMutationUpdate<Mutation$fundBetting_makePayment>? update,
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
                        : _parserFn$Mutation$fundBetting_makePayment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationfundBetting_makePayment,
          parserFn: _parserFn$Mutation$fundBetting_makePayment,
        );

  final OnMutationCompleted$Mutation$fundBetting_makePayment?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$fundBetting_makePayment
    = graphql.MultiSourceResult<Mutation$fundBetting_makePayment> Function(
  Variables$Mutation$fundBetting_makePayment, {
  Object? optimisticResult,
  Mutation$fundBetting_makePayment? typedOptimisticResult,
});
typedef Builder$Mutation$fundBetting_makePayment = widgets.Widget Function(
  RunMutation$Mutation$fundBetting_makePayment,
  graphql.QueryResult<Mutation$fundBetting_makePayment>?,
);

class Mutation$fundBetting_makePayment$Widget
    extends graphql_flutter.Mutation<Mutation$fundBetting_makePayment> {
  Mutation$fundBetting_makePayment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$fundBetting_makePayment? options,
    required Builder$Mutation$fundBetting_makePayment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$fundBetting_makePayment(),
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

class Mutation$fundBetting_makePayment$fundBetting_makePayment {
  Mutation$fundBetting_makePayment$fundBetting_makePayment({
    required this.amount,
    required this.customer_name,
    required this.customer_username,
    required this.customer_phone_number,
    required this.customer_email_address,
    required this.order_id,
    required this.service_name,
    required this.request_id,
    this.$__typename = 'BettingPaymentResponse',
  });

  factory Mutation$fundBetting_makePayment$fundBetting_makePayment.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$customer_name = json['customer_name'];
    final l$customer_username = json['customer_username'];
    final l$customer_phone_number = json['customer_phone_number'];
    final l$customer_email_address = json['customer_email_address'];
    final l$order_id = json['order_id'];
    final l$service_name = json['service_name'];
    final l$request_id = json['request_id'];
    final l$$__typename = json['__typename'];
    return Mutation$fundBetting_makePayment$fundBetting_makePayment(
      amount: (l$amount as int),
      customer_name: (l$customer_name as String),
      customer_username: (l$customer_username as String),
      customer_phone_number: (l$customer_phone_number as String),
      customer_email_address: (l$customer_email_address as String),
      order_id: (l$order_id as int),
      service_name: (l$service_name as String),
      request_id: (l$request_id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int amount;

  final String customer_name;

  final String customer_username;

  final String customer_phone_number;

  final String customer_email_address;

  final int order_id;

  final String service_name;

  final String request_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$customer_name = customer_name;
    _resultData['customer_name'] = l$customer_name;
    final l$customer_username = customer_username;
    _resultData['customer_username'] = l$customer_username;
    final l$customer_phone_number = customer_phone_number;
    _resultData['customer_phone_number'] = l$customer_phone_number;
    final l$customer_email_address = customer_email_address;
    _resultData['customer_email_address'] = l$customer_email_address;
    final l$order_id = order_id;
    _resultData['order_id'] = l$order_id;
    final l$service_name = service_name;
    _resultData['service_name'] = l$service_name;
    final l$request_id = request_id;
    _resultData['request_id'] = l$request_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$customer_name = customer_name;
    final l$customer_username = customer_username;
    final l$customer_phone_number = customer_phone_number;
    final l$customer_email_address = customer_email_address;
    final l$order_id = order_id;
    final l$service_name = service_name;
    final l$request_id = request_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$customer_name,
      l$customer_username,
      l$customer_phone_number,
      l$customer_email_address,
      l$order_id,
      l$service_name,
      l$request_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$fundBetting_makePayment$fundBetting_makePayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_username = customer_username;
    final lOther$customer_username = other.customer_username;
    if (l$customer_username != lOther$customer_username) {
      return false;
    }
    final l$customer_phone_number = customer_phone_number;
    final lOther$customer_phone_number = other.customer_phone_number;
    if (l$customer_phone_number != lOther$customer_phone_number) {
      return false;
    }
    final l$customer_email_address = customer_email_address;
    final lOther$customer_email_address = other.customer_email_address;
    if (l$customer_email_address != lOther$customer_email_address) {
      return false;
    }
    final l$order_id = order_id;
    final lOther$order_id = other.order_id;
    if (l$order_id != lOther$order_id) {
      return false;
    }
    final l$service_name = service_name;
    final lOther$service_name = other.service_name;
    if (l$service_name != lOther$service_name) {
      return false;
    }
    final l$request_id = request_id;
    final lOther$request_id = other.request_id;
    if (l$request_id != lOther$request_id) {
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

extension UtilityExtension$Mutation$fundBetting_makePayment$fundBetting_makePayment
    on Mutation$fundBetting_makePayment$fundBetting_makePayment {
  CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment<
          Mutation$fundBetting_makePayment$fundBetting_makePayment>
      get copyWith =>
          CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment<
    TRes> {
  factory CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment(
    Mutation$fundBetting_makePayment$fundBetting_makePayment instance,
    TRes Function(Mutation$fundBetting_makePayment$fundBetting_makePayment)
        then,
  ) = _CopyWithImpl$Mutation$fundBetting_makePayment$fundBetting_makePayment;

  factory CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$fundBetting_makePayment$fundBetting_makePayment;

  TRes call({
    int? amount,
    String? customer_name,
    String? customer_username,
    String? customer_phone_number,
    String? customer_email_address,
    int? order_id,
    String? service_name,
    String? request_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$fundBetting_makePayment$fundBetting_makePayment<
        TRes>
    implements
        CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment<
            TRes> {
  _CopyWithImpl$Mutation$fundBetting_makePayment$fundBetting_makePayment(
    this._instance,
    this._then,
  );

  final Mutation$fundBetting_makePayment$fundBetting_makePayment _instance;

  final TRes Function(Mutation$fundBetting_makePayment$fundBetting_makePayment)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? customer_name = _undefined,
    Object? customer_username = _undefined,
    Object? customer_phone_number = _undefined,
    Object? customer_email_address = _undefined,
    Object? order_id = _undefined,
    Object? service_name = _undefined,
    Object? request_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$fundBetting_makePayment$fundBetting_makePayment(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as int),
        customer_name: customer_name == _undefined || customer_name == null
            ? _instance.customer_name
            : (customer_name as String),
        customer_username:
            customer_username == _undefined || customer_username == null
                ? _instance.customer_username
                : (customer_username as String),
        customer_phone_number:
            customer_phone_number == _undefined || customer_phone_number == null
                ? _instance.customer_phone_number
                : (customer_phone_number as String),
        customer_email_address: customer_email_address == _undefined ||
                customer_email_address == null
            ? _instance.customer_email_address
            : (customer_email_address as String),
        order_id: order_id == _undefined || order_id == null
            ? _instance.order_id
            : (order_id as int),
        service_name: service_name == _undefined || service_name == null
            ? _instance.service_name
            : (service_name as String),
        request_id: request_id == _undefined || request_id == null
            ? _instance.request_id
            : (request_id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$fundBetting_makePayment$fundBetting_makePayment<
        TRes>
    implements
        CopyWith$Mutation$fundBetting_makePayment$fundBetting_makePayment<
            TRes> {
  _CopyWithStubImpl$Mutation$fundBetting_makePayment$fundBetting_makePayment(
      this._res);

  TRes _res;

  call({
    int? amount,
    String? customer_name,
    String? customer_username,
    String? customer_phone_number,
    String? customer_email_address,
    int? order_id,
    String? service_name,
    String? request_id,
    String? $__typename,
  }) =>
      _res;
}
