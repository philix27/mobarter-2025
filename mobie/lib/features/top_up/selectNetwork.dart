import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/topup.gql.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowTopUpProviders extends StatelessWidget {
  const ShowTopUpProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return _NetworkList();
  }
}

class _NetworkList extends HookWidget {
  const _NetworkList();

  @override
  Widget build(BuildContext context) {
    final result = useQuery$utility_getTopUpOperators(
      Options$Query$utility_getTopUpOperators(
        variables: Variables$Query$utility_getTopUpOperators(
          input: Input$Utilities_GetOperatorsInput(
            countryCode: Enum$Country.NG,
          ),
        ),
      ),
    );
    final list = result.result.parsedData?.utility_getTopUpOperators;

    if (result.result.hasException) {
      print("Flutter Hook exceptio n");
    }

    if (result.result.data != null) {
      print("Flutter Hook Success");
    }

    final collection = list?.airtime;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: collection?.length ?? 1,
      itemBuilder: (BuildContext ctx, int index) {
        final item = collection![index];
        return listTile(title: item.name, imgUrl: item.logo);
      },
    );
  }
}
