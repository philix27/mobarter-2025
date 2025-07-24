import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobarter/config/env.dart';

final _httpLink = isDevEnv
    ? HttpLink('http://192.168.0.123:4545/graphql')
    : HttpLink('https://server.mobarter.com/graphql');

// GraphQLClient getGqlClient() {
//   /// subscriptions must be split otherwise `HttpLink` will. swallow them
//   // if (websocketEndpoint != null){

//   //   final _wsLink = WebSocketLink(websockeEndpoint);
//   //   _link = Link.split((request) => request.isSubscription, _wsLink, _link);

//   // }

//   final GraphQLClient gqlClient = GraphQLClient(
//     /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
//     cache: GraphQLCache(),
//     // cache: GraphQLCache(store: HiveStore()),
//     link: _link,
//   );

//   return gqlClient;
// }

ValueNotifier<GraphQLClient> getGqlClientNotifier(String? token) {
  final _authLink = AuthLink(getToken: () async => 'Bearer $token');

  Link _link = _authLink.concat(_httpLink);

  final GraphQLClient gqlClient = GraphQLClient(
    /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
    // cache: GraphQLCache(store: HiveStore()),
    link: _link,
  );

  return ValueNotifier(gqlClient);
}
