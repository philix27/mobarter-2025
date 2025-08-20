enum KycSteps {
  enterNames1,
  selectDob2,
  nin3,
  bvn4,
  address5,
  phone6,
  summary7,
  phoneOtp8,
}
enum Gender {
  Male, Female
}
class KycModel {
  final KycSteps? step;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? dob;
  final String? nin;
  final String? bvn;
  final String? street;
  final String? state;
  final String? phone;
  final Gender? gender;

  KycModel({
    required this.step,
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.dob,
    required this.nin,
    required this.bvn,
    required this.street,
    required this.state,
    required this.phone,
    required this.gender,
  });

  KycModel copyWith({
    KycSteps? step,
    String? firstName,
    String? lastName,
    String? middleName,
    String? dob,
    String? nin,
    String? bvn,
    String? street,
    String? state,
    String? phone,
    Gender? gender,
  }) {
    return KycModel(
      step: step ?? step,
      firstName: firstName ?? firstName,
      lastName: lastName ?? lastName,
      middleName: middleName ?? middleName,
      dob: dob ?? dob,
      nin: nin ?? nin,
      bvn: bvn ?? bvn,
      street: street ?? street,
      state: state ?? state,
      phone: phone ?? phone,
      gender: gender ?? gender,
    );
  }
}
