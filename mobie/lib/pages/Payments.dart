import 'package:flutter/material.dart';
import 'package:mobarter/constants/theme.dart';
import 'package:mobarter/features/AirtimePage.dart';
import 'package:mobarter/features/BettingPage.dart';
import 'package:mobarter/features/DataBundlePage.dart';
import 'package:mobarter/features/ElectricityPage.dart';
import 'package:mobarter/features/TVBillsPage.dart';
import 'package:mobarter/widgets/scaffold.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PaymentProduct {
  final String title;
  final Widget page;
  final IconData icon;

  PaymentProduct({required this.icon, required this.title, required this.page});
}

List<PaymentProduct> products = [
  PaymentProduct(title: 'Airtime', page: AirtimePage(), icon: Icons.phone),
  PaymentProduct(
    title: 'Data Bundle',
    page: DataBundlePage(),
    icon: Icons.network_cell,
  ),
  PaymentProduct(title: 'Betting', page: BettingPage(), icon: Icons.gamepad),
  PaymentProduct(
    title: 'Electricity',
    page: ElectricityPage(),
    icon: Icons.light,
  ),
  PaymentProduct(title: 'TV', page: TvBillsPage(), icon: Icons.abc_outlined),
  // PaymentProduct(title: 'Headphones', page: ElectricityPage()),
];

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
        children: List.generate(products.length, (index) {
          final item = products[index];
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
                      onPressed: () {
                        pushScreen(
                          context,
                          screen: item.page,
                          withNavBar: false,
                        );
                      },
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
