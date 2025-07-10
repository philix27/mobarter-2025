import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/widgets/listTile.dart';

class ShowLearn extends StatelessWidget {
  const ShowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return _LearnLinks();
  }
}

class _LearnLinks extends HookWidget {
  const _LearnLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_getLinks(Options$Query$static_getLinks());
    final linksList = result.result.parsedData?.static_getLinks;

    if (result.result.hasException) {
      print("Flutter Hook exceptio n");
    }

    if (result.result.data != null) {
      print("Flutter Hook Success");
    }

    final collection = linksList
        ?.where((item) => item.group == Enum$StaticLinkGroup.Learn)
        .toList();

    return ListView.builder(
      // primary: true,
      shrinkWrap: true,
      itemCount: collection?.length ?? 1,
      itemBuilder: (BuildContext ctx, int index) {
        final item = collection![index];
        return listTile(
          title: item.title,
          subtitle: item.desc,
          icon: Icons.info,
          // imgUrl: item.url,
        );
      },
    );
  }
}
