import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mobarter/features/bank_account/logic/model.dart';
import 'package:mobarter/graphql/schema/bankAccount.gql.dart';
import 'package:mobarter/widgets/listTile.dart';

class BankItem extends StatelessWidget {
  BankItem({super.key, required this.item, this.onAddBank});
  final Query$BankAccount_getAll$bankAccount_getAll item;

  void Function(BankAccountModel bank)? onAddBank;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(0),

      // The start action pane is the one at the left or the top side.
      // startActionPane: ActionPane(
      //   // A motion is a widget used to control how the pane animates.
      //   motion: const ScrollMotion(),

      //   // A pane can dismiss the Slidable.
      //   dismissible: DismissiblePane(onDismissed: () {}),

      //   // All actions are defined in the children parameter.
      //   children: [
      //     // A SlidableAction can have an icon and/or a label.
      //     SlidableAction(
      //       backgroundColor: const Color(0xFFFE4A49),
      //       foregroundColor: Colors.white,
      //       icon: Icons.delete,
      //       label: 'Delete',
      //       onPressed: (BuildContext context) {},
      //     ),
      //     SlidableAction(
      //       onPressed: (BuildContext context) {},
      //       backgroundColor: const Color(0xFF21B7CA),
      //       foregroundColor: Colors.white,
      //       icon: Icons.share,
      //       label: 'Share',
      //     ),
      //   ],
      // ),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          // SlidableAction(
          //   // An action can be bigger than the others.
          //   flex: 2,
          //   onPressed: (BuildContext context) {},
          //   backgroundColor: Color(0xFF7BC043),
          //   foregroundColor: Colors.white,
          //   icon: Icons.archive,
          //   label: 'Archive',
          // ),
          SlidableAction(
            onPressed: (BuildContext context) {},
            backgroundColor: Color.fromARGB(255, 207, 34, 3),
            foregroundColor: Colors.white,
            icon: Icons.save,
            label: 'Save',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: listTile(
        context,
        title: item.account_name,
        subtitle: item.bank_name,
        imgUrl: item.account_no,
        onTap: () {
          if (onAddBank != null) {
            onAddBank!(
              BankAccountModel(
                accountNo: item.account_no,
                accountName: item.account_name,
                bankName: item.bank_name,
                bankCode: item.bankCode,
              ),
            );
          }
        },
      ),
    );
  }
}
