import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/features/profile/logic/formatter.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/logic/provider.dart';
import 'package:mobarter/features/profile/presentation/1enter_names.dart';
import 'package:mobarter/features/profile/presentation/2select_dob.dart';
import 'package:mobarter/features/profile/presentation/3nin.dart';
import 'package:mobarter/features/profile/presentation/4bvn.dart';
import 'package:mobarter/features/profile/presentation/5address.dart';
import 'package:mobarter/features/profile/presentation/6phone.dart';
import 'package:mobarter/features/theme/themeHandlers.dart';
import 'package:mobarter/graphql/schema/_docs.graphql.dart';
import 'package:mobarter/graphql/schema/kyc.gql.dart';
import 'package:mobarter/widgets/widgets.dart';

class KycPage extends HookConsumerWidget {
  KycPage({super.key});
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final read = kycFormRead(ref);
    final w = kycFormWatch(ref);
    final kycSendPhoneOtp = useMutation$kyc_sendPhoneOtp();

    return appScaffold(
      context,
      title: "KYC Verification",
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Text(
            "step ${getView(w.step).count}/7",
            style: textTheme(context).bodySmall,
          ),
        ),
      ],
      body: Column(spacing: 14, children: [getView(w.step).widget]),
    );
  }
}
