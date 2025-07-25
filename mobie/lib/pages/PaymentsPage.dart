import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/graphql/schema/static.gql.dart';
import 'package:mobarter/pages/BettingPage.dart';
import 'package:mobarter/pages/ElectricityPage.dart';
import 'package:mobarter/pages/TVBillsPage.dart';
import 'package:mobarter/pages/TopUpPage.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
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
            screen: TopUpsPage(screen: TopUpScreen.airtime),
            withNavBar: false,
          );
          return;
        } else {
          apptToast(ctx, "Coming soon");
        }
      },
    ),
    PaymentProduct(
      title: 'Data Plans',
      icon: Icons.network_cell,
      onPressed: () {
        if (appInfo!.enableDataPlan) {
          pushScreen(
            ctx,
            screen: TopUpsPage(screen: TopUpScreen.dataPlan),
            withNavBar: false,
          );
        } else {
          apptToast(ctx, "Coming soon");
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
            screen: TopUpsPage(screen: TopUpScreen.dataBundle),
            withNavBar: false,
          );
        } else {
          apptToast(ctx, "Coming soon");
        }
      },
    ),
    PaymentProduct(
      title: 'Betting',
      onPressed: () {
        if (appInfo!.enableBetting) {
          pushScreen(ctx, screen: BettingPage(), withNavBar: false);
        } else {
          apptToast(ctx, "Coming soon");
        }
      },
      icon: Icons.gamepad,
    ),
    PaymentProduct(
      title: 'Electricity',
      icon: Icons.light,
      onPressed: () {
        if (appInfo!.enableElectricityBillPayment) {
          pushScreen(ctx, screen: ElectricityPage(), withNavBar: false);
        } else {
          apptToast(ctx, "Coming soon");
        }
      },
    ),
    PaymentProduct(
      title: 'TV',
      onPressed: () {
        if (appInfo!.enableTVBillPayment) {
          pushScreen(ctx, screen: TvBillsPage(), withNavBar: false);
        } else {
          apptToast(ctx, "Coming soon");
        }
      },
      icon: Icons.abc_outlined,
    ),
    // PaymentProduct(
    //   title: 'Webview',
    //   onPressed: () {
    //     // apptToast(ctx, "Coming soon");
    //     pushScreen(ctx, screen: AppWebView(), withNavBar: false);
    //   },
    //   icon: Icons.abc_outlined,
    // ),
  ];
}

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$static_appInfo(Options$Query$static_appInfo());
    final data = result.result.parsedData?.static_appInfo;

    final notReady = data == null || result.result.isLoading;

    return appScaffold(
      title: "Payments",
      noneScrollable: true,
      body: notReady
          ? CircularProgressIndicator()
          : GridView.count(
              crossAxisCount: 3, // number of columns
              crossAxisSpacing: 8,
              // mainAxisSpacing: 8,
              children: List.generate(productsList(context, data).length, (
                index,
              ) {
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
                      child: Text(item.title, style: TextStyle(fontSize: 11)),
                    ),
                  ],
                );
              }),
            ),
    );
  }
}
