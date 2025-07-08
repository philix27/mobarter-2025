import 'package:flutter/material.dart';
import 'package:mobarter/utils/size.dart';
import 'package:mobarter/widgets/row.dart';

class ShowBankAccounts extends StatelessWidget {
  const ShowBankAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getH(context, 0.5),
      child: SingleChildScrollView(
        child: Column(
          spacing: 0,
          children: [
            row(
              title: "ELIGBUE FELIX CHIDIEBELE",
              subtitle: "Opay | 8108850572",
              icon: Icons.account_box_outlined,
            ),
            row(
              title: "ELIGBUE FELIX CHIDIEBELE",
              subtitle: "Opay | 8108850572",
              icon: Icons.account_box_outlined,
            ),
            row(
              title: "ELIGBUE FELIX CHIDIEBELE",
              subtitle: "Opay | 8108850572",
              icon: Icons.account_box_outlined,
            ),
            row(
              title: "ELIGBUE FELIX CHIDIEBELE",
              subtitle: "Opay | 8108850572",
              icon: Icons.account_box_outlined,
            ),
            row(
              title: "ELIGBUE FELIX CHIDIEBELE",
              subtitle: "Opay | 8108850572",
              icon: Icons.account_box_outlined,
            ),
            row(
              title: "ELIGBUE FELIX CHIDIEBELE",
              subtitle: "Opay | 8108850572",
              icon: Icons.account_box_outlined,
            ),
            row(
              title: "Create",
              subtitle: "Add a new bank account",
              icon: Icons.create,
            ),
          ],
        ),
      ),
    );
  }
}
