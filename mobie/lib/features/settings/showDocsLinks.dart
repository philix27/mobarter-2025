import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/utils/launcher.dart';
import 'package:mobarter/widgets/listTile.dart';

class DocsLinks extends StatelessWidget {
  const DocsLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return _DocsList();
  }
}

class _DocsList extends HookWidget {
  const _DocsList({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_getLinks(Options$Query$static_getLinks());
    final linksList = result.result.parsedData?.static_getLinks;

    if (result.result.hasException) {
      print("Flutter Hook exceptio n");
    }

    if (result.result.data == null) {
      return const Center(child: Text("No data found"));
    }

    final collection = linksList
        ?.where((item) => item.group == Enum$StaticLinkGroup.Docs)
        .toList();

    return ListView.builder(
      // primary: true,
      shrinkWrap: true,
      itemCount: collection?.length ?? 1,
      itemBuilder: (BuildContext ctx, int index) {
        //  Text(tokensList![index]["name"] ?? "No name");
        final item = collection![index];
        // return Text("data");
        item.group == Enum$StaticLinkGroup.Social;
        return listTile(
          context,
          title: item.title,
          subtitle: null,
          onTap: () {
            launchURL(item.url);
            Navigator.pop(context);
          },
          imgUrl: item.imgLink,
        );
      },
    );
  }
}
