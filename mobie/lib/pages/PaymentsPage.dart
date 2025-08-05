import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobarter/features/bill_betting/FundBettingWalletPage.dart';
import 'package:mobarter/features/bill_tv/TvBillsPage.dart';
import 'package:mobarter/features/theme/constColors.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/features/bill_electricity/ElectricityPage.dart';
import 'package:mobarter/features/bill_top_up/TopUpPage.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PaymentProduct {
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  PaymentProduct({
    required this.title,
    required this.icon,
    required this.onPressed,
  });
}

List<PaymentProduct> productsList(
  BuildContext ctx,
  Query$static_appInfo$static_appInfo? appInfo,
) {
  return [
    PaymentProduct(
      title: 'Airtime',
      icon: Icons.phone,
      onPressed: () {
        if (appInfo!.enableAirtime) {
          pushScreen(
            ctx,
            screen: TopUpsPage(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.slideUp,
          );
          return;
        } else {
          appToast(ctx, "Coming soon");
        }
      },
    ),

    PaymentProduct(
      title: 'Data Bundle',
      icon: Icons.network_cell,
      onPressed: () {
        if (appInfo!.enableDataPlan) {
          pushScreen(
            ctx,
            screen: TopUpsPage(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.slideUp,
          );
        } else {
          appToast(ctx, "Coming soon");
        }
      },
    ),
    PaymentProduct(
      title: 'Electricity',
      icon: Icons.light,
      onPressed: () {
        if (appInfo!.enableElectricityBillPayment) {
          pushScreen(
            ctx,
            screen: ElectricityPage(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.slideUp,
          );
        } else {
          appToast(ctx, "Coming soon");
        }
      },
    ),
    PaymentProduct(
      title: 'TV',
      onPressed: () {
        if (appInfo!.enableTVBillPayment) {
          pushScreen(
            ctx,
            screen: TvBillsPage(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.slideUp,
          );
        } else {
          appToast(ctx, "Coming soon");
        }
      },
      icon: Icons.abc_outlined,
    ),
    PaymentProduct(
      title: 'Betting',
      onPressed: () {
        if (appInfo!.enableBetting) {
          pushScreen(
            ctx,
            screen: FundBettingBillsPage(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.slideUp,
          );
        } else {
          appToast(ctx, "Coming soon");
        }
      },
      icon: Icons.gamepad,
    ),
  ];
}

class PaymentsPage extends HookWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_appInfo(Options$Query$static_appInfo());
    final data = result.result.parsedData?.static_appInfo;

    final notReady = data == null || result.result.isLoading;

    return appScaffold(
      context,
      title: "Services",
      noneScrollable: true,
      body: notReady
          ? const LoadingIndicator()
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: getH(context, 0.2),
                    padding: EdgeInsets.all(15),
                    color: Theme.of(context).cardColor,
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 4, // number of columns
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      children: List.generate(
                        productsList(context, data).length,
                        (index) {
                          final item = productsList(context, data)[index];
                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  color: colorPrimary,
                                  height: 45,
                                  width: 45,
                                  child: Center(
                                    child: IconButton(
                                      onPressed: item.onPressed,
                                      icon: Icon(
                                        Icons.wallet,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      // icon: Icon(item.icon, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Center(
                                child: Text(
                                  item.title,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Theme.of(context).disabledColor,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                MiniApps(),
              ],
            ),
    );
  }
}

class MiniApps extends HookWidget {
  const MiniApps({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_miniApps(Options$Query$static_miniApps());

    if (result.result.hasException) {
      return const Center(child: Text("Could not fetch data"));
    }

    if (result.result.data == null) {
      return LoadingIndicator();
    }

    final collection = result.result.parsedData?.static_miniApps;

    return ListView.builder(
      // primary: true,
      shrinkWrap: true,
      itemCount: collection?.length ?? 1,
      itemBuilder: (BuildContext ctx, int index) {
        final item = collection![index];
        return listTile(
          context,
          title: item.title,
          subtitle: item.description,
          onTap: () {
            pushScreen(
              ctx,
              screen: AppWebView(
                url: item.url,
                title: item.title,
                info: item.description,
              ),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.slideUp,
            );
          },
          imgUrl: item.logo,
        );
      },
    );
  }
}
