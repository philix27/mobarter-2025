import 'package:flutter/material.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/presentation/1enter_names.dart';
import 'package:mobarter/features/profile/presentation/3nin.dart';
import 'package:mobarter/features/profile/presentation/5address.dart';
import 'package:mobarter/features/profile/presentation/6phone.dart';

class KycFormInfo {
  final Widget widget;
  final int count;

  KycFormInfo({required this.widget, required this.count});
}

KycFormInfo getView(KycSteps? step) {
  switch (step) {
    case KycSteps.enterNames1:
      return KycFormInfo(widget: EnterNames1(), count: 1);
    case KycSteps.nin3:
      return KycFormInfo(count: 3, widget: EnterBvnNin3());
    case KycSteps.address5:
      return KycFormInfo(count: 5, widget: HomeAddress5());
    case KycSteps.phone6:
      return KycFormInfo(count: 6, widget: EnterPhone6());
    default:
      return KycFormInfo(count: 1, widget: EnterNames1());
  }
}
