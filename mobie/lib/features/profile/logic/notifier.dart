import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobarter/features/profile/logic/model.dart';

class KycFormNotifier extends StateNotifier<KycModel> {
  KycFormNotifier()
    : super(
        KycModel(
          dob: null,
          nin: null,
          bvn: null,
          phone: null,
          street: null,
          state: null,
          phoneToken: null,
          gender: null,
          phoneValidationStep: null,
        ),
      );

  void updateAddress({required String street, required String addressState}) {
    state = state.copyWith(street: street, state: addressState);
  }

  void updateGender(Gender gender) {
    state = state.copyWith(gender: gender);
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

  void updatePhone({
    required String phone,
    required String otp,
    required PhoneValidationStep step,
  }) {
    state = state.copyWith(
      phone: phone,
      phoneToken: otp,
      phoneValidationStep: step,
    );
  }

  void updatePhoneValidation(PhoneValidationStep step) {
    state = state.copyWith(phoneValidationStep: step);
  }

  void clearPhone() {
    state = state.copyWith(
      phone: null,
      phoneToken: null,
      phoneValidationStep: PhoneValidationStep.enterPhoneNo,
    );
  }
}
