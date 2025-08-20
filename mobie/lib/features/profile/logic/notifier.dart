import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';

class KycFormNotifier extends StateNotifier<KycModel> {
  KycFormNotifier()
    : super(
        KycModel(
          step: null,
          firstName: null,
          lastName: null,
          middleName: null,
          dob: null,
          nin: null,
          bvn: null,
          phone: null,
          street: null,
          state: null,
          gender: null,
        ),
      );

  void updateAddress({required String street, required String addressState}) {
    state = state.copyWith(street: street, state: addressState);
  }

  void updateGender(Gender gender) {
    state = state.copyWith(gender: gender);
  }
  void updateStep(KycSteps step) {
    state = state.copyWith(step: step);
  }

  void updateNin(String nin) {
    state = state.copyWith(nin: nin);
  }

  void updateBvn(String bvn) {
    state = state.copyWith(bvn: bvn);
  }

  void updateDob(String dob) {
    state = state.copyWith(dob: dob);
  }
  void updatePhone(String phone) {
    state = state.copyWith(phone: phone);
  }

  void updateNames({
    required String firstName,
    required String lastName,
    required String middleName,
  }) {
    state = state.copyWith(
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
    );
  }

  void clear() {
    // if (amountCrypto <= 0) return;
    state = state.copyWith(
      step: null,
      firstName: null,
      lastName: null,
      middleName: null,
      dob: null,
      nin: null,
      bvn: null,
      street: null,
      state: null,
    );
  }
}
