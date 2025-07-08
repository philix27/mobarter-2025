import 'package:flutter/material.dart';
import 'package:mobarter/widgets/scaffold.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return appScaffold(
      title: "Wallet",
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "500.90 USD",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "~800,000",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),

          tokenRow("Celo Dollar", "cUSD", "12.3"),
          tokenRow("US Dollar Tether", "USDT", "12.3"),
          tokenRow("US Dollar C", "USDC", "12.3"),
          tokenRow("Celo Naira", "cNGN", "12.3"),
        ],
      ),
    );
  }
}

Widget tokenRow(String title, String subtitle, String trailText) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      title,
      style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
    ),
    trailing: Text(
      trailText,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
    ),
    leading: Image.network(
      'https://images.pexels.com/photos/5980738/pexels-photo-5980738.jpeg',
      width: 35,
      height: 35,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.error, size: 35, color: Colors.red);
      },
    ),
  );
}
