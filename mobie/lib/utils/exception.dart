import 'package:graphql_flutter/graphql_flutter.dart';

class AppPlainException implements Exception {
  final String message;
  AppPlainException(this.message);

  @override
  String toString() => message;
}

require(dynamic payload, String msg) {
  if (payload == null) {
    throw AppPlainException(msg);
  }

  if (payload is bool) {
    if (payload == false) throw AppPlainException(msg);
    return;
  }

  if (payload is String) {
    if (payload.isEmpty) throw AppPlainException(msg);
    return;
  }

  if (payload is int) {
    if (payload.isNaN) throw AppPlainException(msg);
    if (payload.isInfinite) throw AppPlainException(msg);
    if (payload == 0) throw AppPlainException(msg);
    return;
  }
  if (payload is double) {
    if (payload.isNaN) throw AppPlainException(msg);
    if (payload.isInfinite) throw AppPlainException(msg);
    if (payload == 0) throw AppPlainException(msg);
    return;
  }
}


validateGqlQuery(QueryResult? response) {
  if (response == null) throw "No response found";

  if (response.hasException) {
    throw response.exception!.graphqlErrors[0].message;
  }
}