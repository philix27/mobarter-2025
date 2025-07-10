import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobarter/graphql/api/Api.dart';

const String static_getTokens = r'''
query static_getTokens {
  static_getTokens {
    name
    address
    decimals
    isBuyable
    isPayable
    symbol
    logoUrl
    chainId
  }
}
''';

class ApiStaticService {
  static GraphQLClient client = getGqlClient().value;

  Future<List> getTokens() async {
    // try {
    QueryResult result = await client.query(
      QueryOptions(
        document: gql(static_getTokens),
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    if (result.hasException) {
      print("result.exception");
      print(result.exception);
      throw Exception("Could not get tokens");
    }

    print("successful retrival: " + result.data.toString());

    return result.data?["static_getTokens"];
    // } catch (e) {
    //   throw Exception("Could not get tokens");
    // }
  }
}

void ghop() {
  ApiStaticService v = new ApiStaticService();

  // drugaman() async {
  //   final op = await v.getTokens();
  //   return op.static_getTokens;
  // }
}
