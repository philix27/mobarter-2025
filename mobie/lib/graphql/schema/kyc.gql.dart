import '_docs.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$Kyc_addAddressInfo {
  factory Variables$Mutation$Kyc_addAddressInfo(
          {required Input$Kyc_AddAddressInfoInput input}) =>
      Variables$Mutation$Kyc_addAddressInfo._({
        r'input': input,
      });

  Variables$Mutation$Kyc_addAddressInfo._(this._$data);

  factory Variables$Mutation$Kyc_addAddressInfo.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Kyc_AddAddressInfoInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$Kyc_addAddressInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Kyc_AddAddressInfoInput get input =>
      (_$data['input'] as Input$Kyc_AddAddressInfoInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Kyc_addAddressInfo<
          Variables$Mutation$Kyc_addAddressInfo>
      get copyWith => CopyWith$Variables$Mutation$Kyc_addAddressInfo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Kyc_addAddressInfo ||
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

abstract class CopyWith$Variables$Mutation$Kyc_addAddressInfo<TRes> {
  factory CopyWith$Variables$Mutation$Kyc_addAddressInfo(
    Variables$Mutation$Kyc_addAddressInfo instance,
    TRes Function(Variables$Mutation$Kyc_addAddressInfo) then,
  ) = _CopyWithImpl$Variables$Mutation$Kyc_addAddressInfo;

  factory CopyWith$Variables$Mutation$Kyc_addAddressInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Kyc_addAddressInfo;

  TRes call({Input$Kyc_AddAddressInfoInput? input});
}

class _CopyWithImpl$Variables$Mutation$Kyc_addAddressInfo<TRes>
    implements CopyWith$Variables$Mutation$Kyc_addAddressInfo<TRes> {
  _CopyWithImpl$Variables$Mutation$Kyc_addAddressInfo(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Kyc_addAddressInfo _instance;

  final TRes Function(Variables$Mutation$Kyc_addAddressInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$Kyc_addAddressInfo._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Kyc_AddAddressInfoInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Kyc_addAddressInfo<TRes>
    implements CopyWith$Variables$Mutation$Kyc_addAddressInfo<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Kyc_addAddressInfo(this._res);

  TRes _res;

  call({Input$Kyc_AddAddressInfoInput? input}) => _res;
}

class Mutation$Kyc_addAddressInfo {
  Mutation$Kyc_addAddressInfo({
    required this.kyc_addAddressInfo,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Kyc_addAddressInfo.fromJson(Map<String, dynamic> json) {
    final l$kyc_addAddressInfo = json['kyc_addAddressInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$Kyc_addAddressInfo(
      kyc_addAddressInfo:
          Mutation$Kyc_addAddressInfo$kyc_addAddressInfo.fromJson(
              (l$kyc_addAddressInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Kyc_addAddressInfo$kyc_addAddressInfo kyc_addAddressInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_addAddressInfo = kyc_addAddressInfo;
    _resultData['kyc_addAddressInfo'] = l$kyc_addAddressInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_addAddressInfo = kyc_addAddressInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_addAddressInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Kyc_addAddressInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_addAddressInfo = kyc_addAddressInfo;
    final lOther$kyc_addAddressInfo = other.kyc_addAddressInfo;
    if (l$kyc_addAddressInfo != lOther$kyc_addAddressInfo) {
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

extension UtilityExtension$Mutation$Kyc_addAddressInfo
    on Mutation$Kyc_addAddressInfo {
  CopyWith$Mutation$Kyc_addAddressInfo<Mutation$Kyc_addAddressInfo>
      get copyWith => CopyWith$Mutation$Kyc_addAddressInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Kyc_addAddressInfo<TRes> {
  factory CopyWith$Mutation$Kyc_addAddressInfo(
    Mutation$Kyc_addAddressInfo instance,
    TRes Function(Mutation$Kyc_addAddressInfo) then,
  ) = _CopyWithImpl$Mutation$Kyc_addAddressInfo;

  factory CopyWith$Mutation$Kyc_addAddressInfo.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Kyc_addAddressInfo;

  TRes call({
    Mutation$Kyc_addAddressInfo$kyc_addAddressInfo? kyc_addAddressInfo,
    String? $__typename,
  });
  CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes>
      get kyc_addAddressInfo;
}

class _CopyWithImpl$Mutation$Kyc_addAddressInfo<TRes>
    implements CopyWith$Mutation$Kyc_addAddressInfo<TRes> {
  _CopyWithImpl$Mutation$Kyc_addAddressInfo(
    this._instance,
    this._then,
  );

  final Mutation$Kyc_addAddressInfo _instance;

  final TRes Function(Mutation$Kyc_addAddressInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_addAddressInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Kyc_addAddressInfo(
        kyc_addAddressInfo:
            kyc_addAddressInfo == _undefined || kyc_addAddressInfo == null
                ? _instance.kyc_addAddressInfo
                : (kyc_addAddressInfo
                    as Mutation$Kyc_addAddressInfo$kyc_addAddressInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes>
      get kyc_addAddressInfo {
    final local$kyc_addAddressInfo = _instance.kyc_addAddressInfo;
    return CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo(
        local$kyc_addAddressInfo, (e) => call(kyc_addAddressInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$Kyc_addAddressInfo<TRes>
    implements CopyWith$Mutation$Kyc_addAddressInfo<TRes> {
  _CopyWithStubImpl$Mutation$Kyc_addAddressInfo(this._res);

  TRes _res;

  call({
    Mutation$Kyc_addAddressInfo$kyc_addAddressInfo? kyc_addAddressInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes>
      get kyc_addAddressInfo =>
          CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo.stub(_res);
}

const documentNodeMutationKyc_addAddressInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Kyc_addAddressInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Kyc_AddAddressInfoInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_addAddressInfo'),
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
Mutation$Kyc_addAddressInfo _parserFn$Mutation$Kyc_addAddressInfo(
        Map<String, dynamic> data) =>
    Mutation$Kyc_addAddressInfo.fromJson(data);
typedef OnMutationCompleted$Mutation$Kyc_addAddressInfo = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$Kyc_addAddressInfo?,
);

class Options$Mutation$Kyc_addAddressInfo
    extends graphql.MutationOptions<Mutation$Kyc_addAddressInfo> {
  Options$Mutation$Kyc_addAddressInfo({
    String? operationName,
    required Variables$Mutation$Kyc_addAddressInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Kyc_addAddressInfo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Kyc_addAddressInfo? onCompleted,
    graphql.OnMutationUpdate<Mutation$Kyc_addAddressInfo>? update,
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
                        : _parserFn$Mutation$Kyc_addAddressInfo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationKyc_addAddressInfo,
          parserFn: _parserFn$Mutation$Kyc_addAddressInfo,
        );

  final OnMutationCompleted$Mutation$Kyc_addAddressInfo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Kyc_addAddressInfo
    extends graphql.WatchQueryOptions<Mutation$Kyc_addAddressInfo> {
  WatchOptions$Mutation$Kyc_addAddressInfo({
    String? operationName,
    required Variables$Mutation$Kyc_addAddressInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Kyc_addAddressInfo? typedOptimisticResult,
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
          document: documentNodeMutationKyc_addAddressInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Kyc_addAddressInfo,
        );
}

extension ClientExtension$Mutation$Kyc_addAddressInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Kyc_addAddressInfo>>
      mutate$Kyc_addAddressInfo(
              Options$Mutation$Kyc_addAddressInfo options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$Kyc_addAddressInfo>
      watchMutation$Kyc_addAddressInfo(
              WatchOptions$Mutation$Kyc_addAddressInfo options) =>
          this.watchMutation(options);
}

class Mutation$Kyc_addAddressInfo$HookResult {
  Mutation$Kyc_addAddressInfo$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Kyc_addAddressInfo runMutation;

  final graphql.QueryResult<Mutation$Kyc_addAddressInfo> result;
}

Mutation$Kyc_addAddressInfo$HookResult useMutation$Kyc_addAddressInfo(
    [WidgetOptions$Mutation$Kyc_addAddressInfo? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Kyc_addAddressInfo());
  return Mutation$Kyc_addAddressInfo$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Kyc_addAddressInfo>
    useWatchMutation$Kyc_addAddressInfo(
            WatchOptions$Mutation$Kyc_addAddressInfo options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Kyc_addAddressInfo
    extends graphql.MutationOptions<Mutation$Kyc_addAddressInfo> {
  WidgetOptions$Mutation$Kyc_addAddressInfo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Kyc_addAddressInfo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Kyc_addAddressInfo? onCompleted,
    graphql.OnMutationUpdate<Mutation$Kyc_addAddressInfo>? update,
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
                        : _parserFn$Mutation$Kyc_addAddressInfo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationKyc_addAddressInfo,
          parserFn: _parserFn$Mutation$Kyc_addAddressInfo,
        );

  final OnMutationCompleted$Mutation$Kyc_addAddressInfo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Kyc_addAddressInfo
    = graphql.MultiSourceResult<Mutation$Kyc_addAddressInfo> Function(
  Variables$Mutation$Kyc_addAddressInfo, {
  Object? optimisticResult,
  Mutation$Kyc_addAddressInfo? typedOptimisticResult,
});
typedef Builder$Mutation$Kyc_addAddressInfo = widgets.Widget Function(
  RunMutation$Mutation$Kyc_addAddressInfo,
  graphql.QueryResult<Mutation$Kyc_addAddressInfo>?,
);

class Mutation$Kyc_addAddressInfo$Widget
    extends graphql_flutter.Mutation<Mutation$Kyc_addAddressInfo> {
  Mutation$Kyc_addAddressInfo$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Kyc_addAddressInfo? options,
    required Builder$Mutation$Kyc_addAddressInfo builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Kyc_addAddressInfo(),
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

class Mutation$Kyc_addAddressInfo$kyc_addAddressInfo {
  Mutation$Kyc_addAddressInfo$kyc_addAddressInfo({
    required this.message,
    this.$__typename = 'Kyc_Response',
  });

  factory Mutation$Kyc_addAddressInfo$kyc_addAddressInfo.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Kyc_addAddressInfo$kyc_addAddressInfo(
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
    if (other is! Mutation$Kyc_addAddressInfo$kyc_addAddressInfo ||
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

extension UtilityExtension$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo
    on Mutation$Kyc_addAddressInfo$kyc_addAddressInfo {
  CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<
          Mutation$Kyc_addAddressInfo$kyc_addAddressInfo>
      get copyWith => CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes> {
  factory CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo(
    Mutation$Kyc_addAddressInfo$kyc_addAddressInfo instance,
    TRes Function(Mutation$Kyc_addAddressInfo$kyc_addAddressInfo) then,
  ) = _CopyWithImpl$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo;

  factory CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes>
    implements CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes> {
  _CopyWithImpl$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo(
    this._instance,
    this._then,
  );

  final Mutation$Kyc_addAddressInfo$kyc_addAddressInfo _instance;

  final TRes Function(Mutation$Kyc_addAddressInfo$kyc_addAddressInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Kyc_addAddressInfo$kyc_addAddressInfo(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes>
    implements CopyWith$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo<TRes> {
  _CopyWithStubImpl$Mutation$Kyc_addAddressInfo$kyc_addAddressInfo(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$kyc_addAddressProof {
  factory Variables$Mutation$kyc_addAddressProof(
          {required Input$Kyc_AddAddressProofInput input}) =>
      Variables$Mutation$kyc_addAddressProof._({
        r'input': input,
      });

  Variables$Mutation$kyc_addAddressProof._(this._$data);

  factory Variables$Mutation$kyc_addAddressProof.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Kyc_AddAddressProofInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$kyc_addAddressProof._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Kyc_AddAddressProofInput get input =>
      (_$data['input'] as Input$Kyc_AddAddressProofInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$kyc_addAddressProof<
          Variables$Mutation$kyc_addAddressProof>
      get copyWith => CopyWith$Variables$Mutation$kyc_addAddressProof(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$kyc_addAddressProof ||
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

abstract class CopyWith$Variables$Mutation$kyc_addAddressProof<TRes> {
  factory CopyWith$Variables$Mutation$kyc_addAddressProof(
    Variables$Mutation$kyc_addAddressProof instance,
    TRes Function(Variables$Mutation$kyc_addAddressProof) then,
  ) = _CopyWithImpl$Variables$Mutation$kyc_addAddressProof;

  factory CopyWith$Variables$Mutation$kyc_addAddressProof.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$kyc_addAddressProof;

  TRes call({Input$Kyc_AddAddressProofInput? input});
}

class _CopyWithImpl$Variables$Mutation$kyc_addAddressProof<TRes>
    implements CopyWith$Variables$Mutation$kyc_addAddressProof<TRes> {
  _CopyWithImpl$Variables$Mutation$kyc_addAddressProof(
    this._instance,
    this._then,
  );

  final Variables$Mutation$kyc_addAddressProof _instance;

  final TRes Function(Variables$Mutation$kyc_addAddressProof) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$kyc_addAddressProof._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Kyc_AddAddressProofInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$kyc_addAddressProof<TRes>
    implements CopyWith$Variables$Mutation$kyc_addAddressProof<TRes> {
  _CopyWithStubImpl$Variables$Mutation$kyc_addAddressProof(this._res);

  TRes _res;

  call({Input$Kyc_AddAddressProofInput? input}) => _res;
}

class Mutation$kyc_addAddressProof {
  Mutation$kyc_addAddressProof({
    required this.kyc_addAddressProof,
    this.$__typename = 'Mutation',
  });

  factory Mutation$kyc_addAddressProof.fromJson(Map<String, dynamic> json) {
    final l$kyc_addAddressProof = json['kyc_addAddressProof'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_addAddressProof(
      kyc_addAddressProof:
          Mutation$kyc_addAddressProof$kyc_addAddressProof.fromJson(
              (l$kyc_addAddressProof as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$kyc_addAddressProof$kyc_addAddressProof kyc_addAddressProof;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_addAddressProof = kyc_addAddressProof;
    _resultData['kyc_addAddressProof'] = l$kyc_addAddressProof.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_addAddressProof = kyc_addAddressProof;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_addAddressProof,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$kyc_addAddressProof ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_addAddressProof = kyc_addAddressProof;
    final lOther$kyc_addAddressProof = other.kyc_addAddressProof;
    if (l$kyc_addAddressProof != lOther$kyc_addAddressProof) {
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

extension UtilityExtension$Mutation$kyc_addAddressProof
    on Mutation$kyc_addAddressProof {
  CopyWith$Mutation$kyc_addAddressProof<Mutation$kyc_addAddressProof>
      get copyWith => CopyWith$Mutation$kyc_addAddressProof(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_addAddressProof<TRes> {
  factory CopyWith$Mutation$kyc_addAddressProof(
    Mutation$kyc_addAddressProof instance,
    TRes Function(Mutation$kyc_addAddressProof) then,
  ) = _CopyWithImpl$Mutation$kyc_addAddressProof;

  factory CopyWith$Mutation$kyc_addAddressProof.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_addAddressProof;

  TRes call({
    Mutation$kyc_addAddressProof$kyc_addAddressProof? kyc_addAddressProof,
    String? $__typename,
  });
  CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes>
      get kyc_addAddressProof;
}

class _CopyWithImpl$Mutation$kyc_addAddressProof<TRes>
    implements CopyWith$Mutation$kyc_addAddressProof<TRes> {
  _CopyWithImpl$Mutation$kyc_addAddressProof(
    this._instance,
    this._then,
  );

  final Mutation$kyc_addAddressProof _instance;

  final TRes Function(Mutation$kyc_addAddressProof) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_addAddressProof = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_addAddressProof(
        kyc_addAddressProof:
            kyc_addAddressProof == _undefined || kyc_addAddressProof == null
                ? _instance.kyc_addAddressProof
                : (kyc_addAddressProof
                    as Mutation$kyc_addAddressProof$kyc_addAddressProof),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes>
      get kyc_addAddressProof {
    final local$kyc_addAddressProof = _instance.kyc_addAddressProof;
    return CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof(
        local$kyc_addAddressProof, (e) => call(kyc_addAddressProof: e));
  }
}

class _CopyWithStubImpl$Mutation$kyc_addAddressProof<TRes>
    implements CopyWith$Mutation$kyc_addAddressProof<TRes> {
  _CopyWithStubImpl$Mutation$kyc_addAddressProof(this._res);

  TRes _res;

  call({
    Mutation$kyc_addAddressProof$kyc_addAddressProof? kyc_addAddressProof,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes>
      get kyc_addAddressProof =>
          CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof.stub(_res);
}

const documentNodeMutationkyc_addAddressProof = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'kyc_addAddressProof'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Kyc_AddAddressProofInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_addAddressProof'),
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
Mutation$kyc_addAddressProof _parserFn$Mutation$kyc_addAddressProof(
        Map<String, dynamic> data) =>
    Mutation$kyc_addAddressProof.fromJson(data);
typedef OnMutationCompleted$Mutation$kyc_addAddressProof = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$kyc_addAddressProof?,
);

class Options$Mutation$kyc_addAddressProof
    extends graphql.MutationOptions<Mutation$kyc_addAddressProof> {
  Options$Mutation$kyc_addAddressProof({
    String? operationName,
    required Variables$Mutation$kyc_addAddressProof variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addAddressProof? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_addAddressProof? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_addAddressProof>? update,
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
                        : _parserFn$Mutation$kyc_addAddressProof(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_addAddressProof,
          parserFn: _parserFn$Mutation$kyc_addAddressProof,
        );

  final OnMutationCompleted$Mutation$kyc_addAddressProof? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$kyc_addAddressProof
    extends graphql.WatchQueryOptions<Mutation$kyc_addAddressProof> {
  WatchOptions$Mutation$kyc_addAddressProof({
    String? operationName,
    required Variables$Mutation$kyc_addAddressProof variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addAddressProof? typedOptimisticResult,
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
          document: documentNodeMutationkyc_addAddressProof,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$kyc_addAddressProof,
        );
}

extension ClientExtension$Mutation$kyc_addAddressProof
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$kyc_addAddressProof>>
      mutate$kyc_addAddressProof(
              Options$Mutation$kyc_addAddressProof options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$kyc_addAddressProof>
      watchMutation$kyc_addAddressProof(
              WatchOptions$Mutation$kyc_addAddressProof options) =>
          this.watchMutation(options);
}

class Mutation$kyc_addAddressProof$HookResult {
  Mutation$kyc_addAddressProof$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$kyc_addAddressProof runMutation;

  final graphql.QueryResult<Mutation$kyc_addAddressProof> result;
}

Mutation$kyc_addAddressProof$HookResult useMutation$kyc_addAddressProof(
    [WidgetOptions$Mutation$kyc_addAddressProof? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$kyc_addAddressProof());
  return Mutation$kyc_addAddressProof$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$kyc_addAddressProof>
    useWatchMutation$kyc_addAddressProof(
            WatchOptions$Mutation$kyc_addAddressProof options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$kyc_addAddressProof
    extends graphql.MutationOptions<Mutation$kyc_addAddressProof> {
  WidgetOptions$Mutation$kyc_addAddressProof({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addAddressProof? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_addAddressProof? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_addAddressProof>? update,
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
                        : _parserFn$Mutation$kyc_addAddressProof(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_addAddressProof,
          parserFn: _parserFn$Mutation$kyc_addAddressProof,
        );

  final OnMutationCompleted$Mutation$kyc_addAddressProof? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$kyc_addAddressProof
    = graphql.MultiSourceResult<Mutation$kyc_addAddressProof> Function(
  Variables$Mutation$kyc_addAddressProof, {
  Object? optimisticResult,
  Mutation$kyc_addAddressProof? typedOptimisticResult,
});
typedef Builder$Mutation$kyc_addAddressProof = widgets.Widget Function(
  RunMutation$Mutation$kyc_addAddressProof,
  graphql.QueryResult<Mutation$kyc_addAddressProof>?,
);

class Mutation$kyc_addAddressProof$Widget
    extends graphql_flutter.Mutation<Mutation$kyc_addAddressProof> {
  Mutation$kyc_addAddressProof$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$kyc_addAddressProof? options,
    required Builder$Mutation$kyc_addAddressProof builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$kyc_addAddressProof(),
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

class Mutation$kyc_addAddressProof$kyc_addAddressProof {
  Mutation$kyc_addAddressProof$kyc_addAddressProof({
    required this.message,
    this.$__typename = 'Kyc_Response',
  });

  factory Mutation$kyc_addAddressProof$kyc_addAddressProof.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_addAddressProof$kyc_addAddressProof(
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
    if (other is! Mutation$kyc_addAddressProof$kyc_addAddressProof ||
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

extension UtilityExtension$Mutation$kyc_addAddressProof$kyc_addAddressProof
    on Mutation$kyc_addAddressProof$kyc_addAddressProof {
  CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof<
          Mutation$kyc_addAddressProof$kyc_addAddressProof>
      get copyWith => CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes> {
  factory CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof(
    Mutation$kyc_addAddressProof$kyc_addAddressProof instance,
    TRes Function(Mutation$kyc_addAddressProof$kyc_addAddressProof) then,
  ) = _CopyWithImpl$Mutation$kyc_addAddressProof$kyc_addAddressProof;

  factory CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$kyc_addAddressProof$kyc_addAddressProof;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes>
    implements CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes> {
  _CopyWithImpl$Mutation$kyc_addAddressProof$kyc_addAddressProof(
    this._instance,
    this._then,
  );

  final Mutation$kyc_addAddressProof$kyc_addAddressProof _instance;

  final TRes Function(Mutation$kyc_addAddressProof$kyc_addAddressProof) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_addAddressProof$kyc_addAddressProof(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes>
    implements CopyWith$Mutation$kyc_addAddressProof$kyc_addAddressProof<TRes> {
  _CopyWithStubImpl$Mutation$kyc_addAddressProof$kyc_addAddressProof(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$kyc_addBvnNin {
  factory Variables$Mutation$kyc_addBvnNin(
          {required Input$Kyc_AddBvnNinInput input}) =>
      Variables$Mutation$kyc_addBvnNin._({
        r'input': input,
      });

  Variables$Mutation$kyc_addBvnNin._(this._$data);

  factory Variables$Mutation$kyc_addBvnNin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Kyc_AddBvnNinInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$kyc_addBvnNin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Kyc_AddBvnNinInput get input =>
      (_$data['input'] as Input$Kyc_AddBvnNinInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$kyc_addBvnNin<Variables$Mutation$kyc_addBvnNin>
      get copyWith => CopyWith$Variables$Mutation$kyc_addBvnNin(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$kyc_addBvnNin ||
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

abstract class CopyWith$Variables$Mutation$kyc_addBvnNin<TRes> {
  factory CopyWith$Variables$Mutation$kyc_addBvnNin(
    Variables$Mutation$kyc_addBvnNin instance,
    TRes Function(Variables$Mutation$kyc_addBvnNin) then,
  ) = _CopyWithImpl$Variables$Mutation$kyc_addBvnNin;

  factory CopyWith$Variables$Mutation$kyc_addBvnNin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$kyc_addBvnNin;

  TRes call({Input$Kyc_AddBvnNinInput? input});
}

class _CopyWithImpl$Variables$Mutation$kyc_addBvnNin<TRes>
    implements CopyWith$Variables$Mutation$kyc_addBvnNin<TRes> {
  _CopyWithImpl$Variables$Mutation$kyc_addBvnNin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$kyc_addBvnNin _instance;

  final TRes Function(Variables$Mutation$kyc_addBvnNin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$kyc_addBvnNin._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Kyc_AddBvnNinInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$kyc_addBvnNin<TRes>
    implements CopyWith$Variables$Mutation$kyc_addBvnNin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$kyc_addBvnNin(this._res);

  TRes _res;

  call({Input$Kyc_AddBvnNinInput? input}) => _res;
}

class Mutation$kyc_addBvnNin {
  Mutation$kyc_addBvnNin({
    required this.kyc_addBvnNin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$kyc_addBvnNin.fromJson(Map<String, dynamic> json) {
    final l$kyc_addBvnNin = json['kyc_addBvnNin'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_addBvnNin(
      kyc_addBvnNin: Mutation$kyc_addBvnNin$kyc_addBvnNin.fromJson(
          (l$kyc_addBvnNin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$kyc_addBvnNin$kyc_addBvnNin kyc_addBvnNin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_addBvnNin = kyc_addBvnNin;
    _resultData['kyc_addBvnNin'] = l$kyc_addBvnNin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_addBvnNin = kyc_addBvnNin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_addBvnNin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$kyc_addBvnNin || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_addBvnNin = kyc_addBvnNin;
    final lOther$kyc_addBvnNin = other.kyc_addBvnNin;
    if (l$kyc_addBvnNin != lOther$kyc_addBvnNin) {
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

extension UtilityExtension$Mutation$kyc_addBvnNin on Mutation$kyc_addBvnNin {
  CopyWith$Mutation$kyc_addBvnNin<Mutation$kyc_addBvnNin> get copyWith =>
      CopyWith$Mutation$kyc_addBvnNin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$kyc_addBvnNin<TRes> {
  factory CopyWith$Mutation$kyc_addBvnNin(
    Mutation$kyc_addBvnNin instance,
    TRes Function(Mutation$kyc_addBvnNin) then,
  ) = _CopyWithImpl$Mutation$kyc_addBvnNin;

  factory CopyWith$Mutation$kyc_addBvnNin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_addBvnNin;

  TRes call({
    Mutation$kyc_addBvnNin$kyc_addBvnNin? kyc_addBvnNin,
    String? $__typename,
  });
  CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes> get kyc_addBvnNin;
}

class _CopyWithImpl$Mutation$kyc_addBvnNin<TRes>
    implements CopyWith$Mutation$kyc_addBvnNin<TRes> {
  _CopyWithImpl$Mutation$kyc_addBvnNin(
    this._instance,
    this._then,
  );

  final Mutation$kyc_addBvnNin _instance;

  final TRes Function(Mutation$kyc_addBvnNin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_addBvnNin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_addBvnNin(
        kyc_addBvnNin: kyc_addBvnNin == _undefined || kyc_addBvnNin == null
            ? _instance.kyc_addBvnNin
            : (kyc_addBvnNin as Mutation$kyc_addBvnNin$kyc_addBvnNin),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes> get kyc_addBvnNin {
    final local$kyc_addBvnNin = _instance.kyc_addBvnNin;
    return CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin(
        local$kyc_addBvnNin, (e) => call(kyc_addBvnNin: e));
  }
}

class _CopyWithStubImpl$Mutation$kyc_addBvnNin<TRes>
    implements CopyWith$Mutation$kyc_addBvnNin<TRes> {
  _CopyWithStubImpl$Mutation$kyc_addBvnNin(this._res);

  TRes _res;

  call({
    Mutation$kyc_addBvnNin$kyc_addBvnNin? kyc_addBvnNin,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes> get kyc_addBvnNin =>
      CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin.stub(_res);
}

const documentNodeMutationkyc_addBvnNin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'kyc_addBvnNin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Kyc_AddBvnNinInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_addBvnNin'),
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
Mutation$kyc_addBvnNin _parserFn$Mutation$kyc_addBvnNin(
        Map<String, dynamic> data) =>
    Mutation$kyc_addBvnNin.fromJson(data);
typedef OnMutationCompleted$Mutation$kyc_addBvnNin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$kyc_addBvnNin?,
);

class Options$Mutation$kyc_addBvnNin
    extends graphql.MutationOptions<Mutation$kyc_addBvnNin> {
  Options$Mutation$kyc_addBvnNin({
    String? operationName,
    required Variables$Mutation$kyc_addBvnNin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addBvnNin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_addBvnNin? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_addBvnNin>? update,
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
                        : _parserFn$Mutation$kyc_addBvnNin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_addBvnNin,
          parserFn: _parserFn$Mutation$kyc_addBvnNin,
        );

  final OnMutationCompleted$Mutation$kyc_addBvnNin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$kyc_addBvnNin
    extends graphql.WatchQueryOptions<Mutation$kyc_addBvnNin> {
  WatchOptions$Mutation$kyc_addBvnNin({
    String? operationName,
    required Variables$Mutation$kyc_addBvnNin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addBvnNin? typedOptimisticResult,
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
          document: documentNodeMutationkyc_addBvnNin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$kyc_addBvnNin,
        );
}

extension ClientExtension$Mutation$kyc_addBvnNin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$kyc_addBvnNin>> mutate$kyc_addBvnNin(
          Options$Mutation$kyc_addBvnNin options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$kyc_addBvnNin> watchMutation$kyc_addBvnNin(
          WatchOptions$Mutation$kyc_addBvnNin options) =>
      this.watchMutation(options);
}

class Mutation$kyc_addBvnNin$HookResult {
  Mutation$kyc_addBvnNin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$kyc_addBvnNin runMutation;

  final graphql.QueryResult<Mutation$kyc_addBvnNin> result;
}

Mutation$kyc_addBvnNin$HookResult useMutation$kyc_addBvnNin(
    [WidgetOptions$Mutation$kyc_addBvnNin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$kyc_addBvnNin());
  return Mutation$kyc_addBvnNin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$kyc_addBvnNin> useWatchMutation$kyc_addBvnNin(
        WatchOptions$Mutation$kyc_addBvnNin options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$kyc_addBvnNin
    extends graphql.MutationOptions<Mutation$kyc_addBvnNin> {
  WidgetOptions$Mutation$kyc_addBvnNin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addBvnNin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_addBvnNin? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_addBvnNin>? update,
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
                        : _parserFn$Mutation$kyc_addBvnNin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_addBvnNin,
          parserFn: _parserFn$Mutation$kyc_addBvnNin,
        );

  final OnMutationCompleted$Mutation$kyc_addBvnNin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$kyc_addBvnNin
    = graphql.MultiSourceResult<Mutation$kyc_addBvnNin> Function(
  Variables$Mutation$kyc_addBvnNin, {
  Object? optimisticResult,
  Mutation$kyc_addBvnNin? typedOptimisticResult,
});
typedef Builder$Mutation$kyc_addBvnNin = widgets.Widget Function(
  RunMutation$Mutation$kyc_addBvnNin,
  graphql.QueryResult<Mutation$kyc_addBvnNin>?,
);

class Mutation$kyc_addBvnNin$Widget
    extends graphql_flutter.Mutation<Mutation$kyc_addBvnNin> {
  Mutation$kyc_addBvnNin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$kyc_addBvnNin? options,
    required Builder$Mutation$kyc_addBvnNin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$kyc_addBvnNin(),
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

class Mutation$kyc_addBvnNin$kyc_addBvnNin {
  Mutation$kyc_addBvnNin$kyc_addBvnNin({
    required this.message,
    this.$__typename = 'Kyc_AddBvnResponse',
  });

  factory Mutation$kyc_addBvnNin$kyc_addBvnNin.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_addBvnNin$kyc_addBvnNin(
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
    if (other is! Mutation$kyc_addBvnNin$kyc_addBvnNin ||
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

extension UtilityExtension$Mutation$kyc_addBvnNin$kyc_addBvnNin
    on Mutation$kyc_addBvnNin$kyc_addBvnNin {
  CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin<
          Mutation$kyc_addBvnNin$kyc_addBvnNin>
      get copyWith => CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes> {
  factory CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin(
    Mutation$kyc_addBvnNin$kyc_addBvnNin instance,
    TRes Function(Mutation$kyc_addBvnNin$kyc_addBvnNin) then,
  ) = _CopyWithImpl$Mutation$kyc_addBvnNin$kyc_addBvnNin;

  factory CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_addBvnNin$kyc_addBvnNin;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes>
    implements CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes> {
  _CopyWithImpl$Mutation$kyc_addBvnNin$kyc_addBvnNin(
    this._instance,
    this._then,
  );

  final Mutation$kyc_addBvnNin$kyc_addBvnNin _instance;

  final TRes Function(Mutation$kyc_addBvnNin$kyc_addBvnNin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_addBvnNin$kyc_addBvnNin(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes>
    implements CopyWith$Mutation$kyc_addBvnNin$kyc_addBvnNin<TRes> {
  _CopyWithStubImpl$Mutation$kyc_addBvnNin$kyc_addBvnNin(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$kyc_addNames {
  factory Variables$Mutation$kyc_addNames(
          {required Input$Kyc_AddNamesInput input}) =>
      Variables$Mutation$kyc_addNames._({
        r'input': input,
      });

  Variables$Mutation$kyc_addNames._(this._$data);

  factory Variables$Mutation$kyc_addNames.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Kyc_AddNamesInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$kyc_addNames._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Kyc_AddNamesInput get input =>
      (_$data['input'] as Input$Kyc_AddNamesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$kyc_addNames<Variables$Mutation$kyc_addNames>
      get copyWith => CopyWith$Variables$Mutation$kyc_addNames(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$kyc_addNames ||
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

abstract class CopyWith$Variables$Mutation$kyc_addNames<TRes> {
  factory CopyWith$Variables$Mutation$kyc_addNames(
    Variables$Mutation$kyc_addNames instance,
    TRes Function(Variables$Mutation$kyc_addNames) then,
  ) = _CopyWithImpl$Variables$Mutation$kyc_addNames;

  factory CopyWith$Variables$Mutation$kyc_addNames.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$kyc_addNames;

  TRes call({Input$Kyc_AddNamesInput? input});
}

class _CopyWithImpl$Variables$Mutation$kyc_addNames<TRes>
    implements CopyWith$Variables$Mutation$kyc_addNames<TRes> {
  _CopyWithImpl$Variables$Mutation$kyc_addNames(
    this._instance,
    this._then,
  );

  final Variables$Mutation$kyc_addNames _instance;

  final TRes Function(Variables$Mutation$kyc_addNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$kyc_addNames._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Kyc_AddNamesInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$kyc_addNames<TRes>
    implements CopyWith$Variables$Mutation$kyc_addNames<TRes> {
  _CopyWithStubImpl$Variables$Mutation$kyc_addNames(this._res);

  TRes _res;

  call({Input$Kyc_AddNamesInput? input}) => _res;
}

class Mutation$kyc_addNames {
  Mutation$kyc_addNames({
    required this.kyc_addNames,
    this.$__typename = 'Mutation',
  });

  factory Mutation$kyc_addNames.fromJson(Map<String, dynamic> json) {
    final l$kyc_addNames = json['kyc_addNames'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_addNames(
      kyc_addNames: Mutation$kyc_addNames$kyc_addNames.fromJson(
          (l$kyc_addNames as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$kyc_addNames$kyc_addNames kyc_addNames;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_addNames = kyc_addNames;
    _resultData['kyc_addNames'] = l$kyc_addNames.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_addNames = kyc_addNames;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_addNames,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$kyc_addNames || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_addNames = kyc_addNames;
    final lOther$kyc_addNames = other.kyc_addNames;
    if (l$kyc_addNames != lOther$kyc_addNames) {
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

extension UtilityExtension$Mutation$kyc_addNames on Mutation$kyc_addNames {
  CopyWith$Mutation$kyc_addNames<Mutation$kyc_addNames> get copyWith =>
      CopyWith$Mutation$kyc_addNames(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$kyc_addNames<TRes> {
  factory CopyWith$Mutation$kyc_addNames(
    Mutation$kyc_addNames instance,
    TRes Function(Mutation$kyc_addNames) then,
  ) = _CopyWithImpl$Mutation$kyc_addNames;

  factory CopyWith$Mutation$kyc_addNames.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_addNames;

  TRes call({
    Mutation$kyc_addNames$kyc_addNames? kyc_addNames,
    String? $__typename,
  });
  CopyWith$Mutation$kyc_addNames$kyc_addNames<TRes> get kyc_addNames;
}

class _CopyWithImpl$Mutation$kyc_addNames<TRes>
    implements CopyWith$Mutation$kyc_addNames<TRes> {
  _CopyWithImpl$Mutation$kyc_addNames(
    this._instance,
    this._then,
  );

  final Mutation$kyc_addNames _instance;

  final TRes Function(Mutation$kyc_addNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_addNames = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_addNames(
        kyc_addNames: kyc_addNames == _undefined || kyc_addNames == null
            ? _instance.kyc_addNames
            : (kyc_addNames as Mutation$kyc_addNames$kyc_addNames),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$kyc_addNames$kyc_addNames<TRes> get kyc_addNames {
    final local$kyc_addNames = _instance.kyc_addNames;
    return CopyWith$Mutation$kyc_addNames$kyc_addNames(
        local$kyc_addNames, (e) => call(kyc_addNames: e));
  }
}

class _CopyWithStubImpl$Mutation$kyc_addNames<TRes>
    implements CopyWith$Mutation$kyc_addNames<TRes> {
  _CopyWithStubImpl$Mutation$kyc_addNames(this._res);

  TRes _res;

  call({
    Mutation$kyc_addNames$kyc_addNames? kyc_addNames,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$kyc_addNames$kyc_addNames<TRes> get kyc_addNames =>
      CopyWith$Mutation$kyc_addNames$kyc_addNames.stub(_res);
}

const documentNodeMutationkyc_addNames = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'kyc_addNames'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Kyc_AddNamesInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_addNames'),
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
Mutation$kyc_addNames _parserFn$Mutation$kyc_addNames(
        Map<String, dynamic> data) =>
    Mutation$kyc_addNames.fromJson(data);
typedef OnMutationCompleted$Mutation$kyc_addNames = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$kyc_addNames?,
);

class Options$Mutation$kyc_addNames
    extends graphql.MutationOptions<Mutation$kyc_addNames> {
  Options$Mutation$kyc_addNames({
    String? operationName,
    required Variables$Mutation$kyc_addNames variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addNames? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_addNames? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_addNames>? update,
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
                    data == null ? null : _parserFn$Mutation$kyc_addNames(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_addNames,
          parserFn: _parserFn$Mutation$kyc_addNames,
        );

  final OnMutationCompleted$Mutation$kyc_addNames? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$kyc_addNames
    extends graphql.WatchQueryOptions<Mutation$kyc_addNames> {
  WatchOptions$Mutation$kyc_addNames({
    String? operationName,
    required Variables$Mutation$kyc_addNames variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addNames? typedOptimisticResult,
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
          document: documentNodeMutationkyc_addNames,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$kyc_addNames,
        );
}

extension ClientExtension$Mutation$kyc_addNames on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$kyc_addNames>> mutate$kyc_addNames(
          Options$Mutation$kyc_addNames options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$kyc_addNames> watchMutation$kyc_addNames(
          WatchOptions$Mutation$kyc_addNames options) =>
      this.watchMutation(options);
}

class Mutation$kyc_addNames$HookResult {
  Mutation$kyc_addNames$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$kyc_addNames runMutation;

  final graphql.QueryResult<Mutation$kyc_addNames> result;
}

Mutation$kyc_addNames$HookResult useMutation$kyc_addNames(
    [WidgetOptions$Mutation$kyc_addNames? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$kyc_addNames());
  return Mutation$kyc_addNames$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$kyc_addNames> useWatchMutation$kyc_addNames(
        WatchOptions$Mutation$kyc_addNames options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$kyc_addNames
    extends graphql.MutationOptions<Mutation$kyc_addNames> {
  WidgetOptions$Mutation$kyc_addNames({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_addNames? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_addNames? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_addNames>? update,
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
                    data == null ? null : _parserFn$Mutation$kyc_addNames(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_addNames,
          parserFn: _parserFn$Mutation$kyc_addNames,
        );

  final OnMutationCompleted$Mutation$kyc_addNames? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$kyc_addNames
    = graphql.MultiSourceResult<Mutation$kyc_addNames> Function(
  Variables$Mutation$kyc_addNames, {
  Object? optimisticResult,
  Mutation$kyc_addNames? typedOptimisticResult,
});
typedef Builder$Mutation$kyc_addNames = widgets.Widget Function(
  RunMutation$Mutation$kyc_addNames,
  graphql.QueryResult<Mutation$kyc_addNames>?,
);

class Mutation$kyc_addNames$Widget
    extends graphql_flutter.Mutation<Mutation$kyc_addNames> {
  Mutation$kyc_addNames$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$kyc_addNames? options,
    required Builder$Mutation$kyc_addNames builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$kyc_addNames(),
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

class Mutation$kyc_addNames$kyc_addNames {
  Mutation$kyc_addNames$kyc_addNames({
    required this.message,
    this.$__typename = 'Kyc_Response',
  });

  factory Mutation$kyc_addNames$kyc_addNames.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_addNames$kyc_addNames(
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
    if (other is! Mutation$kyc_addNames$kyc_addNames ||
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

extension UtilityExtension$Mutation$kyc_addNames$kyc_addNames
    on Mutation$kyc_addNames$kyc_addNames {
  CopyWith$Mutation$kyc_addNames$kyc_addNames<
          Mutation$kyc_addNames$kyc_addNames>
      get copyWith => CopyWith$Mutation$kyc_addNames$kyc_addNames(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_addNames$kyc_addNames<TRes> {
  factory CopyWith$Mutation$kyc_addNames$kyc_addNames(
    Mutation$kyc_addNames$kyc_addNames instance,
    TRes Function(Mutation$kyc_addNames$kyc_addNames) then,
  ) = _CopyWithImpl$Mutation$kyc_addNames$kyc_addNames;

  factory CopyWith$Mutation$kyc_addNames$kyc_addNames.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_addNames$kyc_addNames;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$kyc_addNames$kyc_addNames<TRes>
    implements CopyWith$Mutation$kyc_addNames$kyc_addNames<TRes> {
  _CopyWithImpl$Mutation$kyc_addNames$kyc_addNames(
    this._instance,
    this._then,
  );

  final Mutation$kyc_addNames$kyc_addNames _instance;

  final TRes Function(Mutation$kyc_addNames$kyc_addNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_addNames$kyc_addNames(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$kyc_addNames$kyc_addNames<TRes>
    implements CopyWith$Mutation$kyc_addNames$kyc_addNames<TRes> {
  _CopyWithStubImpl$Mutation$kyc_addNames$kyc_addNames(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$kyc_createTransactionPin {
  factory Variables$Mutation$kyc_createTransactionPin(
          {required Input$Kyc_CreateTransactionPinInput input}) =>
      Variables$Mutation$kyc_createTransactionPin._({
        r'input': input,
      });

  Variables$Mutation$kyc_createTransactionPin._(this._$data);

  factory Variables$Mutation$kyc_createTransactionPin.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$Kyc_CreateTransactionPinInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$kyc_createTransactionPin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Kyc_CreateTransactionPinInput get input =>
      (_$data['input'] as Input$Kyc_CreateTransactionPinInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$kyc_createTransactionPin<
          Variables$Mutation$kyc_createTransactionPin>
      get copyWith => CopyWith$Variables$Mutation$kyc_createTransactionPin(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$kyc_createTransactionPin ||
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

abstract class CopyWith$Variables$Mutation$kyc_createTransactionPin<TRes> {
  factory CopyWith$Variables$Mutation$kyc_createTransactionPin(
    Variables$Mutation$kyc_createTransactionPin instance,
    TRes Function(Variables$Mutation$kyc_createTransactionPin) then,
  ) = _CopyWithImpl$Variables$Mutation$kyc_createTransactionPin;

  factory CopyWith$Variables$Mutation$kyc_createTransactionPin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$kyc_createTransactionPin;

  TRes call({Input$Kyc_CreateTransactionPinInput? input});
}

class _CopyWithImpl$Variables$Mutation$kyc_createTransactionPin<TRes>
    implements CopyWith$Variables$Mutation$kyc_createTransactionPin<TRes> {
  _CopyWithImpl$Variables$Mutation$kyc_createTransactionPin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$kyc_createTransactionPin _instance;

  final TRes Function(Variables$Mutation$kyc_createTransactionPin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$kyc_createTransactionPin._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Kyc_CreateTransactionPinInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$kyc_createTransactionPin<TRes>
    implements CopyWith$Variables$Mutation$kyc_createTransactionPin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$kyc_createTransactionPin(this._res);

  TRes _res;

  call({Input$Kyc_CreateTransactionPinInput? input}) => _res;
}

class Mutation$kyc_createTransactionPin {
  Mutation$kyc_createTransactionPin({
    required this.kyc_createTransactionPin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$kyc_createTransactionPin.fromJson(
      Map<String, dynamic> json) {
    final l$kyc_createTransactionPin = json['kyc_createTransactionPin'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_createTransactionPin(
      kyc_createTransactionPin:
          Mutation$kyc_createTransactionPin$kyc_createTransactionPin.fromJson(
              (l$kyc_createTransactionPin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$kyc_createTransactionPin$kyc_createTransactionPin
      kyc_createTransactionPin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_createTransactionPin = kyc_createTransactionPin;
    _resultData['kyc_createTransactionPin'] =
        l$kyc_createTransactionPin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_createTransactionPin = kyc_createTransactionPin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_createTransactionPin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$kyc_createTransactionPin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_createTransactionPin = kyc_createTransactionPin;
    final lOther$kyc_createTransactionPin = other.kyc_createTransactionPin;
    if (l$kyc_createTransactionPin != lOther$kyc_createTransactionPin) {
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

extension UtilityExtension$Mutation$kyc_createTransactionPin
    on Mutation$kyc_createTransactionPin {
  CopyWith$Mutation$kyc_createTransactionPin<Mutation$kyc_createTransactionPin>
      get copyWith => CopyWith$Mutation$kyc_createTransactionPin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_createTransactionPin<TRes> {
  factory CopyWith$Mutation$kyc_createTransactionPin(
    Mutation$kyc_createTransactionPin instance,
    TRes Function(Mutation$kyc_createTransactionPin) then,
  ) = _CopyWithImpl$Mutation$kyc_createTransactionPin;

  factory CopyWith$Mutation$kyc_createTransactionPin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_createTransactionPin;

  TRes call({
    Mutation$kyc_createTransactionPin$kyc_createTransactionPin?
        kyc_createTransactionPin,
    String? $__typename,
  });
  CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<TRes>
      get kyc_createTransactionPin;
}

class _CopyWithImpl$Mutation$kyc_createTransactionPin<TRes>
    implements CopyWith$Mutation$kyc_createTransactionPin<TRes> {
  _CopyWithImpl$Mutation$kyc_createTransactionPin(
    this._instance,
    this._then,
  );

  final Mutation$kyc_createTransactionPin _instance;

  final TRes Function(Mutation$kyc_createTransactionPin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_createTransactionPin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_createTransactionPin(
        kyc_createTransactionPin: kyc_createTransactionPin == _undefined ||
                kyc_createTransactionPin == null
            ? _instance.kyc_createTransactionPin
            : (kyc_createTransactionPin
                as Mutation$kyc_createTransactionPin$kyc_createTransactionPin),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<TRes>
      get kyc_createTransactionPin {
    final local$kyc_createTransactionPin = _instance.kyc_createTransactionPin;
    return CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin(
        local$kyc_createTransactionPin,
        (e) => call(kyc_createTransactionPin: e));
  }
}

class _CopyWithStubImpl$Mutation$kyc_createTransactionPin<TRes>
    implements CopyWith$Mutation$kyc_createTransactionPin<TRes> {
  _CopyWithStubImpl$Mutation$kyc_createTransactionPin(this._res);

  TRes _res;

  call({
    Mutation$kyc_createTransactionPin$kyc_createTransactionPin?
        kyc_createTransactionPin,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<TRes>
      get kyc_createTransactionPin =>
          CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin
              .stub(_res);
}

const documentNodeMutationkyc_createTransactionPin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'kyc_createTransactionPin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Kyc_CreateTransactionPinInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_createTransactionPin'),
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
Mutation$kyc_createTransactionPin _parserFn$Mutation$kyc_createTransactionPin(
        Map<String, dynamic> data) =>
    Mutation$kyc_createTransactionPin.fromJson(data);
typedef OnMutationCompleted$Mutation$kyc_createTransactionPin = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$kyc_createTransactionPin?,
);

class Options$Mutation$kyc_createTransactionPin
    extends graphql.MutationOptions<Mutation$kyc_createTransactionPin> {
  Options$Mutation$kyc_createTransactionPin({
    String? operationName,
    required Variables$Mutation$kyc_createTransactionPin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_createTransactionPin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_createTransactionPin? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_createTransactionPin>? update,
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
                        : _parserFn$Mutation$kyc_createTransactionPin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_createTransactionPin,
          parserFn: _parserFn$Mutation$kyc_createTransactionPin,
        );

  final OnMutationCompleted$Mutation$kyc_createTransactionPin?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$kyc_createTransactionPin
    extends graphql.WatchQueryOptions<Mutation$kyc_createTransactionPin> {
  WatchOptions$Mutation$kyc_createTransactionPin({
    String? operationName,
    required Variables$Mutation$kyc_createTransactionPin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_createTransactionPin? typedOptimisticResult,
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
          document: documentNodeMutationkyc_createTransactionPin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$kyc_createTransactionPin,
        );
}

extension ClientExtension$Mutation$kyc_createTransactionPin
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$kyc_createTransactionPin>>
      mutate$kyc_createTransactionPin(
              Options$Mutation$kyc_createTransactionPin options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$kyc_createTransactionPin>
      watchMutation$kyc_createTransactionPin(
              WatchOptions$Mutation$kyc_createTransactionPin options) =>
          this.watchMutation(options);
}

class Mutation$kyc_createTransactionPin$HookResult {
  Mutation$kyc_createTransactionPin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$kyc_createTransactionPin runMutation;

  final graphql.QueryResult<Mutation$kyc_createTransactionPin> result;
}

Mutation$kyc_createTransactionPin$HookResult
    useMutation$kyc_createTransactionPin(
        [WidgetOptions$Mutation$kyc_createTransactionPin? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$kyc_createTransactionPin());
  return Mutation$kyc_createTransactionPin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$kyc_createTransactionPin>
    useWatchMutation$kyc_createTransactionPin(
            WatchOptions$Mutation$kyc_createTransactionPin options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$kyc_createTransactionPin
    extends graphql.MutationOptions<Mutation$kyc_createTransactionPin> {
  WidgetOptions$Mutation$kyc_createTransactionPin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_createTransactionPin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_createTransactionPin? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_createTransactionPin>? update,
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
                        : _parserFn$Mutation$kyc_createTransactionPin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_createTransactionPin,
          parserFn: _parserFn$Mutation$kyc_createTransactionPin,
        );

  final OnMutationCompleted$Mutation$kyc_createTransactionPin?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$kyc_createTransactionPin
    = graphql.MultiSourceResult<Mutation$kyc_createTransactionPin> Function(
  Variables$Mutation$kyc_createTransactionPin, {
  Object? optimisticResult,
  Mutation$kyc_createTransactionPin? typedOptimisticResult,
});
typedef Builder$Mutation$kyc_createTransactionPin = widgets.Widget Function(
  RunMutation$Mutation$kyc_createTransactionPin,
  graphql.QueryResult<Mutation$kyc_createTransactionPin>?,
);

class Mutation$kyc_createTransactionPin$Widget
    extends graphql_flutter.Mutation<Mutation$kyc_createTransactionPin> {
  Mutation$kyc_createTransactionPin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$kyc_createTransactionPin? options,
    required Builder$Mutation$kyc_createTransactionPin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$kyc_createTransactionPin(),
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

class Mutation$kyc_createTransactionPin$kyc_createTransactionPin {
  Mutation$kyc_createTransactionPin$kyc_createTransactionPin({
    required this.message,
    this.$__typename = 'Kyc_Response',
  });

  factory Mutation$kyc_createTransactionPin$kyc_createTransactionPin.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_createTransactionPin$kyc_createTransactionPin(
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
    if (other is! Mutation$kyc_createTransactionPin$kyc_createTransactionPin ||
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

extension UtilityExtension$Mutation$kyc_createTransactionPin$kyc_createTransactionPin
    on Mutation$kyc_createTransactionPin$kyc_createTransactionPin {
  CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<
          Mutation$kyc_createTransactionPin$kyc_createTransactionPin>
      get copyWith =>
          CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<
    TRes> {
  factory CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin(
    Mutation$kyc_createTransactionPin$kyc_createTransactionPin instance,
    TRes Function(Mutation$kyc_createTransactionPin$kyc_createTransactionPin)
        then,
  ) = _CopyWithImpl$Mutation$kyc_createTransactionPin$kyc_createTransactionPin;

  factory CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$kyc_createTransactionPin$kyc_createTransactionPin;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<
        TRes>
    implements
        CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<
            TRes> {
  _CopyWithImpl$Mutation$kyc_createTransactionPin$kyc_createTransactionPin(
    this._instance,
    this._then,
  );

  final Mutation$kyc_createTransactionPin$kyc_createTransactionPin _instance;

  final TRes Function(
      Mutation$kyc_createTransactionPin$kyc_createTransactionPin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_createTransactionPin$kyc_createTransactionPin(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<
        TRes>
    implements
        CopyWith$Mutation$kyc_createTransactionPin$kyc_createTransactionPin<
            TRes> {
  _CopyWithStubImpl$Mutation$kyc_createTransactionPin$kyc_createTransactionPin(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$kyc_sendPhoneOtp {
  factory Variables$Mutation$kyc_sendPhoneOtp(
          {required Input$Kyc_SendPhoneOtpInput input}) =>
      Variables$Mutation$kyc_sendPhoneOtp._({
        r'input': input,
      });

  Variables$Mutation$kyc_sendPhoneOtp._(this._$data);

  factory Variables$Mutation$kyc_sendPhoneOtp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Kyc_SendPhoneOtpInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$kyc_sendPhoneOtp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Kyc_SendPhoneOtpInput get input =>
      (_$data['input'] as Input$Kyc_SendPhoneOtpInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$kyc_sendPhoneOtp<
          Variables$Mutation$kyc_sendPhoneOtp>
      get copyWith => CopyWith$Variables$Mutation$kyc_sendPhoneOtp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$kyc_sendPhoneOtp ||
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

abstract class CopyWith$Variables$Mutation$kyc_sendPhoneOtp<TRes> {
  factory CopyWith$Variables$Mutation$kyc_sendPhoneOtp(
    Variables$Mutation$kyc_sendPhoneOtp instance,
    TRes Function(Variables$Mutation$kyc_sendPhoneOtp) then,
  ) = _CopyWithImpl$Variables$Mutation$kyc_sendPhoneOtp;

  factory CopyWith$Variables$Mutation$kyc_sendPhoneOtp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$kyc_sendPhoneOtp;

  TRes call({Input$Kyc_SendPhoneOtpInput? input});
}

class _CopyWithImpl$Variables$Mutation$kyc_sendPhoneOtp<TRes>
    implements CopyWith$Variables$Mutation$kyc_sendPhoneOtp<TRes> {
  _CopyWithImpl$Variables$Mutation$kyc_sendPhoneOtp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$kyc_sendPhoneOtp _instance;

  final TRes Function(Variables$Mutation$kyc_sendPhoneOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$kyc_sendPhoneOtp._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Kyc_SendPhoneOtpInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$kyc_sendPhoneOtp<TRes>
    implements CopyWith$Variables$Mutation$kyc_sendPhoneOtp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$kyc_sendPhoneOtp(this._res);

  TRes _res;

  call({Input$Kyc_SendPhoneOtpInput? input}) => _res;
}

class Mutation$kyc_sendPhoneOtp {
  Mutation$kyc_sendPhoneOtp({
    required this.kyc_sendPhoneOtp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$kyc_sendPhoneOtp.fromJson(Map<String, dynamic> json) {
    final l$kyc_sendPhoneOtp = json['kyc_sendPhoneOtp'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_sendPhoneOtp(
      kyc_sendPhoneOtp: Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp.fromJson(
          (l$kyc_sendPhoneOtp as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp kyc_sendPhoneOtp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_sendPhoneOtp = kyc_sendPhoneOtp;
    _resultData['kyc_sendPhoneOtp'] = l$kyc_sendPhoneOtp.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_sendPhoneOtp = kyc_sendPhoneOtp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_sendPhoneOtp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$kyc_sendPhoneOtp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_sendPhoneOtp = kyc_sendPhoneOtp;
    final lOther$kyc_sendPhoneOtp = other.kyc_sendPhoneOtp;
    if (l$kyc_sendPhoneOtp != lOther$kyc_sendPhoneOtp) {
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

extension UtilityExtension$Mutation$kyc_sendPhoneOtp
    on Mutation$kyc_sendPhoneOtp {
  CopyWith$Mutation$kyc_sendPhoneOtp<Mutation$kyc_sendPhoneOtp> get copyWith =>
      CopyWith$Mutation$kyc_sendPhoneOtp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$kyc_sendPhoneOtp<TRes> {
  factory CopyWith$Mutation$kyc_sendPhoneOtp(
    Mutation$kyc_sendPhoneOtp instance,
    TRes Function(Mutation$kyc_sendPhoneOtp) then,
  ) = _CopyWithImpl$Mutation$kyc_sendPhoneOtp;

  factory CopyWith$Mutation$kyc_sendPhoneOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_sendPhoneOtp;

  TRes call({
    Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp? kyc_sendPhoneOtp,
    String? $__typename,
  });
  CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes>
      get kyc_sendPhoneOtp;
}

class _CopyWithImpl$Mutation$kyc_sendPhoneOtp<TRes>
    implements CopyWith$Mutation$kyc_sendPhoneOtp<TRes> {
  _CopyWithImpl$Mutation$kyc_sendPhoneOtp(
    this._instance,
    this._then,
  );

  final Mutation$kyc_sendPhoneOtp _instance;

  final TRes Function(Mutation$kyc_sendPhoneOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_sendPhoneOtp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_sendPhoneOtp(
        kyc_sendPhoneOtp: kyc_sendPhoneOtp == _undefined ||
                kyc_sendPhoneOtp == null
            ? _instance.kyc_sendPhoneOtp
            : (kyc_sendPhoneOtp as Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes>
      get kyc_sendPhoneOtp {
    final local$kyc_sendPhoneOtp = _instance.kyc_sendPhoneOtp;
    return CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp(
        local$kyc_sendPhoneOtp, (e) => call(kyc_sendPhoneOtp: e));
  }
}

class _CopyWithStubImpl$Mutation$kyc_sendPhoneOtp<TRes>
    implements CopyWith$Mutation$kyc_sendPhoneOtp<TRes> {
  _CopyWithStubImpl$Mutation$kyc_sendPhoneOtp(this._res);

  TRes _res;

  call({
    Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp? kyc_sendPhoneOtp,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes>
      get kyc_sendPhoneOtp =>
          CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp.stub(_res);
}

const documentNodeMutationkyc_sendPhoneOtp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'kyc_sendPhoneOtp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Kyc_SendPhoneOtpInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_sendPhoneOtp'),
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
            name: NameNode(value: 'otpToken'),
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
Mutation$kyc_sendPhoneOtp _parserFn$Mutation$kyc_sendPhoneOtp(
        Map<String, dynamic> data) =>
    Mutation$kyc_sendPhoneOtp.fromJson(data);
typedef OnMutationCompleted$Mutation$kyc_sendPhoneOtp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$kyc_sendPhoneOtp?,
);

class Options$Mutation$kyc_sendPhoneOtp
    extends graphql.MutationOptions<Mutation$kyc_sendPhoneOtp> {
  Options$Mutation$kyc_sendPhoneOtp({
    String? operationName,
    required Variables$Mutation$kyc_sendPhoneOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_sendPhoneOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_sendPhoneOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_sendPhoneOtp>? update,
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
                        : _parserFn$Mutation$kyc_sendPhoneOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_sendPhoneOtp,
          parserFn: _parserFn$Mutation$kyc_sendPhoneOtp,
        );

  final OnMutationCompleted$Mutation$kyc_sendPhoneOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$kyc_sendPhoneOtp
    extends graphql.WatchQueryOptions<Mutation$kyc_sendPhoneOtp> {
  WatchOptions$Mutation$kyc_sendPhoneOtp({
    String? operationName,
    required Variables$Mutation$kyc_sendPhoneOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_sendPhoneOtp? typedOptimisticResult,
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
          document: documentNodeMutationkyc_sendPhoneOtp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$kyc_sendPhoneOtp,
        );
}

extension ClientExtension$Mutation$kyc_sendPhoneOtp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$kyc_sendPhoneOtp>>
      mutate$kyc_sendPhoneOtp(
              Options$Mutation$kyc_sendPhoneOtp options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$kyc_sendPhoneOtp>
      watchMutation$kyc_sendPhoneOtp(
              WatchOptions$Mutation$kyc_sendPhoneOtp options) =>
          this.watchMutation(options);
}

class Mutation$kyc_sendPhoneOtp$HookResult {
  Mutation$kyc_sendPhoneOtp$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$kyc_sendPhoneOtp runMutation;

  final graphql.QueryResult<Mutation$kyc_sendPhoneOtp> result;
}

Mutation$kyc_sendPhoneOtp$HookResult useMutation$kyc_sendPhoneOtp(
    [WidgetOptions$Mutation$kyc_sendPhoneOtp? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$kyc_sendPhoneOtp());
  return Mutation$kyc_sendPhoneOtp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$kyc_sendPhoneOtp>
    useWatchMutation$kyc_sendPhoneOtp(
            WatchOptions$Mutation$kyc_sendPhoneOtp options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$kyc_sendPhoneOtp
    extends graphql.MutationOptions<Mutation$kyc_sendPhoneOtp> {
  WidgetOptions$Mutation$kyc_sendPhoneOtp({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_sendPhoneOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_sendPhoneOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_sendPhoneOtp>? update,
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
                        : _parserFn$Mutation$kyc_sendPhoneOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_sendPhoneOtp,
          parserFn: _parserFn$Mutation$kyc_sendPhoneOtp,
        );

  final OnMutationCompleted$Mutation$kyc_sendPhoneOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$kyc_sendPhoneOtp
    = graphql.MultiSourceResult<Mutation$kyc_sendPhoneOtp> Function(
  Variables$Mutation$kyc_sendPhoneOtp, {
  Object? optimisticResult,
  Mutation$kyc_sendPhoneOtp? typedOptimisticResult,
});
typedef Builder$Mutation$kyc_sendPhoneOtp = widgets.Widget Function(
  RunMutation$Mutation$kyc_sendPhoneOtp,
  graphql.QueryResult<Mutation$kyc_sendPhoneOtp>?,
);

class Mutation$kyc_sendPhoneOtp$Widget
    extends graphql_flutter.Mutation<Mutation$kyc_sendPhoneOtp> {
  Mutation$kyc_sendPhoneOtp$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$kyc_sendPhoneOtp? options,
    required Builder$Mutation$kyc_sendPhoneOtp builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$kyc_sendPhoneOtp(),
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

class Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp {
  Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp({
    required this.message,
    required this.otpToken,
    this.$__typename = 'Kyc_SendOtpResponse',
  });

  factory Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$otpToken = json['otpToken'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp(
      message: (l$message as String),
      otpToken: (l$otpToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String otpToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$otpToken = otpToken;
    _resultData['otpToken'] = l$otpToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$otpToken = otpToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$otpToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$otpToken = otpToken;
    final lOther$otpToken = other.otpToken;
    if (l$otpToken != lOther$otpToken) {
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

extension UtilityExtension$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp
    on Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp {
  CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<
          Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp>
      get copyWith => CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes> {
  factory CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp(
    Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp instance,
    TRes Function(Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp) then,
  ) = _CopyWithImpl$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp;

  factory CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp;

  TRes call({
    String? message,
    String? otpToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes>
    implements CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes> {
  _CopyWithImpl$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp(
    this._instance,
    this._then,
  );

  final Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp _instance;

  final TRes Function(Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? otpToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        otpToken: otpToken == _undefined || otpToken == null
            ? _instance.otpToken
            : (otpToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes>
    implements CopyWith$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp<TRes> {
  _CopyWithStubImpl$Mutation$kyc_sendPhoneOtp$kyc_sendPhoneOtp(this._res);

  TRes _res;

  call({
    String? message,
    String? otpToken,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials {
  factory Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
          {required Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput input}) =>
      Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials._({
        r'input': input,
      });

  Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials._(this._$data);

  factory Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput.fromJson(
            (l$input as Map<String, dynamic>));
    return Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput get input =>
      (_$data['input'] as Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<
          Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>
      get copyWith =>
          CopyWith$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials ||
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

abstract class CopyWith$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<
    TRes> {
  factory CopyWith$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
    Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials instance,
    TRes Function(Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials)
        then,
  ) = _CopyWithImpl$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials;

  factory CopyWith$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials;

  TRes call({Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput? input});
}

class _CopyWithImpl$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<
        TRes>
    implements
        CopyWith$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<
            TRes> {
  _CopyWithImpl$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
    this._instance,
    this._then,
  );

  final Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials _instance;

  final TRes Function(Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<
        TRes>
    implements
        CopyWith$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<
            TRes> {
  _CopyWithStubImpl$Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
      this._res);

  TRes _res;

  call({Input$Kyc_verifyPhoneOtpAndSubmitCredentialsInput? input}) => _res;
}

class Mutation$kyc_verifyPhoneOtpAndSubmitCredentials {
  Mutation$kyc_verifyPhoneOtpAndSubmitCredentials({
    required this.kyc_verifyPhoneOtpAndSubmitCredentials,
    this.$__typename = 'Mutation',
  });

  factory Mutation$kyc_verifyPhoneOtpAndSubmitCredentials.fromJson(
      Map<String, dynamic> json) {
    final l$kyc_verifyPhoneOtpAndSubmitCredentials =
        json['kyc_verifyPhoneOtpAndSubmitCredentials'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
      kyc_verifyPhoneOtpAndSubmitCredentials:
          Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials
              .fromJson((l$kyc_verifyPhoneOtpAndSubmitCredentials
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials
      kyc_verifyPhoneOtpAndSubmitCredentials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_verifyPhoneOtpAndSubmitCredentials =
        kyc_verifyPhoneOtpAndSubmitCredentials;
    _resultData['kyc_verifyPhoneOtpAndSubmitCredentials'] =
        l$kyc_verifyPhoneOtpAndSubmitCredentials.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_verifyPhoneOtpAndSubmitCredentials =
        kyc_verifyPhoneOtpAndSubmitCredentials;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_verifyPhoneOtpAndSubmitCredentials,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$kyc_verifyPhoneOtpAndSubmitCredentials ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_verifyPhoneOtpAndSubmitCredentials =
        kyc_verifyPhoneOtpAndSubmitCredentials;
    final lOther$kyc_verifyPhoneOtpAndSubmitCredentials =
        other.kyc_verifyPhoneOtpAndSubmitCredentials;
    if (l$kyc_verifyPhoneOtpAndSubmitCredentials !=
        lOther$kyc_verifyPhoneOtpAndSubmitCredentials) {
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

extension UtilityExtension$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
    on Mutation$kyc_verifyPhoneOtpAndSubmitCredentials {
  CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<
          Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>
      get copyWith => CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<TRes> {
  factory CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
    Mutation$kyc_verifyPhoneOtpAndSubmitCredentials instance,
    TRes Function(Mutation$kyc_verifyPhoneOtpAndSubmitCredentials) then,
  ) = _CopyWithImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials;

  factory CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials;

  TRes call({
    Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials?
        kyc_verifyPhoneOtpAndSubmitCredentials,
    String? $__typename,
  });
  CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
      TRes> get kyc_verifyPhoneOtpAndSubmitCredentials;
}

class _CopyWithImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<TRes>
    implements CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<TRes> {
  _CopyWithImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
    this._instance,
    this._then,
  );

  final Mutation$kyc_verifyPhoneOtpAndSubmitCredentials _instance;

  final TRes Function(Mutation$kyc_verifyPhoneOtpAndSubmitCredentials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_verifyPhoneOtpAndSubmitCredentials = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
        kyc_verifyPhoneOtpAndSubmitCredentials:
            kyc_verifyPhoneOtpAndSubmitCredentials == _undefined ||
                    kyc_verifyPhoneOtpAndSubmitCredentials == null
                ? _instance.kyc_verifyPhoneOtpAndSubmitCredentials
                : (kyc_verifyPhoneOtpAndSubmitCredentials
                    as Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
      TRes> get kyc_verifyPhoneOtpAndSubmitCredentials {
    final local$kyc_verifyPhoneOtpAndSubmitCredentials =
        _instance.kyc_verifyPhoneOtpAndSubmitCredentials;
    return CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials(
        local$kyc_verifyPhoneOtpAndSubmitCredentials,
        (e) => call(kyc_verifyPhoneOtpAndSubmitCredentials: e));
  }
}

class _CopyWithStubImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<TRes>
    implements CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials<TRes> {
  _CopyWithStubImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(this._res);

  TRes _res;

  call({
    Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials?
        kyc_verifyPhoneOtpAndSubmitCredentials,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
          TRes>
      get kyc_verifyPhoneOtpAndSubmitCredentials =>
          CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials
              .stub(_res);
}

const documentNodeMutationkyc_verifyPhoneOtpAndSubmitCredentials =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'kyc_verifyPhoneOtpAndSubmitCredentials'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'Kyc_verifyPhoneOtpAndSubmitCredentialsInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_verifyPhoneOtpAndSubmitCredentials'),
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
Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
    _parserFn$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
            Map<String, dynamic> data) =>
        Mutation$kyc_verifyPhoneOtpAndSubmitCredentials.fromJson(data);
typedef OnMutationCompleted$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$kyc_verifyPhoneOtpAndSubmitCredentials?,
);

class Options$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials extends graphql
    .MutationOptions<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials> {
  Options$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials({
    String? operationName,
    required Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
        variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_verifyPhoneOtpAndSubmitCredentials? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials?
        onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>?
        update,
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
                        : _parserFn$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_verifyPhoneOtpAndSubmitCredentials,
          parserFn: _parserFn$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials,
        );

  final OnMutationCompleted$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
    extends graphql
    .WatchQueryOptions<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials> {
  WatchOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials({
    String? operationName,
    required Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
        variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_verifyPhoneOtpAndSubmitCredentials? typedOptimisticResult,
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
          document: documentNodeMutationkyc_verifyPhoneOtpAndSubmitCredentials,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials,
        );
}

extension ClientExtension$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>>
      mutate$kyc_verifyPhoneOtpAndSubmitCredentials(
              Options$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
                  options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>
      watchMutation$kyc_verifyPhoneOtpAndSubmitCredentials(
              WatchOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
                  options) =>
          this.watchMutation(options);
}

class Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$HookResult {
  Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials runMutation;

  final graphql.QueryResult<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>
      result;
}

Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$HookResult
    useMutation$kyc_verifyPhoneOtpAndSubmitCredentials(
        [WidgetOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials?
            options]) {
  final result = graphql_flutter.useMutation(options ??
      WidgetOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials());
  return Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>
    useWatchMutation$kyc_verifyPhoneOtpAndSubmitCredentials(
            WatchOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
                options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
    extends graphql
    .MutationOptions<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials> {
  WidgetOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$kyc_verifyPhoneOtpAndSubmitCredentials? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials?
        onCompleted,
    graphql.OnMutationUpdate<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>?
        update,
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
                        : _parserFn$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationkyc_verifyPhoneOtpAndSubmitCredentials,
          parserFn: _parserFn$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials,
        );

  final OnMutationCompleted$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials
    = graphql.MultiSourceResult<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>
        Function(
  Variables$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials, {
  Object? optimisticResult,
  Mutation$kyc_verifyPhoneOtpAndSubmitCredentials? typedOptimisticResult,
});
typedef Builder$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials = widgets.Widget
    Function(
  RunMutation$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials,
  graphql.QueryResult<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials>?,
);

class Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$Widget
    extends graphql_flutter
    .Mutation<Mutation$kyc_verifyPhoneOtpAndSubmitCredentials> {
  Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials? options,
    required Builder$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials builder,
  }) : super(
          key: key,
          options: options ??
              WidgetOptions$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials(),
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

class Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials {
  Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials({
    required this.message,
    this.$__typename = 'Kyc_Response',
  });

  factory Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials(
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
            is! Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials ||
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

extension UtilityExtension$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials
    on Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials {
  CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
          Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials>
      get copyWith =>
          CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
    TRes> {
  factory CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials(
    Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials
        instance,
    TRes Function(
            Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials)
        then,
  ) = _CopyWithImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials;

  factory CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
        TRes>
    implements
        CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
            TRes> {
  _CopyWithImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials(
    this._instance,
    this._then,
  );

  final Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials
      _instance;

  final TRes Function(
          Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
        TRes>
    implements
        CopyWith$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials<
            TRes> {
  _CopyWithStubImpl$Mutation$kyc_verifyPhoneOtpAndSubmitCredentials$kyc_verifyPhoneOtpAndSubmitCredentials(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Query$kyc_profile {
  Query$kyc_profile({
    required this.kyc_profile,
    this.$__typename = 'Query',
  });

  factory Query$kyc_profile.fromJson(Map<String, dynamic> json) {
    final l$kyc_profile = json['kyc_profile'];
    final l$$__typename = json['__typename'];
    return Query$kyc_profile(
      kyc_profile: Query$kyc_profile$kyc_profile.fromJson(
          (l$kyc_profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$kyc_profile$kyc_profile kyc_profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kyc_profile = kyc_profile;
    _resultData['kyc_profile'] = l$kyc_profile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kyc_profile = kyc_profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kyc_profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$kyc_profile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kyc_profile = kyc_profile;
    final lOther$kyc_profile = other.kyc_profile;
    if (l$kyc_profile != lOther$kyc_profile) {
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

extension UtilityExtension$Query$kyc_profile on Query$kyc_profile {
  CopyWith$Query$kyc_profile<Query$kyc_profile> get copyWith =>
      CopyWith$Query$kyc_profile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$kyc_profile<TRes> {
  factory CopyWith$Query$kyc_profile(
    Query$kyc_profile instance,
    TRes Function(Query$kyc_profile) then,
  ) = _CopyWithImpl$Query$kyc_profile;

  factory CopyWith$Query$kyc_profile.stub(TRes res) =
      _CopyWithStubImpl$Query$kyc_profile;

  TRes call({
    Query$kyc_profile$kyc_profile? kyc_profile,
    String? $__typename,
  });
  CopyWith$Query$kyc_profile$kyc_profile<TRes> get kyc_profile;
}

class _CopyWithImpl$Query$kyc_profile<TRes>
    implements CopyWith$Query$kyc_profile<TRes> {
  _CopyWithImpl$Query$kyc_profile(
    this._instance,
    this._then,
  );

  final Query$kyc_profile _instance;

  final TRes Function(Query$kyc_profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kyc_profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$kyc_profile(
        kyc_profile: kyc_profile == _undefined || kyc_profile == null
            ? _instance.kyc_profile
            : (kyc_profile as Query$kyc_profile$kyc_profile),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$kyc_profile$kyc_profile<TRes> get kyc_profile {
    final local$kyc_profile = _instance.kyc_profile;
    return CopyWith$Query$kyc_profile$kyc_profile(
        local$kyc_profile, (e) => call(kyc_profile: e));
  }
}

class _CopyWithStubImpl$Query$kyc_profile<TRes>
    implements CopyWith$Query$kyc_profile<TRes> {
  _CopyWithStubImpl$Query$kyc_profile(this._res);

  TRes _res;

  call({
    Query$kyc_profile$kyc_profile? kyc_profile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$kyc_profile$kyc_profile<TRes> get kyc_profile =>
      CopyWith$Query$kyc_profile$kyc_profile.stub(_res);
}

const documentNodeQuerykyc_profile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'kyc_profile'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kyc_profile'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'middlename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
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
            name: NameNode(value: 'firstname'),
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
            name: NameNode(value: 'dob'),
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
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
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
Query$kyc_profile _parserFn$Query$kyc_profile(Map<String, dynamic> data) =>
    Query$kyc_profile.fromJson(data);
typedef OnQueryComplete$Query$kyc_profile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$kyc_profile?,
);

class Options$Query$kyc_profile
    extends graphql.QueryOptions<Query$kyc_profile> {
  Options$Query$kyc_profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$kyc_profile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$kyc_profile? onComplete,
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
                    data == null ? null : _parserFn$Query$kyc_profile(data),
                  ),
          onError: onError,
          document: documentNodeQuerykyc_profile,
          parserFn: _parserFn$Query$kyc_profile,
        );

  final OnQueryComplete$Query$kyc_profile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$kyc_profile
    extends graphql.WatchQueryOptions<Query$kyc_profile> {
  WatchOptions$Query$kyc_profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$kyc_profile? typedOptimisticResult,
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
          document: documentNodeQuerykyc_profile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$kyc_profile,
        );
}

class FetchMoreOptions$Query$kyc_profile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$kyc_profile({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerykyc_profile,
        );
}

extension ClientExtension$Query$kyc_profile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$kyc_profile>> query$kyc_profile(
          [Options$Query$kyc_profile? options]) async =>
      await this.query(options ?? Options$Query$kyc_profile());
  graphql.ObservableQuery<Query$kyc_profile> watchQuery$kyc_profile(
          [WatchOptions$Query$kyc_profile? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$kyc_profile());
  void writeQuery$kyc_profile({
    required Query$kyc_profile data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerykyc_profile)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$kyc_profile? readQuery$kyc_profile({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerykyc_profile)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$kyc_profile.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$kyc_profile> useQuery$kyc_profile(
        [Options$Query$kyc_profile? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$kyc_profile());
graphql.ObservableQuery<Query$kyc_profile> useWatchQuery$kyc_profile(
        [WatchOptions$Query$kyc_profile? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$kyc_profile());

class Query$kyc_profile$Widget
    extends graphql_flutter.Query<Query$kyc_profile> {
  Query$kyc_profile$Widget({
    widgets.Key? key,
    Options$Query$kyc_profile? options,
    required graphql_flutter.QueryBuilder<Query$kyc_profile> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$kyc_profile(),
          builder: builder,
        );
}

class Query$kyc_profile$kyc_profile {
  Query$kyc_profile$kyc_profile({
    this.bvn,
    this.bvn_status,
    this.nin,
    this.nin_status,
    this.middlename,
    this.gender,
    this.lastname,
    this.firstname,
    this.country_code,
    this.dob,
    this.email,
    this.phone,
    this.role,
    this.state,
    this.$__typename = 'Kyc_UserResponse',
  });

  factory Query$kyc_profile$kyc_profile.fromJson(Map<String, dynamic> json) {
    final l$bvn = json['bvn'];
    final l$bvn_status = json['bvn_status'];
    final l$nin = json['nin'];
    final l$nin_status = json['nin_status'];
    final l$middlename = json['middlename'];
    final l$gender = json['gender'];
    final l$lastname = json['lastname'];
    final l$firstname = json['firstname'];
    final l$country_code = json['country_code'];
    final l$dob = json['dob'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$state = json['state'];
    final l$$__typename = json['__typename'];
    return Query$kyc_profile$kyc_profile(
      bvn: (l$bvn as String?),
      bvn_status: (l$bvn_status as String?),
      nin: (l$nin as String?),
      nin_status: (l$nin_status as String?),
      middlename: (l$middlename as String?),
      gender: (l$gender as String?),
      lastname: (l$lastname as String?),
      firstname: (l$firstname as String?),
      country_code: (l$country_code as String?),
      dob: (l$dob as String?),
      email: (l$email as String?),
      phone: (l$phone as String?),
      role: (l$role as String?),
      state: (l$state as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? bvn;

  final String? bvn_status;

  final String? nin;

  final String? nin_status;

  final String? middlename;

  final String? gender;

  final String? lastname;

  final String? firstname;

  final String? country_code;

  final String? dob;

  final String? email;

  final String? phone;

  final String? role;

  final String? state;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bvn = bvn;
    _resultData['bvn'] = l$bvn;
    final l$bvn_status = bvn_status;
    _resultData['bvn_status'] = l$bvn_status;
    final l$nin = nin;
    _resultData['nin'] = l$nin;
    final l$nin_status = nin_status;
    _resultData['nin_status'] = l$nin_status;
    final l$middlename = middlename;
    _resultData['middlename'] = l$middlename;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$lastname = lastname;
    _resultData['lastname'] = l$lastname;
    final l$firstname = firstname;
    _resultData['firstname'] = l$firstname;
    final l$country_code = country_code;
    _resultData['country_code'] = l$country_code;
    final l$dob = dob;
    _resultData['dob'] = l$dob;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$role = role;
    _resultData['role'] = l$role;
    final l$state = state;
    _resultData['state'] = l$state;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bvn = bvn;
    final l$bvn_status = bvn_status;
    final l$nin = nin;
    final l$nin_status = nin_status;
    final l$middlename = middlename;
    final l$gender = gender;
    final l$lastname = lastname;
    final l$firstname = firstname;
    final l$country_code = country_code;
    final l$dob = dob;
    final l$email = email;
    final l$phone = phone;
    final l$role = role;
    final l$state = state;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bvn,
      l$bvn_status,
      l$nin,
      l$nin_status,
      l$middlename,
      l$gender,
      l$lastname,
      l$firstname,
      l$country_code,
      l$dob,
      l$email,
      l$phone,
      l$role,
      l$state,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$kyc_profile$kyc_profile ||
        runtimeType != other.runtimeType) {
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
    final l$middlename = middlename;
    final lOther$middlename = other.middlename;
    if (l$middlename != lOther$middlename) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$lastname = lastname;
    final lOther$lastname = other.lastname;
    if (l$lastname != lOther$lastname) {
      return false;
    }
    final l$firstname = firstname;
    final lOther$firstname = other.firstname;
    if (l$firstname != lOther$firstname) {
      return false;
    }
    final l$country_code = country_code;
    final lOther$country_code = other.country_code;
    if (l$country_code != lOther$country_code) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
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

extension UtilityExtension$Query$kyc_profile$kyc_profile
    on Query$kyc_profile$kyc_profile {
  CopyWith$Query$kyc_profile$kyc_profile<Query$kyc_profile$kyc_profile>
      get copyWith => CopyWith$Query$kyc_profile$kyc_profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$kyc_profile$kyc_profile<TRes> {
  factory CopyWith$Query$kyc_profile$kyc_profile(
    Query$kyc_profile$kyc_profile instance,
    TRes Function(Query$kyc_profile$kyc_profile) then,
  ) = _CopyWithImpl$Query$kyc_profile$kyc_profile;

  factory CopyWith$Query$kyc_profile$kyc_profile.stub(TRes res) =
      _CopyWithStubImpl$Query$kyc_profile$kyc_profile;

  TRes call({
    String? bvn,
    String? bvn_status,
    String? nin,
    String? nin_status,
    String? middlename,
    String? gender,
    String? lastname,
    String? firstname,
    String? country_code,
    String? dob,
    String? email,
    String? phone,
    String? role,
    String? state,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$kyc_profile$kyc_profile<TRes>
    implements CopyWith$Query$kyc_profile$kyc_profile<TRes> {
  _CopyWithImpl$Query$kyc_profile$kyc_profile(
    this._instance,
    this._then,
  );

  final Query$kyc_profile$kyc_profile _instance;

  final TRes Function(Query$kyc_profile$kyc_profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bvn = _undefined,
    Object? bvn_status = _undefined,
    Object? nin = _undefined,
    Object? nin_status = _undefined,
    Object? middlename = _undefined,
    Object? gender = _undefined,
    Object? lastname = _undefined,
    Object? firstname = _undefined,
    Object? country_code = _undefined,
    Object? dob = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? state = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$kyc_profile$kyc_profile(
        bvn: bvn == _undefined ? _instance.bvn : (bvn as String?),
        bvn_status: bvn_status == _undefined
            ? _instance.bvn_status
            : (bvn_status as String?),
        nin: nin == _undefined ? _instance.nin : (nin as String?),
        nin_status: nin_status == _undefined
            ? _instance.nin_status
            : (nin_status as String?),
        middlename: middlename == _undefined
            ? _instance.middlename
            : (middlename as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        lastname:
            lastname == _undefined ? _instance.lastname : (lastname as String?),
        firstname: firstname == _undefined
            ? _instance.firstname
            : (firstname as String?),
        country_code: country_code == _undefined
            ? _instance.country_code
            : (country_code as String?),
        dob: dob == _undefined ? _instance.dob : (dob as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        role: role == _undefined ? _instance.role : (role as String?),
        state: state == _undefined ? _instance.state : (state as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$kyc_profile$kyc_profile<TRes>
    implements CopyWith$Query$kyc_profile$kyc_profile<TRes> {
  _CopyWithStubImpl$Query$kyc_profile$kyc_profile(this._res);

  TRes _res;

  call({
    String? bvn,
    String? bvn_status,
    String? nin,
    String? nin_status,
    String? middlename,
    String? gender,
    String? lastname,
    String? firstname,
    String? country_code,
    String? dob,
    String? email,
    String? phone,
    String? role,
    String? state,
    String? $__typename,
  }) =>
      _res;
}
