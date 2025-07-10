import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final _httpLink = HttpLink('http://192.168.0.123:4545/graphql');

final String TEST_TOKEN =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoicGhpbGl4Ym9iQGdtYWlsLmNvbSIsImlhdCI6MTc1MjEyMTkyMCwiZXhwIjoxNzUyMjk0NzIwfQ.mXw6SsNa_m34IyiRIXwGyzJ9_i7ZMppaZuNJ7ayAlsg";

final _authLink = AuthLink(getToken: () async => 'Bearer $TEST_TOKEN');

Link _link = _authLink.concat(_httpLink);

ValueNotifier<GraphQLClient> getGqlClient() {
  /// subscriptions must be split otherwise `HttpLink` will. swallow them
  // if (websocketEndpoint != null){

  //   final _wsLink = WebSocketLink(websockeEndpoint);
  //   _link = Link.split((request) => request.isSubscription, _wsLink, _link);

  // }

  final GraphQLClient gqlClient = GraphQLClient(
    /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
    link: _link,
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(gqlClient);
  return client;
}
