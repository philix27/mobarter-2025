import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobarter/widgets/widgets.dart';

class KycPage extends HookConsumerWidget {
  const KycPage({super.key, required this.child, required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context, ref) {
    return appScaffold(context, title: title, body: child);
  }
}

// class KycPage extends HookConsumerWidget {
//   KycPage({super.key});
//   TextEditingController phone = TextEditingController();

//   @override
//   Widget build(BuildContext context, ref) {
//     final read = kycFormRead(ref);
//     final w = kycFormWatch(ref);
//     final kycSendPhoneOtp = useMutation$kyc_sendPhoneOtp();

//     return appScaffold(
//       context,
//       title: "KYC Verification",
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(right: 16.0),
//           child: Text(
//             "step ${getView(w.step).count}/7",
//             style: textTheme(context).bodySmall,
//           ),
//         ),
//       ],
//       body: Column(spacing: 14, children: [getView(w.step).widget]),
//     );
//   }
// }
