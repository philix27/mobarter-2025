import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/pages/TopUpPage.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:mobarter/widgets/toast.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PaymentProduct {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  
  PaymentProduct({
    required this.onPressed,
    required this.icon,
    required this.title,
    // required this.page,
  });
}

List<PaymentProduct> productsList(BuildContext ctx) {
  return [
    PaymentProduct(
      title: 'Airtime',
      icon: Icons.phone,
      onPressed: () {
        pushScreen(
          ctx,
          screen: TopUpsPage(screen: TopUpScreen.airtime),
          withNavBar: false,
        );
      },
    ),
    PaymentProduct(
      title: 'Data Plans',
      icon: Icons.network_cell,
      onPressed: () {
        pushScreen(
          ctx,
          screen: TopUpsPage(screen: TopUpScreen.dataPlan),
          withNavBar: false,
        );
      },
    ),
    PaymentProduct(
      title: 'Data Bundle',
      icon: Icons.network_cell,
      onPressed: () {
        pushScreen(
          ctx,
          screen: TopUpsPage(screen: TopUpScreen.dataBundle),
          withNavBar: false,
        );
      },
    ),
    PaymentProduct(
      title: 'Betting',
      onPressed: () {
        apptToast(ctx, "Coming soon");
        // pushScreen(ctx, screen: BettingPage(), withNavBar: false);
      },
      icon: Icons.gamepad,
    ),
    PaymentProduct(
      title: 'Electricity',
      icon: Icons.light,
      onPressed: () {
        apptToast(ctx, "Coming soon");
        // pushScreen(ctx, screen: ElectricityPage(), withNavBar: false);
      },
    ),
    PaymentProduct(
      title: 'TV',
      onPressed: () {
        apptToast(ctx, "Coming soon");
        // pushScreen(ctx, screen: TvBillsPage(), withNavBar: false);
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
    return appScaffold(
      title: "Payments",
      noneScrollable: true,
      body: GridView.count(
        crossAxisCount: 3, // number of columns
        crossAxisSpacing: 8,
        // mainAxisSpacing: 8,
        children: List.generate(productsList(context).length, (index) {
          final item = productsList(context)[index];
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
                      icon: Icon(Icons.wallet, size: 25, color: Colors.white),
                      // icon: Icon(item.icon, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4),
              Center(child: Text(item.title, style: TextStyle(fontSize: 11))),
            ],
          );
        }),
      ),
    );
  }
}
