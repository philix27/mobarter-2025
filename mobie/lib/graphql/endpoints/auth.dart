import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/auth.gql.dart';

login(Variables$Mutation$Auth_thirdwebLogin input) {
  Mutation$Auth_thirdwebLogin(
    auth_thirdwebLogin: Mutation$Auth_thirdwebLogin$auth_thirdwebLogin(),
  );
  final cc = Variables$Mutation$Auth_thirdwebLogin(
    input: Input$Auth_ThirdwebLoginInput(
      email: "",
      payload: "",
      walletAddress: "",
    ),
  );
}
