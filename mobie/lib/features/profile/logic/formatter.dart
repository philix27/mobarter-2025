import 'package:flutter/material.dart';
import 'package:mobarter/features/profile/logic/model.dart';
import 'package:mobarter/features/profile/presentation/1enter_names.dart';
import 'package:mobarter/features/profile/presentation/2select_dob.dart';
import 'package:mobarter/features/profile/presentation/3nin.dart';
import 'package:mobarter/features/profile/presentation/4bvn.dart';
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
    case KycSteps.selectDob2:
      return KycFormInfo(count: 2, widget: SelectDob2());
    case KycSteps.nin3:
      return KycFormInfo(count: 3, widget: EnterNin3());
    case KycSteps.bvn4:
      return KycFormInfo(count: 4, widget: EnterBvn4());
    case KycSteps.address5:
      return KycFormInfo(count: 5, widget: HomeAddress5());
    case KycSteps.phone6:
      return KycFormInfo(count: 6, widget: EnterPhone6());
    default:
      return KycFormInfo(count: 1, widget: EnterNames1());
  }
}
