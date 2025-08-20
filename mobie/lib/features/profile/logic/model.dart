enum Gender { Male, Female }

class KycModel {
  final String? nin;
  final String? bvn;
  final String? street;
  final String? state;
  final String? phone;
  final String? dob;
  final Gender? gender;

  KycModel({
    required this.dob,
    required this.nin,
    required this.bvn,
    required this.street,
    required this.state,
    required this.phone,
    required this.gender,
  });

  KycModel copyWith({
    String? dob,
    String? nin,
    String? bvn,
    String? street,
    String? state,
    String? phone,
    Gender? gender,
  }) {
    return KycModel(
      dob: dob ?? this.dob,
      nin: nin ?? this.nin,
      bvn: bvn ?? this.bvn,
      street: street ?? this.street,
      state: state ?? this.state,
      phone: phone ?? this.phone,
      gender: gender ?? this.gender,
    );
  }
}
