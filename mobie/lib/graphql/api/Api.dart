import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final _httpLink = HttpLink('http://192.168.0.123:4545/graphql');

final String TEST_TOKEN =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoicGhpbGl4Ym9iQGdtYWlsLmNvbSIsImlhdCI6MTc1MjU3MDkwNiwiZXhwIjoxNzUyNzQzNzA2fQ.148R_nLbO81ZoAm0oLCPTXOTYOyyBkBEwBSfzkAu08Y";

final _authLink = AuthLink(getToken: () async => 'Bearer $TEST_TOKEN');

Link _link = _authLink.concat(_httpLink);

GraphQLClient getGqlClient() {
  /// subscriptions must be split otherwise `HttpLink` will. swallow them
  // if (websocketEndpoint != null){

  //   final _wsLink = WebSocketLink(websockeEndpoint);
  //   _link = Link.split((request) => request.isSubscription, _wsLink, _link);

  // }

  final GraphQLClient gqlClient = GraphQLClient(
    /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
    // cache: GraphQLCache(store: HiveStore()),
    link: _link,
  );

  return gqlClient;
}
