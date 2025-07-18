import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobarter/env.dart';

final _httpLink = isDevEnv
    ? HttpLink('http://192.168.0.123:4545/graphql')
    : HttpLink('https://server.mobarter.com/graphql');

final String TEST_TOKEN =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoicGhpbGl4Ym9iQGdtYWlsLmNvbSIsImlhdCI6MTc1Mjg2MTcxNywiZXhwIjoxNzUzMDM0NTE3fQ.QhFJkMAYYDfvYlTGwyZ9TyPJD5UFsKNmOx27WNh9zVQ";

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
