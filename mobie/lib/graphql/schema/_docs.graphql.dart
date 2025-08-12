class Input$Auth_CreateAccountInput {
  factory Input$Auth_CreateAccountInput({
    required Enum$Country country,
    required String email,
    required String firstname,
    required String lastname,
    String? middlename,
    required String password,
  }) =>
      Input$Auth_CreateAccountInput._({
        r'country': country,
        r'email': email,
        r'firstname': firstname,
        r'lastname': lastname,
        if (middlename != null) r'middlename': middlename,
        r'password': password,
      });

  Input$Auth_CreateAccountInput._(this._$data);

  factory Input$Auth_CreateAccountInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$country = data['country'];
    result$data['country'] = fromJson$Enum$Country((l$country as String));
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$firstname = data['firstname'];
    result$data['firstname'] = (l$firstname as String);
    final l$lastname = data['lastname'];
    result$data['lastname'] = (l$lastname as String);
    if (data.containsKey('middlename')) {
      final l$middlename = data['middlename'];
      result$data['middlename'] = (l$middlename as String?);
    }
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$Auth_CreateAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get country => (_$data['country'] as Enum$Country);

  String get email => (_$data['email'] as String);

  String get firstname => (_$data['firstname'] as String);

  String get lastname => (_$data['lastname'] as String);

  String? get middlename => (_$data['middlename'] as String?);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$country = country;
    result$data['country'] = toJson$Enum$Country(l$country);
    final l$email = email;
    result$data['email'] = l$email;
    final l$firstname = firstname;
    result$data['firstname'] = l$firstname;
    final l$lastname = lastname;
    result$data['lastname'] = l$lastname;
    if (_$data.containsKey('middlename')) {
      final l$middlename = middlename;
      result$data['middlename'] = l$middlename;
    }
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$Auth_CreateAccountInput<Input$Auth_CreateAccountInput>
      get copyWith => CopyWith$Input$Auth_CreateAccountInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_CreateAccountInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstname = firstname;
    final lOther$firstname = other.firstname;
    if (l$firstname != lOther$firstname) {
      return false;
    }
    final l$lastname = lastname;
    final lOther$lastname = other.lastname;
    if (l$lastname != lOther$lastname) {
      return false;
    }
    final l$middlename = middlename;
    final lOther$middlename = other.middlename;
    if (_$data.containsKey('middlename') !=
        other._$data.containsKey('middlename')) {
      return false;
    }
    if (l$middlename != lOther$middlename) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$email = email;
    final l$firstname = firstname;
    final l$lastname = lastname;
    final l$middlename = middlename;
    final l$password = password;
    return Object.hashAll([
      l$country,
      l$email,
      l$firstname,
      l$lastname,
      _$data.containsKey('middlename') ? l$middlename : const {},
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$Auth_CreateAccountInput<TRes> {
  factory CopyWith$Input$Auth_CreateAccountInput(
    Input$Auth_CreateAccountInput instance,
    TRes Function(Input$Auth_CreateAccountInput) then,
  ) = _CopyWithImpl$Input$Auth_CreateAccountInput;

  factory CopyWith$Input$Auth_CreateAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_CreateAccountInput;

  TRes call({
    Enum$Country? country,
    String? email,
    String? firstname,
    String? lastname,
    String? middlename,
    String? password,
  });
}

class _CopyWithImpl$Input$Auth_CreateAccountInput<TRes>
    implements CopyWith$Input$Auth_CreateAccountInput<TRes> {
  _CopyWithImpl$Input$Auth_CreateAccountInput(
    this._instance,
    this._then,
  );

  final Input$Auth_CreateAccountInput _instance;

  final TRes Function(Input$Auth_CreateAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? email = _undefined,
    Object? firstname = _undefined,
    Object? lastname = _undefined,
    Object? middlename = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$Auth_CreateAccountInput._({
        ..._instance._$data,
        if (country != _undefined && country != null)
          'country': (country as Enum$Country),
        if (email != _undefined && email != null) 'email': (email as String),
        if (firstname != _undefined && firstname != null)
          'firstname': (firstname as String),
        if (lastname != _undefined && lastname != null)
          'lastname': (lastname as String),
        if (middlename != _undefined) 'middlename': (middlename as String?),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_CreateAccountInput<TRes>
    implements CopyWith$Input$Auth_CreateAccountInput<TRes> {
  _CopyWithStubImpl$Input$Auth_CreateAccountInput(this._res);

  TRes _res;

  call({
    Enum$Country? country,
    String? email,
    String? firstname,
    String? lastname,
    String? middlename,
    String? password,
  }) =>
      _res;
}

class Input$Auth_FirebaseLoginInput {
  factory Input$Auth_FirebaseLoginInput({required String idToken}) =>
      Input$Auth_FirebaseLoginInput._({
        r'idToken': idToken,
      });

  Input$Auth_FirebaseLoginInput._(this._$data);

  factory Input$Auth_FirebaseLoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$idToken = data['idToken'];
    result$data['idToken'] = (l$idToken as String);
    return Input$Auth_FirebaseLoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get idToken => (_$data['idToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$idToken = idToken;
    result$data['idToken'] = l$idToken;
    return result$data;
  }

  CopyWith$Input$Auth_FirebaseLoginInput<Input$Auth_FirebaseLoginInput>
      get copyWith => CopyWith$Input$Auth_FirebaseLoginInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_FirebaseLoginInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$idToken = idToken;
    final lOther$idToken = other.idToken;
    if (l$idToken != lOther$idToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$idToken = idToken;
    return Object.hashAll([l$idToken]);
  }
}

abstract class CopyWith$Input$Auth_FirebaseLoginInput<TRes> {
  factory CopyWith$Input$Auth_FirebaseLoginInput(
    Input$Auth_FirebaseLoginInput instance,
    TRes Function(Input$Auth_FirebaseLoginInput) then,
  ) = _CopyWithImpl$Input$Auth_FirebaseLoginInput;

  factory CopyWith$Input$Auth_FirebaseLoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_FirebaseLoginInput;

  TRes call({String? idToken});
}

class _CopyWithImpl$Input$Auth_FirebaseLoginInput<TRes>
    implements CopyWith$Input$Auth_FirebaseLoginInput<TRes> {
  _CopyWithImpl$Input$Auth_FirebaseLoginInput(
    this._instance,
    this._then,
  );

  final Input$Auth_FirebaseLoginInput _instance;

  final TRes Function(Input$Auth_FirebaseLoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? idToken = _undefined}) =>
      _then(Input$Auth_FirebaseLoginInput._({
        ..._instance._$data,
        if (idToken != _undefined && idToken != null)
          'idToken': (idToken as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_FirebaseLoginInput<TRes>
    implements CopyWith$Input$Auth_FirebaseLoginInput<TRes> {
  _CopyWithStubImpl$Input$Auth_FirebaseLoginInput(this._res);

  TRes _res;

  call({String? idToken}) => _res;
}

class Input$Auth_LoginInput {
  factory Input$Auth_LoginInput({
    required String email,
    required String password,
  }) =>
      Input$Auth_LoginInput._({
        r'email': email,
        r'password': password,
      });

  Input$Auth_LoginInput._(this._$data);

  factory Input$Auth_LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$Auth_LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$Auth_LoginInput<Input$Auth_LoginInput> get copyWith =>
      CopyWith$Input$Auth_LoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_LoginInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$Auth_LoginInput<TRes> {
  factory CopyWith$Input$Auth_LoginInput(
    Input$Auth_LoginInput instance,
    TRes Function(Input$Auth_LoginInput) then,
  ) = _CopyWithImpl$Input$Auth_LoginInput;

  factory CopyWith$Input$Auth_LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_LoginInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$Auth_LoginInput<TRes>
    implements CopyWith$Input$Auth_LoginInput<TRes> {
  _CopyWithImpl$Input$Auth_LoginInput(
    this._instance,
    this._then,
  );

  final Input$Auth_LoginInput _instance;

  final TRes Function(Input$Auth_LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$Auth_LoginInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_LoginInput<TRes>
    implements CopyWith$Input$Auth_LoginInput<TRes> {
  _CopyWithStubImpl$Input$Auth_LoginInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$Auth_LoginMinipayInput {
  factory Input$Auth_LoginMinipayInput({required String walletAddress}) =>
      Input$Auth_LoginMinipayInput._({
        r'walletAddress': walletAddress,
      });

  Input$Auth_LoginMinipayInput._(this._$data);

  factory Input$Auth_LoginMinipayInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$walletAddress = data['walletAddress'];
    result$data['walletAddress'] = (l$walletAddress as String);
    return Input$Auth_LoginMinipayInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get walletAddress => (_$data['walletAddress'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$walletAddress = walletAddress;
    result$data['walletAddress'] = l$walletAddress;
    return result$data;
  }

  CopyWith$Input$Auth_LoginMinipayInput<Input$Auth_LoginMinipayInput>
      get copyWith => CopyWith$Input$Auth_LoginMinipayInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_LoginMinipayInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$walletAddress = walletAddress;
    final lOther$walletAddress = other.walletAddress;
    if (l$walletAddress != lOther$walletAddress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$walletAddress = walletAddress;
    return Object.hashAll([l$walletAddress]);
  }
}

abstract class CopyWith$Input$Auth_LoginMinipayInput<TRes> {
  factory CopyWith$Input$Auth_LoginMinipayInput(
    Input$Auth_LoginMinipayInput instance,
    TRes Function(Input$Auth_LoginMinipayInput) then,
  ) = _CopyWithImpl$Input$Auth_LoginMinipayInput;

  factory CopyWith$Input$Auth_LoginMinipayInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_LoginMinipayInput;

  TRes call({String? walletAddress});
}

class _CopyWithImpl$Input$Auth_LoginMinipayInput<TRes>
    implements CopyWith$Input$Auth_LoginMinipayInput<TRes> {
  _CopyWithImpl$Input$Auth_LoginMinipayInput(
    this._instance,
    this._then,
  );

  final Input$Auth_LoginMinipayInput _instance;

  final TRes Function(Input$Auth_LoginMinipayInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? walletAddress = _undefined}) =>
      _then(Input$Auth_LoginMinipayInput._({
        ..._instance._$data,
        if (walletAddress != _undefined && walletAddress != null)
          'walletAddress': (walletAddress as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_LoginMinipayInput<TRes>
    implements CopyWith$Input$Auth_LoginMinipayInput<TRes> {
  _CopyWithStubImpl$Input$Auth_LoginMinipayInput(this._res);

  TRes _res;

  call({String? walletAddress}) => _res;
}

class Input$Auth_LogoutInput {
  factory Input$Auth_LogoutInput({required String email}) =>
      Input$Auth_LogoutInput._({
        r'email': email,
      });

  Input$Auth_LogoutInput._(this._$data);

  factory Input$Auth_LogoutInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    return Input$Auth_LogoutInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    return result$data;
  }

  CopyWith$Input$Auth_LogoutInput<Input$Auth_LogoutInput> get copyWith =>
      CopyWith$Input$Auth_LogoutInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_LogoutInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    return Object.hashAll([l$email]);
  }
}

abstract class CopyWith$Input$Auth_LogoutInput<TRes> {
  factory CopyWith$Input$Auth_LogoutInput(
    Input$Auth_LogoutInput instance,
    TRes Function(Input$Auth_LogoutInput) then,
  ) = _CopyWithImpl$Input$Auth_LogoutInput;

  factory CopyWith$Input$Auth_LogoutInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_LogoutInput;

  TRes call({String? email});
}

class _CopyWithImpl$Input$Auth_LogoutInput<TRes>
    implements CopyWith$Input$Auth_LogoutInput<TRes> {
  _CopyWithImpl$Input$Auth_LogoutInput(
    this._instance,
    this._then,
  );

  final Input$Auth_LogoutInput _instance;

  final TRes Function(Input$Auth_LogoutInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined}) => _then(Input$Auth_LogoutInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_LogoutInput<TRes>
    implements CopyWith$Input$Auth_LogoutInput<TRes> {
  _CopyWithStubImpl$Input$Auth_LogoutInput(this._res);

  TRes _res;

  call({String? email}) => _res;
}

class Input$Auth_MinipayCreateAccountInput {
  factory Input$Auth_MinipayCreateAccountInput({
    required String email,
    required String walletAddress,
  }) =>
      Input$Auth_MinipayCreateAccountInput._({
        r'email': email,
        r'walletAddress': walletAddress,
      });

  Input$Auth_MinipayCreateAccountInput._(this._$data);

  factory Input$Auth_MinipayCreateAccountInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$walletAddress = data['walletAddress'];
    result$data['walletAddress'] = (l$walletAddress as String);
    return Input$Auth_MinipayCreateAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get walletAddress => (_$data['walletAddress'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$walletAddress = walletAddress;
    result$data['walletAddress'] = l$walletAddress;
    return result$data;
  }

  CopyWith$Input$Auth_MinipayCreateAccountInput<
          Input$Auth_MinipayCreateAccountInput>
      get copyWith => CopyWith$Input$Auth_MinipayCreateAccountInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_MinipayCreateAccountInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$walletAddress = walletAddress;
    final lOther$walletAddress = other.walletAddress;
    if (l$walletAddress != lOther$walletAddress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$walletAddress = walletAddress;
    return Object.hashAll([
      l$email,
      l$walletAddress,
    ]);
  }
}

abstract class CopyWith$Input$Auth_MinipayCreateAccountInput<TRes> {
  factory CopyWith$Input$Auth_MinipayCreateAccountInput(
    Input$Auth_MinipayCreateAccountInput instance,
    TRes Function(Input$Auth_MinipayCreateAccountInput) then,
  ) = _CopyWithImpl$Input$Auth_MinipayCreateAccountInput;

  factory CopyWith$Input$Auth_MinipayCreateAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_MinipayCreateAccountInput;

  TRes call({
    String? email,
    String? walletAddress,
  });
}

class _CopyWithImpl$Input$Auth_MinipayCreateAccountInput<TRes>
    implements CopyWith$Input$Auth_MinipayCreateAccountInput<TRes> {
  _CopyWithImpl$Input$Auth_MinipayCreateAccountInput(
    this._instance,
    this._then,
  );

  final Input$Auth_MinipayCreateAccountInput _instance;

  final TRes Function(Input$Auth_MinipayCreateAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? walletAddress = _undefined,
  }) =>
      _then(Input$Auth_MinipayCreateAccountInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (walletAddress != _undefined && walletAddress != null)
          'walletAddress': (walletAddress as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_MinipayCreateAccountInput<TRes>
    implements CopyWith$Input$Auth_MinipayCreateAccountInput<TRes> {
  _CopyWithStubImpl$Input$Auth_MinipayCreateAccountInput(this._res);

  TRes _res;

  call({
    String? email,
    String? walletAddress,
  }) =>
      _res;
}

class Input$Auth_ResetPasswordInput {
  factory Input$Auth_ResetPasswordInput({
    required String confirmPassword,
    required String email,
    required String password,
  }) =>
      Input$Auth_ResetPasswordInput._({
        r'confirmPassword': confirmPassword,
        r'email': email,
        r'password': password,
      });

  Input$Auth_ResetPasswordInput._(this._$data);

  factory Input$Auth_ResetPasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$confirmPassword = data['confirmPassword'];
    result$data['confirmPassword'] = (l$confirmPassword as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$Auth_ResetPasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get confirmPassword => (_$data['confirmPassword'] as String);

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$confirmPassword = confirmPassword;
    result$data['confirmPassword'] = l$confirmPassword;
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$Auth_ResetPasswordInput<Input$Auth_ResetPasswordInput>
      get copyWith => CopyWith$Input$Auth_ResetPasswordInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_ResetPasswordInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$confirmPassword = confirmPassword;
    final lOther$confirmPassword = other.confirmPassword;
    if (l$confirmPassword != lOther$confirmPassword) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$confirmPassword = confirmPassword;
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$confirmPassword,
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$Auth_ResetPasswordInput<TRes> {
  factory CopyWith$Input$Auth_ResetPasswordInput(
    Input$Auth_ResetPasswordInput instance,
    TRes Function(Input$Auth_ResetPasswordInput) then,
  ) = _CopyWithImpl$Input$Auth_ResetPasswordInput;

  factory CopyWith$Input$Auth_ResetPasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_ResetPasswordInput;

  TRes call({
    String? confirmPassword,
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$Auth_ResetPasswordInput<TRes>
    implements CopyWith$Input$Auth_ResetPasswordInput<TRes> {
  _CopyWithImpl$Input$Auth_ResetPasswordInput(
    this._instance,
    this._then,
  );

  final Input$Auth_ResetPasswordInput _instance;

  final TRes Function(Input$Auth_ResetPasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? confirmPassword = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$Auth_ResetPasswordInput._({
        ..._instance._$data,
        if (confirmPassword != _undefined && confirmPassword != null)
          'confirmPassword': (confirmPassword as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_ResetPasswordInput<TRes>
    implements CopyWith$Input$Auth_ResetPasswordInput<TRes> {
  _CopyWithStubImpl$Input$Auth_ResetPasswordInput(this._res);

  TRes _res;

  call({
    String? confirmPassword,
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$Auth_TelegramLoginInput {
  factory Input$Auth_TelegramLoginInput({
    required String telegramUserId,
    required String walletAddress,
  }) =>
      Input$Auth_TelegramLoginInput._({
        r'telegramUserId': telegramUserId,
        r'walletAddress': walletAddress,
      });

  Input$Auth_TelegramLoginInput._(this._$data);

  factory Input$Auth_TelegramLoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$telegramUserId = data['telegramUserId'];
    result$data['telegramUserId'] = (l$telegramUserId as String);
    final l$walletAddress = data['walletAddress'];
    result$data['walletAddress'] = (l$walletAddress as String);
    return Input$Auth_TelegramLoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get telegramUserId => (_$data['telegramUserId'] as String);

  String get walletAddress => (_$data['walletAddress'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$telegramUserId = telegramUserId;
    result$data['telegramUserId'] = l$telegramUserId;
    final l$walletAddress = walletAddress;
    result$data['walletAddress'] = l$walletAddress;
    return result$data;
  }

  CopyWith$Input$Auth_TelegramLoginInput<Input$Auth_TelegramLoginInput>
      get copyWith => CopyWith$Input$Auth_TelegramLoginInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_TelegramLoginInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$telegramUserId = telegramUserId;
    final lOther$telegramUserId = other.telegramUserId;
    if (l$telegramUserId != lOther$telegramUserId) {
      return false;
    }
    final l$walletAddress = walletAddress;
    final lOther$walletAddress = other.walletAddress;
    if (l$walletAddress != lOther$walletAddress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$telegramUserId = telegramUserId;
    final l$walletAddress = walletAddress;
    return Object.hashAll([
      l$telegramUserId,
      l$walletAddress,
    ]);
  }
}

abstract class CopyWith$Input$Auth_TelegramLoginInput<TRes> {
  factory CopyWith$Input$Auth_TelegramLoginInput(
    Input$Auth_TelegramLoginInput instance,
    TRes Function(Input$Auth_TelegramLoginInput) then,
  ) = _CopyWithImpl$Input$Auth_TelegramLoginInput;

  factory CopyWith$Input$Auth_TelegramLoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_TelegramLoginInput;

  TRes call({
    String? telegramUserId,
    String? walletAddress,
  });
}

class _CopyWithImpl$Input$Auth_TelegramLoginInput<TRes>
    implements CopyWith$Input$Auth_TelegramLoginInput<TRes> {
  _CopyWithImpl$Input$Auth_TelegramLoginInput(
    this._instance,
    this._then,
  );

  final Input$Auth_TelegramLoginInput _instance;

  final TRes Function(Input$Auth_TelegramLoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? telegramUserId = _undefined,
    Object? walletAddress = _undefined,
  }) =>
      _then(Input$Auth_TelegramLoginInput._({
        ..._instance._$data,
        if (telegramUserId != _undefined && telegramUserId != null)
          'telegramUserId': (telegramUserId as String),
        if (walletAddress != _undefined && walletAddress != null)
          'walletAddress': (walletAddress as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_TelegramLoginInput<TRes>
    implements CopyWith$Input$Auth_TelegramLoginInput<TRes> {
  _CopyWithStubImpl$Input$Auth_TelegramLoginInput(this._res);

  TRes _res;

  call({
    String? telegramUserId,
    String? walletAddress,
  }) =>
      _res;
}

class Input$Auth_ThirdwebLoginInput {
  factory Input$Auth_ThirdwebLoginInput({
    required String email,
    required String payload,
    required String walletAddress,
  }) =>
      Input$Auth_ThirdwebLoginInput._({
        r'email': email,
        r'payload': payload,
        r'walletAddress': walletAddress,
      });

  Input$Auth_ThirdwebLoginInput._(this._$data);

  factory Input$Auth_ThirdwebLoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$payload = data['payload'];
    result$data['payload'] = (l$payload as String);
    final l$walletAddress = data['walletAddress'];
    result$data['walletAddress'] = (l$walletAddress as String);
    return Input$Auth_ThirdwebLoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get payload => (_$data['payload'] as String);

  String get walletAddress => (_$data['walletAddress'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$payload = payload;
    result$data['payload'] = l$payload;
    final l$walletAddress = walletAddress;
    result$data['walletAddress'] = l$walletAddress;
    return result$data;
  }

  CopyWith$Input$Auth_ThirdwebLoginInput<Input$Auth_ThirdwebLoginInput>
      get copyWith => CopyWith$Input$Auth_ThirdwebLoginInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_ThirdwebLoginInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$payload = payload;
    final lOther$payload = other.payload;
    if (l$payload != lOther$payload) {
      return false;
    }
    final l$walletAddress = walletAddress;
    final lOther$walletAddress = other.walletAddress;
    if (l$walletAddress != lOther$walletAddress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$payload = payload;
    final l$walletAddress = walletAddress;
    return Object.hashAll([
      l$email,
      l$payload,
      l$walletAddress,
    ]);
  }
}

abstract class CopyWith$Input$Auth_ThirdwebLoginInput<TRes> {
  factory CopyWith$Input$Auth_ThirdwebLoginInput(
    Input$Auth_ThirdwebLoginInput instance,
    TRes Function(Input$Auth_ThirdwebLoginInput) then,
  ) = _CopyWithImpl$Input$Auth_ThirdwebLoginInput;

  factory CopyWith$Input$Auth_ThirdwebLoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_ThirdwebLoginInput;

  TRes call({
    String? email,
    String? payload,
    String? walletAddress,
  });
}

class _CopyWithImpl$Input$Auth_ThirdwebLoginInput<TRes>
    implements CopyWith$Input$Auth_ThirdwebLoginInput<TRes> {
  _CopyWithImpl$Input$Auth_ThirdwebLoginInput(
    this._instance,
    this._then,
  );

  final Input$Auth_ThirdwebLoginInput _instance;

  final TRes Function(Input$Auth_ThirdwebLoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? payload = _undefined,
    Object? walletAddress = _undefined,
  }) =>
      _then(Input$Auth_ThirdwebLoginInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (payload != _undefined && payload != null)
          'payload': (payload as String),
        if (walletAddress != _undefined && walletAddress != null)
          'walletAddress': (walletAddress as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_ThirdwebLoginInput<TRes>
    implements CopyWith$Input$Auth_ThirdwebLoginInput<TRes> {
  _CopyWithStubImpl$Input$Auth_ThirdwebLoginInput(this._res);

  TRes _res;

  call({
    String? email,
    String? payload,
    String? walletAddress,
  }) =>
      _res;
}

class Input$Auth_sendEmailOtpInput {
  factory Input$Auth_sendEmailOtpInput({
    required String email,
    required Enum$OtpPurpose purpose,
  }) =>
      Input$Auth_sendEmailOtpInput._({
        r'email': email,
        r'purpose': purpose,
      });

  Input$Auth_sendEmailOtpInput._(this._$data);

  factory Input$Auth_sendEmailOtpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$purpose = data['purpose'];
    result$data['purpose'] = fromJson$Enum$OtpPurpose((l$purpose as String));
    return Input$Auth_sendEmailOtpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  Enum$OtpPurpose get purpose => (_$data['purpose'] as Enum$OtpPurpose);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$purpose = purpose;
    result$data['purpose'] = toJson$Enum$OtpPurpose(l$purpose);
    return result$data;
  }

  CopyWith$Input$Auth_sendEmailOtpInput<Input$Auth_sendEmailOtpInput>
      get copyWith => CopyWith$Input$Auth_sendEmailOtpInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_sendEmailOtpInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$purpose = purpose;
    final lOther$purpose = other.purpose;
    if (l$purpose != lOther$purpose) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$purpose = purpose;
    return Object.hashAll([
      l$email,
      l$purpose,
    ]);
  }
}

abstract class CopyWith$Input$Auth_sendEmailOtpInput<TRes> {
  factory CopyWith$Input$Auth_sendEmailOtpInput(
    Input$Auth_sendEmailOtpInput instance,
    TRes Function(Input$Auth_sendEmailOtpInput) then,
  ) = _CopyWithImpl$Input$Auth_sendEmailOtpInput;

  factory CopyWith$Input$Auth_sendEmailOtpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_sendEmailOtpInput;

  TRes call({
    String? email,
    Enum$OtpPurpose? purpose,
  });
}

class _CopyWithImpl$Input$Auth_sendEmailOtpInput<TRes>
    implements CopyWith$Input$Auth_sendEmailOtpInput<TRes> {
  _CopyWithImpl$Input$Auth_sendEmailOtpInput(
    this._instance,
    this._then,
  );

  final Input$Auth_sendEmailOtpInput _instance;

  final TRes Function(Input$Auth_sendEmailOtpInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? purpose = _undefined,
  }) =>
      _then(Input$Auth_sendEmailOtpInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (purpose != _undefined && purpose != null)
          'purpose': (purpose as Enum$OtpPurpose),
      }));
}

class _CopyWithStubImpl$Input$Auth_sendEmailOtpInput<TRes>
    implements CopyWith$Input$Auth_sendEmailOtpInput<TRes> {
  _CopyWithStubImpl$Input$Auth_sendEmailOtpInput(this._res);

  TRes _res;

  call({
    String? email,
    Enum$OtpPurpose? purpose,
  }) =>
      _res;
}

class Input$Auth_verifyEmailOtpInput {
  factory Input$Auth_verifyEmailOtpInput({
    required String email,
    required String otp,
    required String token,
  }) =>
      Input$Auth_verifyEmailOtpInput._({
        r'email': email,
        r'otp': otp,
        r'token': token,
      });

  Input$Auth_verifyEmailOtpInput._(this._$data);

  factory Input$Auth_verifyEmailOtpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$otp = data['otp'];
    result$data['otp'] = (l$otp as String);
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Input$Auth_verifyEmailOtpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get otp => (_$data['otp'] as String);

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$otp = otp;
    result$data['otp'] = l$otp;
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Input$Auth_verifyEmailOtpInput<Input$Auth_verifyEmailOtpInput>
      get copyWith => CopyWith$Input$Auth_verifyEmailOtpInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Auth_verifyEmailOtpInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$otp = otp;
    final lOther$otp = other.otp;
    if (l$otp != lOther$otp) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$otp = otp;
    final l$token = token;
    return Object.hashAll([
      l$email,
      l$otp,
      l$token,
    ]);
  }
}

abstract class CopyWith$Input$Auth_verifyEmailOtpInput<TRes> {
  factory CopyWith$Input$Auth_verifyEmailOtpInput(
    Input$Auth_verifyEmailOtpInput instance,
    TRes Function(Input$Auth_verifyEmailOtpInput) then,
  ) = _CopyWithImpl$Input$Auth_verifyEmailOtpInput;

  factory CopyWith$Input$Auth_verifyEmailOtpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Auth_verifyEmailOtpInput;

  TRes call({
    String? email,
    String? otp,
    String? token,
  });
}

class _CopyWithImpl$Input$Auth_verifyEmailOtpInput<TRes>
    implements CopyWith$Input$Auth_verifyEmailOtpInput<TRes> {
  _CopyWithImpl$Input$Auth_verifyEmailOtpInput(
    this._instance,
    this._then,
  );

  final Input$Auth_verifyEmailOtpInput _instance;

  final TRes Function(Input$Auth_verifyEmailOtpInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? otp = _undefined,
    Object? token = _undefined,
  }) =>
      _then(Input$Auth_verifyEmailOtpInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (otp != _undefined && otp != null) 'otp': (otp as String),
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Input$Auth_verifyEmailOtpInput<TRes>
    implements CopyWith$Input$Auth_verifyEmailOtpInput<TRes> {
  _CopyWithStubImpl$Input$Auth_verifyEmailOtpInput(this._res);

  TRes _res;

  call({
    String? email,
    String? otp,
    String? token,
  }) =>
      _res;
}

class Input$BankAccount_CreateInput {
  factory Input$BankAccount_CreateInput({
    required String accountName,
    required String accountNo,
    String? bankCode,
    required String bankName,
  }) =>
      Input$BankAccount_CreateInput._({
        r'accountName': accountName,
        r'accountNo': accountNo,
        if (bankCode != null) r'bankCode': bankCode,
        r'bankName': bankName,
      });

  Input$BankAccount_CreateInput._(this._$data);

  factory Input$BankAccount_CreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountName = data['accountName'];
    result$data['accountName'] = (l$accountName as String);
    final l$accountNo = data['accountNo'];
    result$data['accountNo'] = (l$accountNo as String);
    if (data.containsKey('bankCode')) {
      final l$bankCode = data['bankCode'];
      result$data['bankCode'] = (l$bankCode as String?);
    }
    final l$bankName = data['bankName'];
    result$data['bankName'] = (l$bankName as String);
    return Input$BankAccount_CreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountName => (_$data['accountName'] as String);

  String get accountNo => (_$data['accountNo'] as String);

  String? get bankCode => (_$data['bankCode'] as String?);

  String get bankName => (_$data['bankName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountName = accountName;
    result$data['accountName'] = l$accountName;
    final l$accountNo = accountNo;
    result$data['accountNo'] = l$accountNo;
    if (_$data.containsKey('bankCode')) {
      final l$bankCode = bankCode;
      result$data['bankCode'] = l$bankCode;
    }
    final l$bankName = bankName;
    result$data['bankName'] = l$bankName;
    return result$data;
  }

  CopyWith$Input$BankAccount_CreateInput<Input$BankAccount_CreateInput>
      get copyWith => CopyWith$Input$BankAccount_CreateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BankAccount_CreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountName = accountName;
    final lOther$accountName = other.accountName;
    if (l$accountName != lOther$accountName) {
      return false;
    }
    final l$accountNo = accountNo;
    final lOther$accountNo = other.accountNo;
    if (l$accountNo != lOther$accountNo) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (_$data.containsKey('bankCode') !=
        other._$data.containsKey('bankCode')) {
      return false;
    }
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountName = accountName;
    final l$accountNo = accountNo;
    final l$bankCode = bankCode;
    final l$bankName = bankName;
    return Object.hashAll([
      l$accountName,
      l$accountNo,
      _$data.containsKey('bankCode') ? l$bankCode : const {},
      l$bankName,
    ]);
  }
}

abstract class CopyWith$Input$BankAccount_CreateInput<TRes> {
  factory CopyWith$Input$BankAccount_CreateInput(
    Input$BankAccount_CreateInput instance,
    TRes Function(Input$BankAccount_CreateInput) then,
  ) = _CopyWithImpl$Input$BankAccount_CreateInput;

  factory CopyWith$Input$BankAccount_CreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BankAccount_CreateInput;

  TRes call({
    String? accountName,
    String? accountNo,
    String? bankCode,
    String? bankName,
  });
}

class _CopyWithImpl$Input$BankAccount_CreateInput<TRes>
    implements CopyWith$Input$BankAccount_CreateInput<TRes> {
  _CopyWithImpl$Input$BankAccount_CreateInput(
    this._instance,
    this._then,
  );

  final Input$BankAccount_CreateInput _instance;

  final TRes Function(Input$BankAccount_CreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountName = _undefined,
    Object? accountNo = _undefined,
    Object? bankCode = _undefined,
    Object? bankName = _undefined,
  }) =>
      _then(Input$BankAccount_CreateInput._({
        ..._instance._$data,
        if (accountName != _undefined && accountName != null)
          'accountName': (accountName as String),
        if (accountNo != _undefined && accountNo != null)
          'accountNo': (accountNo as String),
        if (bankCode != _undefined) 'bankCode': (bankCode as String?),
        if (bankName != _undefined && bankName != null)
          'bankName': (bankName as String),
      }));
}

class _CopyWithStubImpl$Input$BankAccount_CreateInput<TRes>
    implements CopyWith$Input$BankAccount_CreateInput<TRes> {
  _CopyWithStubImpl$Input$BankAccount_CreateInput(this._res);

  TRes _res;

  call({
    String? accountName,
    String? accountNo,
    String? bankCode,
    String? bankName,
  }) =>
      _res;
}

class Input$BankAccount_DeleteInput {
  factory Input$BankAccount_DeleteInput({required double accountId}) =>
      Input$BankAccount_DeleteInput._({
        r'accountId': accountId,
      });

  Input$BankAccount_DeleteInput._(this._$data);

  factory Input$BankAccount_DeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountId = data['accountId'];
    result$data['accountId'] = (l$accountId as num).toDouble();
    return Input$BankAccount_DeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get accountId => (_$data['accountId'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountId = accountId;
    result$data['accountId'] = l$accountId;
    return result$data;
  }

  CopyWith$Input$BankAccount_DeleteInput<Input$BankAccount_DeleteInput>
      get copyWith => CopyWith$Input$BankAccount_DeleteInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BankAccount_DeleteInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    return Object.hashAll([l$accountId]);
  }
}

abstract class CopyWith$Input$BankAccount_DeleteInput<TRes> {
  factory CopyWith$Input$BankAccount_DeleteInput(
    Input$BankAccount_DeleteInput instance,
    TRes Function(Input$BankAccount_DeleteInput) then,
  ) = _CopyWithImpl$Input$BankAccount_DeleteInput;

  factory CopyWith$Input$BankAccount_DeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BankAccount_DeleteInput;

  TRes call({double? accountId});
}

class _CopyWithImpl$Input$BankAccount_DeleteInput<TRes>
    implements CopyWith$Input$BankAccount_DeleteInput<TRes> {
  _CopyWithImpl$Input$BankAccount_DeleteInput(
    this._instance,
    this._then,
  );

  final Input$BankAccount_DeleteInput _instance;

  final TRes Function(Input$BankAccount_DeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountId = _undefined}) =>
      _then(Input$BankAccount_DeleteInput._({
        ..._instance._$data,
        if (accountId != _undefined && accountId != null)
          'accountId': (accountId as double),
      }));
}

class _CopyWithStubImpl$Input$BankAccount_DeleteInput<TRes>
    implements CopyWith$Input$BankAccount_DeleteInput<TRes> {
  _CopyWithStubImpl$Input$BankAccount_DeleteInput(this._res);

  TRes _res;

  call({double? accountId}) => _res;
}

class Input$BankGetAccountName_Input {
  factory Input$BankGetAccountName_Input({
    required String accountNo,
    String? bankCode,
  }) =>
      Input$BankGetAccountName_Input._({
        r'accountNo': accountNo,
        if (bankCode != null) r'bankCode': bankCode,
      });

  Input$BankGetAccountName_Input._(this._$data);

  factory Input$BankGetAccountName_Input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountNo = data['accountNo'];
    result$data['accountNo'] = (l$accountNo as String);
    if (data.containsKey('bankCode')) {
      final l$bankCode = data['bankCode'];
      result$data['bankCode'] = (l$bankCode as String?);
    }
    return Input$BankGetAccountName_Input._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountNo => (_$data['accountNo'] as String);

  String? get bankCode => (_$data['bankCode'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountNo = accountNo;
    result$data['accountNo'] = l$accountNo;
    if (_$data.containsKey('bankCode')) {
      final l$bankCode = bankCode;
      result$data['bankCode'] = l$bankCode;
    }
    return result$data;
  }

  CopyWith$Input$BankGetAccountName_Input<Input$BankGetAccountName_Input>
      get copyWith => CopyWith$Input$BankGetAccountName_Input(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BankGetAccountName_Input ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNo = accountNo;
    final lOther$accountNo = other.accountNo;
    if (l$accountNo != lOther$accountNo) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (_$data.containsKey('bankCode') !=
        other._$data.containsKey('bankCode')) {
      return false;
    }
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountNo = accountNo;
    final l$bankCode = bankCode;
    return Object.hashAll([
      l$accountNo,
      _$data.containsKey('bankCode') ? l$bankCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$BankGetAccountName_Input<TRes> {
  factory CopyWith$Input$BankGetAccountName_Input(
    Input$BankGetAccountName_Input instance,
    TRes Function(Input$BankGetAccountName_Input) then,
  ) = _CopyWithImpl$Input$BankGetAccountName_Input;

  factory CopyWith$Input$BankGetAccountName_Input.stub(TRes res) =
      _CopyWithStubImpl$Input$BankGetAccountName_Input;

  TRes call({
    String? accountNo,
    String? bankCode,
  });
}

class _CopyWithImpl$Input$BankGetAccountName_Input<TRes>
    implements CopyWith$Input$BankGetAccountName_Input<TRes> {
  _CopyWithImpl$Input$BankGetAccountName_Input(
    this._instance,
    this._then,
  );

  final Input$BankGetAccountName_Input _instance;

  final TRes Function(Input$BankGetAccountName_Input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNo = _undefined,
    Object? bankCode = _undefined,
  }) =>
      _then(Input$BankGetAccountName_Input._({
        ..._instance._$data,
        if (accountNo != _undefined && accountNo != null)
          'accountNo': (accountNo as String),
        if (bankCode != _undefined) 'bankCode': (bankCode as String?),
      }));
}

class _CopyWithStubImpl$Input$BankGetAccountName_Input<TRes>
    implements CopyWith$Input$BankGetAccountName_Input<TRes> {
  _CopyWithStubImpl$Input$BankGetAccountName_Input(this._res);

  TRes _res;

  call({
    String? accountNo,
    String? bankCode,
  }) =>
      _res;
}

class Input$BettingPaymentInput {
  factory Input$BettingPaymentInput({
    required Enum$Country countryCode,
    required String customer_id,
    required Input$PaymentInput payment,
    required String service_id,
  }) =>
      Input$BettingPaymentInput._({
        r'countryCode': countryCode,
        r'customer_id': customer_id,
        r'payment': payment,
        r'service_id': service_id,
      });

  Input$BettingPaymentInput._(this._$data);

  factory Input$BettingPaymentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    final l$customer_id = data['customer_id'];
    result$data['customer_id'] = (l$customer_id as String);
    final l$payment = data['payment'];
    result$data['payment'] =
        Input$PaymentInput.fromJson((l$payment as Map<String, dynamic>));
    final l$service_id = data['service_id'];
    result$data['service_id'] = (l$service_id as String);
    return Input$BettingPaymentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  String get customer_id => (_$data['customer_id'] as String);

  Input$PaymentInput get payment => (_$data['payment'] as Input$PaymentInput);

  String get service_id => (_$data['service_id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    final l$customer_id = customer_id;
    result$data['customer_id'] = l$customer_id;
    final l$payment = payment;
    result$data['payment'] = l$payment.toJson();
    final l$service_id = service_id;
    result$data['service_id'] = l$service_id;
    return result$data;
  }

  CopyWith$Input$BettingPaymentInput<Input$BettingPaymentInput> get copyWith =>
      CopyWith$Input$BettingPaymentInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BettingPaymentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$customer_id = customer_id;
    final lOther$customer_id = other.customer_id;
    if (l$customer_id != lOther$customer_id) {
      return false;
    }
    final l$payment = payment;
    final lOther$payment = other.payment;
    if (l$payment != lOther$payment) {
      return false;
    }
    final l$service_id = service_id;
    final lOther$service_id = other.service_id;
    if (l$service_id != lOther$service_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    final l$customer_id = customer_id;
    final l$payment = payment;
    final l$service_id = service_id;
    return Object.hashAll([
      l$countryCode,
      l$customer_id,
      l$payment,
      l$service_id,
    ]);
  }
}

abstract class CopyWith$Input$BettingPaymentInput<TRes> {
  factory CopyWith$Input$BettingPaymentInput(
    Input$BettingPaymentInput instance,
    TRes Function(Input$BettingPaymentInput) then,
  ) = _CopyWithImpl$Input$BettingPaymentInput;

  factory CopyWith$Input$BettingPaymentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BettingPaymentInput;

  TRes call({
    Enum$Country? countryCode,
    String? customer_id,
    Input$PaymentInput? payment,
    String? service_id,
  });
  CopyWith$Input$PaymentInput<TRes> get payment;
}

class _CopyWithImpl$Input$BettingPaymentInput<TRes>
    implements CopyWith$Input$BettingPaymentInput<TRes> {
  _CopyWithImpl$Input$BettingPaymentInput(
    this._instance,
    this._then,
  );

  final Input$BettingPaymentInput _instance;

  final TRes Function(Input$BettingPaymentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryCode = _undefined,
    Object? customer_id = _undefined,
    Object? payment = _undefined,
    Object? service_id = _undefined,
  }) =>
      _then(Input$BettingPaymentInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
        if (customer_id != _undefined && customer_id != null)
          'customer_id': (customer_id as String),
        if (payment != _undefined && payment != null)
          'payment': (payment as Input$PaymentInput),
        if (service_id != _undefined && service_id != null)
          'service_id': (service_id as String),
      }));

  CopyWith$Input$PaymentInput<TRes> get payment {
    final local$payment = _instance.payment;
    return CopyWith$Input$PaymentInput(local$payment, (e) => call(payment: e));
  }
}

class _CopyWithStubImpl$Input$BettingPaymentInput<TRes>
    implements CopyWith$Input$BettingPaymentInput<TRes> {
  _CopyWithStubImpl$Input$BettingPaymentInput(this._res);

  TRes _res;

  call({
    Enum$Country? countryCode,
    String? customer_id,
    Input$PaymentInput? payment,
    String? service_id,
  }) =>
      _res;

  CopyWith$Input$PaymentInput<TRes> get payment =>
      CopyWith$Input$PaymentInput.stub(_res);
}

class Input$BettingProvidersInput {
  factory Input$BettingProvidersInput({required Enum$Country countryCode}) =>
      Input$BettingProvidersInput._({
        r'countryCode': countryCode,
      });

  Input$BettingProvidersInput._(this._$data);

  factory Input$BettingProvidersInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    return Input$BettingProvidersInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    return result$data;
  }

  CopyWith$Input$BettingProvidersInput<Input$BettingProvidersInput>
      get copyWith => CopyWith$Input$BettingProvidersInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BettingProvidersInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    return Object.hashAll([l$countryCode]);
  }
}

abstract class CopyWith$Input$BettingProvidersInput<TRes> {
  factory CopyWith$Input$BettingProvidersInput(
    Input$BettingProvidersInput instance,
    TRes Function(Input$BettingProvidersInput) then,
  ) = _CopyWithImpl$Input$BettingProvidersInput;

  factory CopyWith$Input$BettingProvidersInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BettingProvidersInput;

  TRes call({Enum$Country? countryCode});
}

class _CopyWithImpl$Input$BettingProvidersInput<TRes>
    implements CopyWith$Input$BettingProvidersInput<TRes> {
  _CopyWithImpl$Input$BettingProvidersInput(
    this._instance,
    this._then,
  );

  final Input$BettingProvidersInput _instance;

  final TRes Function(Input$BettingProvidersInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? countryCode = _undefined}) =>
      _then(Input$BettingProvidersInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
      }));
}

class _CopyWithStubImpl$Input$BettingProvidersInput<TRes>
    implements CopyWith$Input$BettingProvidersInput<TRes> {
  _CopyWithStubImpl$Input$BettingProvidersInput(this._res);

  TRes _res;

  call({Enum$Country? countryCode}) => _res;
}

class Input$ElectricityBill_PaymentInput {
  factory Input$ElectricityBill_PaymentInput({
    required int amount,
    required Enum$Country countryCode,
    required String customerAddress,
    required String customerName,
    required String meterNumber,
    required String meterType,
    required Input$PaymentInput payment,
    required String reference,
    required String service,
  }) =>
      Input$ElectricityBill_PaymentInput._({
        r'amount': amount,
        r'countryCode': countryCode,
        r'customerAddress': customerAddress,
        r'customerName': customerName,
        r'meterNumber': meterNumber,
        r'meterType': meterType,
        r'payment': payment,
        r'reference': reference,
        r'service': service,
      });

  Input$ElectricityBill_PaymentInput._(this._$data);

  factory Input$ElectricityBill_PaymentInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as int);
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    final l$customerAddress = data['customerAddress'];
    result$data['customerAddress'] = (l$customerAddress as String);
    final l$customerName = data['customerName'];
    result$data['customerName'] = (l$customerName as String);
    final l$meterNumber = data['meterNumber'];
    result$data['meterNumber'] = (l$meterNumber as String);
    final l$meterType = data['meterType'];
    result$data['meterType'] = (l$meterType as String);
    final l$payment = data['payment'];
    result$data['payment'] =
        Input$PaymentInput.fromJson((l$payment as Map<String, dynamic>));
    final l$reference = data['reference'];
    result$data['reference'] = (l$reference as String);
    final l$service = data['service'];
    result$data['service'] = (l$service as String);
    return Input$ElectricityBill_PaymentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get amount => (_$data['amount'] as int);

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  String get customerAddress => (_$data['customerAddress'] as String);

  String get customerName => (_$data['customerName'] as String);

  String get meterNumber => (_$data['meterNumber'] as String);

  String get meterType => (_$data['meterType'] as String);

  Input$PaymentInput get payment => (_$data['payment'] as Input$PaymentInput);

  String get reference => (_$data['reference'] as String);

  String get service => (_$data['service'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    final l$customerAddress = customerAddress;
    result$data['customerAddress'] = l$customerAddress;
    final l$customerName = customerName;
    result$data['customerName'] = l$customerName;
    final l$meterNumber = meterNumber;
    result$data['meterNumber'] = l$meterNumber;
    final l$meterType = meterType;
    result$data['meterType'] = l$meterType;
    final l$payment = payment;
    result$data['payment'] = l$payment.toJson();
    final l$reference = reference;
    result$data['reference'] = l$reference;
    final l$service = service;
    result$data['service'] = l$service;
    return result$data;
  }

  CopyWith$Input$ElectricityBill_PaymentInput<
          Input$ElectricityBill_PaymentInput>
      get copyWith => CopyWith$Input$ElectricityBill_PaymentInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ElectricityBill_PaymentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$customerAddress = customerAddress;
    final lOther$customerAddress = other.customerAddress;
    if (l$customerAddress != lOther$customerAddress) {
      return false;
    }
    final l$customerName = customerName;
    final lOther$customerName = other.customerName;
    if (l$customerName != lOther$customerName) {
      return false;
    }
    final l$meterNumber = meterNumber;
    final lOther$meterNumber = other.meterNumber;
    if (l$meterNumber != lOther$meterNumber) {
      return false;
    }
    final l$meterType = meterType;
    final lOther$meterType = other.meterType;
    if (l$meterType != lOther$meterType) {
      return false;
    }
    final l$payment = payment;
    final lOther$payment = other.payment;
    if (l$payment != lOther$payment) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$countryCode = countryCode;
    final l$customerAddress = customerAddress;
    final l$customerName = customerName;
    final l$meterNumber = meterNumber;
    final l$meterType = meterType;
    final l$payment = payment;
    final l$reference = reference;
    final l$service = service;
    return Object.hashAll([
      l$amount,
      l$countryCode,
      l$customerAddress,
      l$customerName,
      l$meterNumber,
      l$meterType,
      l$payment,
      l$reference,
      l$service,
    ]);
  }
}

abstract class CopyWith$Input$ElectricityBill_PaymentInput<TRes> {
  factory CopyWith$Input$ElectricityBill_PaymentInput(
    Input$ElectricityBill_PaymentInput instance,
    TRes Function(Input$ElectricityBill_PaymentInput) then,
  ) = _CopyWithImpl$Input$ElectricityBill_PaymentInput;

  factory CopyWith$Input$ElectricityBill_PaymentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ElectricityBill_PaymentInput;

  TRes call({
    int? amount,
    Enum$Country? countryCode,
    String? customerAddress,
    String? customerName,
    String? meterNumber,
    String? meterType,
    Input$PaymentInput? payment,
    String? reference,
    String? service,
  });
  CopyWith$Input$PaymentInput<TRes> get payment;
}

class _CopyWithImpl$Input$ElectricityBill_PaymentInput<TRes>
    implements CopyWith$Input$ElectricityBill_PaymentInput<TRes> {
  _CopyWithImpl$Input$ElectricityBill_PaymentInput(
    this._instance,
    this._then,
  );

  final Input$ElectricityBill_PaymentInput _instance;

  final TRes Function(Input$ElectricityBill_PaymentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? countryCode = _undefined,
    Object? customerAddress = _undefined,
    Object? customerName = _undefined,
    Object? meterNumber = _undefined,
    Object? meterType = _undefined,
    Object? payment = _undefined,
    Object? reference = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Input$ElectricityBill_PaymentInput._({
        ..._instance._$data,
        if (amount != _undefined && amount != null) 'amount': (amount as int),
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
        if (customerAddress != _undefined && customerAddress != null)
          'customerAddress': (customerAddress as String),
        if (customerName != _undefined && customerName != null)
          'customerName': (customerName as String),
        if (meterNumber != _undefined && meterNumber != null)
          'meterNumber': (meterNumber as String),
        if (meterType != _undefined && meterType != null)
          'meterType': (meterType as String),
        if (payment != _undefined && payment != null)
          'payment': (payment as Input$PaymentInput),
        if (reference != _undefined && reference != null)
          'reference': (reference as String),
        if (service != _undefined && service != null)
          'service': (service as String),
      }));

  CopyWith$Input$PaymentInput<TRes> get payment {
    final local$payment = _instance.payment;
    return CopyWith$Input$PaymentInput(local$payment, (e) => call(payment: e));
  }
}

class _CopyWithStubImpl$Input$ElectricityBill_PaymentInput<TRes>
    implements CopyWith$Input$ElectricityBill_PaymentInput<TRes> {
  _CopyWithStubImpl$Input$ElectricityBill_PaymentInput(this._res);

  TRes _res;

  call({
    int? amount,
    Enum$Country? countryCode,
    String? customerAddress,
    String? customerName,
    String? meterNumber,
    String? meterType,
    Input$PaymentInput? payment,
    String? reference,
    String? service,
  }) =>
      _res;

  CopyWith$Input$PaymentInput<TRes> get payment =>
      CopyWith$Input$PaymentInput.stub(_res);
}

class Input$ElectricityBill_ProviderInput {
  factory Input$ElectricityBill_ProviderInput(
          {required Enum$Country countryCode}) =>
      Input$ElectricityBill_ProviderInput._({
        r'countryCode': countryCode,
      });

  Input$ElectricityBill_ProviderInput._(this._$data);

  factory Input$ElectricityBill_ProviderInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    return Input$ElectricityBill_ProviderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    return result$data;
  }

  CopyWith$Input$ElectricityBill_ProviderInput<
          Input$ElectricityBill_ProviderInput>
      get copyWith => CopyWith$Input$ElectricityBill_ProviderInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ElectricityBill_ProviderInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    return Object.hashAll([l$countryCode]);
  }
}

abstract class CopyWith$Input$ElectricityBill_ProviderInput<TRes> {
  factory CopyWith$Input$ElectricityBill_ProviderInput(
    Input$ElectricityBill_ProviderInput instance,
    TRes Function(Input$ElectricityBill_ProviderInput) then,
  ) = _CopyWithImpl$Input$ElectricityBill_ProviderInput;

  factory CopyWith$Input$ElectricityBill_ProviderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ElectricityBill_ProviderInput;

  TRes call({Enum$Country? countryCode});
}

class _CopyWithImpl$Input$ElectricityBill_ProviderInput<TRes>
    implements CopyWith$Input$ElectricityBill_ProviderInput<TRes> {
  _CopyWithImpl$Input$ElectricityBill_ProviderInput(
    this._instance,
    this._then,
  );

  final Input$ElectricityBill_ProviderInput _instance;

  final TRes Function(Input$ElectricityBill_ProviderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? countryCode = _undefined}) =>
      _then(Input$ElectricityBill_ProviderInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
      }));
}

class _CopyWithStubImpl$Input$ElectricityBill_ProviderInput<TRes>
    implements CopyWith$Input$ElectricityBill_ProviderInput<TRes> {
  _CopyWithStubImpl$Input$ElectricityBill_ProviderInput(this._res);

  TRes _res;

  call({Enum$Country? countryCode}) => _res;
}

class Input$ElectricityBill_ValidateAccountInput {
  factory Input$ElectricityBill_ValidateAccountInput({
    required Enum$Country countryCode,
    required String meterNumber,
    required String meterType,
    required String service,
  }) =>
      Input$ElectricityBill_ValidateAccountInput._({
        r'countryCode': countryCode,
        r'meterNumber': meterNumber,
        r'meterType': meterType,
        r'service': service,
      });

  Input$ElectricityBill_ValidateAccountInput._(this._$data);

  factory Input$ElectricityBill_ValidateAccountInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    final l$meterNumber = data['meterNumber'];
    result$data['meterNumber'] = (l$meterNumber as String);
    final l$meterType = data['meterType'];
    result$data['meterType'] = (l$meterType as String);
    final l$service = data['service'];
    result$data['service'] = (l$service as String);
    return Input$ElectricityBill_ValidateAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  String get meterNumber => (_$data['meterNumber'] as String);

  String get meterType => (_$data['meterType'] as String);

  String get service => (_$data['service'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    final l$meterNumber = meterNumber;
    result$data['meterNumber'] = l$meterNumber;
    final l$meterType = meterType;
    result$data['meterType'] = l$meterType;
    final l$service = service;
    result$data['service'] = l$service;
    return result$data;
  }

  CopyWith$Input$ElectricityBill_ValidateAccountInput<
          Input$ElectricityBill_ValidateAccountInput>
      get copyWith => CopyWith$Input$ElectricityBill_ValidateAccountInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ElectricityBill_ValidateAccountInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$meterNumber = meterNumber;
    final lOther$meterNumber = other.meterNumber;
    if (l$meterNumber != lOther$meterNumber) {
      return false;
    }
    final l$meterType = meterType;
    final lOther$meterType = other.meterType;
    if (l$meterType != lOther$meterType) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    final l$meterNumber = meterNumber;
    final l$meterType = meterType;
    final l$service = service;
    return Object.hashAll([
      l$countryCode,
      l$meterNumber,
      l$meterType,
      l$service,
    ]);
  }
}

abstract class CopyWith$Input$ElectricityBill_ValidateAccountInput<TRes> {
  factory CopyWith$Input$ElectricityBill_ValidateAccountInput(
    Input$ElectricityBill_ValidateAccountInput instance,
    TRes Function(Input$ElectricityBill_ValidateAccountInput) then,
  ) = _CopyWithImpl$Input$ElectricityBill_ValidateAccountInput;

  factory CopyWith$Input$ElectricityBill_ValidateAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ElectricityBill_ValidateAccountInput;

  TRes call({
    Enum$Country? countryCode,
    String? meterNumber,
    String? meterType,
    String? service,
  });
}

class _CopyWithImpl$Input$ElectricityBill_ValidateAccountInput<TRes>
    implements CopyWith$Input$ElectricityBill_ValidateAccountInput<TRes> {
  _CopyWithImpl$Input$ElectricityBill_ValidateAccountInput(
    this._instance,
    this._then,
  );

  final Input$ElectricityBill_ValidateAccountInput _instance;

  final TRes Function(Input$ElectricityBill_ValidateAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryCode = _undefined,
    Object? meterNumber = _undefined,
    Object? meterType = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Input$ElectricityBill_ValidateAccountInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
        if (meterNumber != _undefined && meterNumber != null)
          'meterNumber': (meterNumber as String),
        if (meterType != _undefined && meterType != null)
          'meterType': (meterType as String),
        if (service != _undefined && service != null)
          'service': (service as String),
      }));
}

class _CopyWithStubImpl$Input$ElectricityBill_ValidateAccountInput<TRes>
    implements CopyWith$Input$ElectricityBill_ValidateAccountInput<TRes> {
  _CopyWithStubImpl$Input$ElectricityBill_ValidateAccountInput(this._res);

  TRes _res;

  call({
    Enum$Country? countryCode,
    String? meterNumber,
    String? meterType,
    String? service,
  }) =>
      _res;
}

class Input$Kyc_AddAddressInfoInput {
  factory Input$Kyc_AddAddressInfoInput({
    required Enum$Country country,
    required String houseAddress,
    required String state,
    required String street,
  }) =>
      Input$Kyc_AddAddressInfoInput._({
        r'country': country,
        r'houseAddress': houseAddress,
        r'state': state,
        r'street': street,
      });

  Input$Kyc_AddAddressInfoInput._(this._$data);

  factory Input$Kyc_AddAddressInfoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$country = data['country'];
    result$data['country'] = fromJson$Enum$Country((l$country as String));
    final l$houseAddress = data['houseAddress'];
    result$data['houseAddress'] = (l$houseAddress as String);
    final l$state = data['state'];
    result$data['state'] = (l$state as String);
    final l$street = data['street'];
    result$data['street'] = (l$street as String);
    return Input$Kyc_AddAddressInfoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get country => (_$data['country'] as Enum$Country);

  String get houseAddress => (_$data['houseAddress'] as String);

  String get state => (_$data['state'] as String);

  String get street => (_$data['street'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$country = country;
    result$data['country'] = toJson$Enum$Country(l$country);
    final l$houseAddress = houseAddress;
    result$data['houseAddress'] = l$houseAddress;
    final l$state = state;
    result$data['state'] = l$state;
    final l$street = street;
    result$data['street'] = l$street;
    return result$data;
  }

  CopyWith$Input$Kyc_AddAddressInfoInput<Input$Kyc_AddAddressInfoInput>
      get copyWith => CopyWith$Input$Kyc_AddAddressInfoInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_AddAddressInfoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$houseAddress = houseAddress;
    final lOther$houseAddress = other.houseAddress;
    if (l$houseAddress != lOther$houseAddress) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (l$street != lOther$street) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$houseAddress = houseAddress;
    final l$state = state;
    final l$street = street;
    return Object.hashAll([
      l$country,
      l$houseAddress,
      l$state,
      l$street,
    ]);
  }
}

abstract class CopyWith$Input$Kyc_AddAddressInfoInput<TRes> {
  factory CopyWith$Input$Kyc_AddAddressInfoInput(
    Input$Kyc_AddAddressInfoInput instance,
    TRes Function(Input$Kyc_AddAddressInfoInput) then,
  ) = _CopyWithImpl$Input$Kyc_AddAddressInfoInput;

  factory CopyWith$Input$Kyc_AddAddressInfoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_AddAddressInfoInput;

  TRes call({
    Enum$Country? country,
    String? houseAddress,
    String? state,
    String? street,
  });
}

class _CopyWithImpl$Input$Kyc_AddAddressInfoInput<TRes>
    implements CopyWith$Input$Kyc_AddAddressInfoInput<TRes> {
  _CopyWithImpl$Input$Kyc_AddAddressInfoInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_AddAddressInfoInput _instance;

  final TRes Function(Input$Kyc_AddAddressInfoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? houseAddress = _undefined,
    Object? state = _undefined,
    Object? street = _undefined,
  }) =>
      _then(Input$Kyc_AddAddressInfoInput._({
        ..._instance._$data,
        if (country != _undefined && country != null)
          'country': (country as Enum$Country),
        if (houseAddress != _undefined && houseAddress != null)
          'houseAddress': (houseAddress as String),
        if (state != _undefined && state != null) 'state': (state as String),
        if (street != _undefined && street != null)
          'street': (street as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_AddAddressInfoInput<TRes>
    implements CopyWith$Input$Kyc_AddAddressInfoInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_AddAddressInfoInput(this._res);

  TRes _res;

  call({
    Enum$Country? country,
    String? houseAddress,
    String? state,
    String? street,
  }) =>
      _res;
}

class Input$Kyc_AddAddressProofInput {
  factory Input$Kyc_AddAddressProofInput({required String proofOfAddressUrl}) =>
      Input$Kyc_AddAddressProofInput._({
        r'proofOfAddressUrl': proofOfAddressUrl,
      });

  Input$Kyc_AddAddressProofInput._(this._$data);

  factory Input$Kyc_AddAddressProofInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$proofOfAddressUrl = data['proofOfAddressUrl'];
    result$data['proofOfAddressUrl'] = (l$proofOfAddressUrl as String);
    return Input$Kyc_AddAddressProofInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get proofOfAddressUrl => (_$data['proofOfAddressUrl'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$proofOfAddressUrl = proofOfAddressUrl;
    result$data['proofOfAddressUrl'] = l$proofOfAddressUrl;
    return result$data;
  }

  CopyWith$Input$Kyc_AddAddressProofInput<Input$Kyc_AddAddressProofInput>
      get copyWith => CopyWith$Input$Kyc_AddAddressProofInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_AddAddressProofInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proofOfAddressUrl = proofOfAddressUrl;
    final lOther$proofOfAddressUrl = other.proofOfAddressUrl;
    if (l$proofOfAddressUrl != lOther$proofOfAddressUrl) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$proofOfAddressUrl = proofOfAddressUrl;
    return Object.hashAll([l$proofOfAddressUrl]);
  }
}

abstract class CopyWith$Input$Kyc_AddAddressProofInput<TRes> {
  factory CopyWith$Input$Kyc_AddAddressProofInput(
    Input$Kyc_AddAddressProofInput instance,
    TRes Function(Input$Kyc_AddAddressProofInput) then,
  ) = _CopyWithImpl$Input$Kyc_AddAddressProofInput;

  factory CopyWith$Input$Kyc_AddAddressProofInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_AddAddressProofInput;

  TRes call({String? proofOfAddressUrl});
}

class _CopyWithImpl$Input$Kyc_AddAddressProofInput<TRes>
    implements CopyWith$Input$Kyc_AddAddressProofInput<TRes> {
  _CopyWithImpl$Input$Kyc_AddAddressProofInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_AddAddressProofInput _instance;

  final TRes Function(Input$Kyc_AddAddressProofInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? proofOfAddressUrl = _undefined}) =>
      _then(Input$Kyc_AddAddressProofInput._({
        ..._instance._$data,
        if (proofOfAddressUrl != _undefined && proofOfAddressUrl != null)
          'proofOfAddressUrl': (proofOfAddressUrl as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_AddAddressProofInput<TRes>
    implements CopyWith$Input$Kyc_AddAddressProofInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_AddAddressProofInput(this._res);

  TRes _res;

  call({String? proofOfAddressUrl}) => _res;
}

class Input$Kyc_AddBvnInput {
  factory Input$Kyc_AddBvnInput({required String bvn}) =>
      Input$Kyc_AddBvnInput._({
        r'bvn': bvn,
      });

  Input$Kyc_AddBvnInput._(this._$data);

  factory Input$Kyc_AddBvnInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$bvn = data['bvn'];
    result$data['bvn'] = (l$bvn as String);
    return Input$Kyc_AddBvnInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get bvn => (_$data['bvn'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bvn = bvn;
    result$data['bvn'] = l$bvn;
    return result$data;
  }

  CopyWith$Input$Kyc_AddBvnInput<Input$Kyc_AddBvnInput> get copyWith =>
      CopyWith$Input$Kyc_AddBvnInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_AddBvnInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bvn = bvn;
    final lOther$bvn = other.bvn;
    if (l$bvn != lOther$bvn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bvn = bvn;
    return Object.hashAll([l$bvn]);
  }
}

abstract class CopyWith$Input$Kyc_AddBvnInput<TRes> {
  factory CopyWith$Input$Kyc_AddBvnInput(
    Input$Kyc_AddBvnInput instance,
    TRes Function(Input$Kyc_AddBvnInput) then,
  ) = _CopyWithImpl$Input$Kyc_AddBvnInput;

  factory CopyWith$Input$Kyc_AddBvnInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_AddBvnInput;

  TRes call({String? bvn});
}

class _CopyWithImpl$Input$Kyc_AddBvnInput<TRes>
    implements CopyWith$Input$Kyc_AddBvnInput<TRes> {
  _CopyWithImpl$Input$Kyc_AddBvnInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_AddBvnInput _instance;

  final TRes Function(Input$Kyc_AddBvnInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? bvn = _undefined}) => _then(Input$Kyc_AddBvnInput._({
        ..._instance._$data,
        if (bvn != _undefined && bvn != null) 'bvn': (bvn as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_AddBvnInput<TRes>
    implements CopyWith$Input$Kyc_AddBvnInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_AddBvnInput(this._res);

  TRes _res;

  call({String? bvn}) => _res;
}

class Input$Kyc_AddDobInput {
  factory Input$Kyc_AddDobInput({required String dob}) =>
      Input$Kyc_AddDobInput._({
        r'dob': dob,
      });

  Input$Kyc_AddDobInput._(this._$data);

  factory Input$Kyc_AddDobInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$dob = data['dob'];
    result$data['dob'] = (l$dob as String);
    return Input$Kyc_AddDobInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get dob => (_$data['dob'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dob = dob;
    result$data['dob'] = l$dob;
    return result$data;
  }

  CopyWith$Input$Kyc_AddDobInput<Input$Kyc_AddDobInput> get copyWith =>
      CopyWith$Input$Kyc_AddDobInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_AddDobInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dob = dob;
    return Object.hashAll([l$dob]);
  }
}

abstract class CopyWith$Input$Kyc_AddDobInput<TRes> {
  factory CopyWith$Input$Kyc_AddDobInput(
    Input$Kyc_AddDobInput instance,
    TRes Function(Input$Kyc_AddDobInput) then,
  ) = _CopyWithImpl$Input$Kyc_AddDobInput;

  factory CopyWith$Input$Kyc_AddDobInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_AddDobInput;

  TRes call({String? dob});
}

class _CopyWithImpl$Input$Kyc_AddDobInput<TRes>
    implements CopyWith$Input$Kyc_AddDobInput<TRes> {
  _CopyWithImpl$Input$Kyc_AddDobInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_AddDobInput _instance;

  final TRes Function(Input$Kyc_AddDobInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? dob = _undefined}) => _then(Input$Kyc_AddDobInput._({
        ..._instance._$data,
        if (dob != _undefined && dob != null) 'dob': (dob as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_AddDobInput<TRes>
    implements CopyWith$Input$Kyc_AddDobInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_AddDobInput(this._res);

  TRes _res;

  call({String? dob}) => _res;
}

class Input$Kyc_AddNamesInput {
  factory Input$Kyc_AddNamesInput({
    required String firstName,
    required String lastName,
    String? middleName,
  }) =>
      Input$Kyc_AddNamesInput._({
        r'firstName': firstName,
        r'lastName': lastName,
        if (middleName != null) r'middleName': middleName,
      });

  Input$Kyc_AddNamesInput._(this._$data);

  factory Input$Kyc_AddNamesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('middleName')) {
      final l$middleName = data['middleName'];
      result$data['middleName'] = (l$middleName as String?);
    }
    return Input$Kyc_AddNamesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  String? get middleName => (_$data['middleName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('middleName')) {
      final l$middleName = middleName;
      result$data['middleName'] = l$middleName;
    }
    return result$data;
  }

  CopyWith$Input$Kyc_AddNamesInput<Input$Kyc_AddNamesInput> get copyWith =>
      CopyWith$Input$Kyc_AddNamesInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_AddNamesInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (_$data.containsKey('middleName') !=
        other._$data.containsKey('middleName')) {
      return false;
    }
    if (l$middleName != lOther$middleName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$middleName = middleName;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      _$data.containsKey('middleName') ? l$middleName : const {},
    ]);
  }
}

abstract class CopyWith$Input$Kyc_AddNamesInput<TRes> {
  factory CopyWith$Input$Kyc_AddNamesInput(
    Input$Kyc_AddNamesInput instance,
    TRes Function(Input$Kyc_AddNamesInput) then,
  ) = _CopyWithImpl$Input$Kyc_AddNamesInput;

  factory CopyWith$Input$Kyc_AddNamesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_AddNamesInput;

  TRes call({
    String? firstName,
    String? lastName,
    String? middleName,
  });
}

class _CopyWithImpl$Input$Kyc_AddNamesInput<TRes>
    implements CopyWith$Input$Kyc_AddNamesInput<TRes> {
  _CopyWithImpl$Input$Kyc_AddNamesInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_AddNamesInput _instance;

  final TRes Function(Input$Kyc_AddNamesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? middleName = _undefined,
  }) =>
      _then(Input$Kyc_AddNamesInput._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (middleName != _undefined) 'middleName': (middleName as String?),
      }));
}

class _CopyWithStubImpl$Input$Kyc_AddNamesInput<TRes>
    implements CopyWith$Input$Kyc_AddNamesInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_AddNamesInput(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? middleName,
  }) =>
      _res;
}

class Input$Kyc_AddNinInput {
  factory Input$Kyc_AddNinInput({required String nin}) =>
      Input$Kyc_AddNinInput._({
        r'nin': nin,
      });

  Input$Kyc_AddNinInput._(this._$data);

  factory Input$Kyc_AddNinInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$nin = data['nin'];
    result$data['nin'] = (l$nin as String);
    return Input$Kyc_AddNinInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get nin => (_$data['nin'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$nin = nin;
    result$data['nin'] = l$nin;
    return result$data;
  }

  CopyWith$Input$Kyc_AddNinInput<Input$Kyc_AddNinInput> get copyWith =>
      CopyWith$Input$Kyc_AddNinInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_AddNinInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$nin = nin;
    return Object.hashAll([l$nin]);
  }
}

abstract class CopyWith$Input$Kyc_AddNinInput<TRes> {
  factory CopyWith$Input$Kyc_AddNinInput(
    Input$Kyc_AddNinInput instance,
    TRes Function(Input$Kyc_AddNinInput) then,
  ) = _CopyWithImpl$Input$Kyc_AddNinInput;

  factory CopyWith$Input$Kyc_AddNinInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_AddNinInput;

  TRes call({String? nin});
}

class _CopyWithImpl$Input$Kyc_AddNinInput<TRes>
    implements CopyWith$Input$Kyc_AddNinInput<TRes> {
  _CopyWithImpl$Input$Kyc_AddNinInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_AddNinInput _instance;

  final TRes Function(Input$Kyc_AddNinInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nin = _undefined}) => _then(Input$Kyc_AddNinInput._({
        ..._instance._$data,
        if (nin != _undefined && nin != null) 'nin': (nin as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_AddNinInput<TRes>
    implements CopyWith$Input$Kyc_AddNinInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_AddNinInput(this._res);

  TRes _res;

  call({String? nin}) => _res;
}

class Input$Kyc_CreateTransactionPinInput {
  factory Input$Kyc_CreateTransactionPinInput({required String pin}) =>
      Input$Kyc_CreateTransactionPinInput._({
        r'pin': pin,
      });

  Input$Kyc_CreateTransactionPinInput._(this._$data);

  factory Input$Kyc_CreateTransactionPinInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pin = data['pin'];
    result$data['pin'] = (l$pin as String);
    return Input$Kyc_CreateTransactionPinInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get pin => (_$data['pin'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pin = pin;
    result$data['pin'] = l$pin;
    return result$data;
  }

  CopyWith$Input$Kyc_CreateTransactionPinInput<
          Input$Kyc_CreateTransactionPinInput>
      get copyWith => CopyWith$Input$Kyc_CreateTransactionPinInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_CreateTransactionPinInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pin = pin;
    final lOther$pin = other.pin;
    if (l$pin != lOther$pin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pin = pin;
    return Object.hashAll([l$pin]);
  }
}

abstract class CopyWith$Input$Kyc_CreateTransactionPinInput<TRes> {
  factory CopyWith$Input$Kyc_CreateTransactionPinInput(
    Input$Kyc_CreateTransactionPinInput instance,
    TRes Function(Input$Kyc_CreateTransactionPinInput) then,
  ) = _CopyWithImpl$Input$Kyc_CreateTransactionPinInput;

  factory CopyWith$Input$Kyc_CreateTransactionPinInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_CreateTransactionPinInput;

  TRes call({String? pin});
}

class _CopyWithImpl$Input$Kyc_CreateTransactionPinInput<TRes>
    implements CopyWith$Input$Kyc_CreateTransactionPinInput<TRes> {
  _CopyWithImpl$Input$Kyc_CreateTransactionPinInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_CreateTransactionPinInput _instance;

  final TRes Function(Input$Kyc_CreateTransactionPinInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? pin = _undefined}) =>
      _then(Input$Kyc_CreateTransactionPinInput._({
        ..._instance._$data,
        if (pin != _undefined && pin != null) 'pin': (pin as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_CreateTransactionPinInput<TRes>
    implements CopyWith$Input$Kyc_CreateTransactionPinInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_CreateTransactionPinInput(this._res);

  TRes _res;

  call({String? pin}) => _res;
}

class Input$Kyc_SendPhoneOtpInput {
  factory Input$Kyc_SendPhoneOtpInput({required String phone}) =>
      Input$Kyc_SendPhoneOtpInput._({
        r'phone': phone,
      });

  Input$Kyc_SendPhoneOtpInput._(this._$data);

  factory Input$Kyc_SendPhoneOtpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    return Input$Kyc_SendPhoneOtpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    return result$data;
  }

  CopyWith$Input$Kyc_SendPhoneOtpInput<Input$Kyc_SendPhoneOtpInput>
      get copyWith => CopyWith$Input$Kyc_SendPhoneOtpInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_SendPhoneOtpInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    return Object.hashAll([l$phone]);
  }
}

abstract class CopyWith$Input$Kyc_SendPhoneOtpInput<TRes> {
  factory CopyWith$Input$Kyc_SendPhoneOtpInput(
    Input$Kyc_SendPhoneOtpInput instance,
    TRes Function(Input$Kyc_SendPhoneOtpInput) then,
  ) = _CopyWithImpl$Input$Kyc_SendPhoneOtpInput;

  factory CopyWith$Input$Kyc_SendPhoneOtpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_SendPhoneOtpInput;

  TRes call({String? phone});
}

class _CopyWithImpl$Input$Kyc_SendPhoneOtpInput<TRes>
    implements CopyWith$Input$Kyc_SendPhoneOtpInput<TRes> {
  _CopyWithImpl$Input$Kyc_SendPhoneOtpInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_SendPhoneOtpInput _instance;

  final TRes Function(Input$Kyc_SendPhoneOtpInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? phone = _undefined}) =>
      _then(Input$Kyc_SendPhoneOtpInput._({
        ..._instance._$data,
        if (phone != _undefined && phone != null) 'phone': (phone as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_SendPhoneOtpInput<TRes>
    implements CopyWith$Input$Kyc_SendPhoneOtpInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_SendPhoneOtpInput(this._res);

  TRes _res;

  call({String? phone}) => _res;
}

class Input$Kyc_VerifyPhoneOtpInput {
  factory Input$Kyc_VerifyPhoneOtpInput({
    required String otp,
    required String phone,
    required String token,
  }) =>
      Input$Kyc_VerifyPhoneOtpInput._({
        r'otp': otp,
        r'phone': phone,
        r'token': token,
      });

  Input$Kyc_VerifyPhoneOtpInput._(this._$data);

  factory Input$Kyc_VerifyPhoneOtpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$otp = data['otp'];
    result$data['otp'] = (l$otp as String);
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Input$Kyc_VerifyPhoneOtpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get otp => (_$data['otp'] as String);

  String get phone => (_$data['phone'] as String);

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$otp = otp;
    result$data['otp'] = l$otp;
    final l$phone = phone;
    result$data['phone'] = l$phone;
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Input$Kyc_VerifyPhoneOtpInput<Input$Kyc_VerifyPhoneOtpInput>
      get copyWith => CopyWith$Input$Kyc_VerifyPhoneOtpInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_VerifyPhoneOtpInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$otp = otp;
    final lOther$otp = other.otp;
    if (l$otp != lOther$otp) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$otp = otp;
    final l$phone = phone;
    final l$token = token;
    return Object.hashAll([
      l$otp,
      l$phone,
      l$token,
    ]);
  }
}

abstract class CopyWith$Input$Kyc_VerifyPhoneOtpInput<TRes> {
  factory CopyWith$Input$Kyc_VerifyPhoneOtpInput(
    Input$Kyc_VerifyPhoneOtpInput instance,
    TRes Function(Input$Kyc_VerifyPhoneOtpInput) then,
  ) = _CopyWithImpl$Input$Kyc_VerifyPhoneOtpInput;

  factory CopyWith$Input$Kyc_VerifyPhoneOtpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_VerifyPhoneOtpInput;

  TRes call({
    String? otp,
    String? phone,
    String? token,
  });
}

class _CopyWithImpl$Input$Kyc_VerifyPhoneOtpInput<TRes>
    implements CopyWith$Input$Kyc_VerifyPhoneOtpInput<TRes> {
  _CopyWithImpl$Input$Kyc_VerifyPhoneOtpInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_VerifyPhoneOtpInput _instance;

  final TRes Function(Input$Kyc_VerifyPhoneOtpInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? otp = _undefined,
    Object? phone = _undefined,
    Object? token = _undefined,
  }) =>
      _then(Input$Kyc_VerifyPhoneOtpInput._({
        ..._instance._$data,
        if (otp != _undefined && otp != null) 'otp': (otp as String),
        if (phone != _undefined && phone != null) 'phone': (phone as String),
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_VerifyPhoneOtpInput<TRes>
    implements CopyWith$Input$Kyc_VerifyPhoneOtpInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_VerifyPhoneOtpInput(this._res);

  TRes _res;

  call({
    String? otp,
    String? phone,
    String? token,
  }) =>
      _res;
}

class Input$Kyc_sendCredentialsInput {
  factory Input$Kyc_sendCredentialsInput({
    required String bvn,
    required Enum$Country country,
    required String dob,
    required String firstName,
    required String houseAddress,
    required String lastName,
    String? middleName,
    required String nin,
    required String phone,
    required String state,
    required String street,
  }) =>
      Input$Kyc_sendCredentialsInput._({
        r'bvn': bvn,
        r'country': country,
        r'dob': dob,
        r'firstName': firstName,
        r'houseAddress': houseAddress,
        r'lastName': lastName,
        if (middleName != null) r'middleName': middleName,
        r'nin': nin,
        r'phone': phone,
        r'state': state,
        r'street': street,
      });

  Input$Kyc_sendCredentialsInput._(this._$data);

  factory Input$Kyc_sendCredentialsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$bvn = data['bvn'];
    result$data['bvn'] = (l$bvn as String);
    final l$country = data['country'];
    result$data['country'] = fromJson$Enum$Country((l$country as String));
    final l$dob = data['dob'];
    result$data['dob'] = (l$dob as String);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$houseAddress = data['houseAddress'];
    result$data['houseAddress'] = (l$houseAddress as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('middleName')) {
      final l$middleName = data['middleName'];
      result$data['middleName'] = (l$middleName as String?);
    }
    final l$nin = data['nin'];
    result$data['nin'] = (l$nin as String);
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    final l$state = data['state'];
    result$data['state'] = (l$state as String);
    final l$street = data['street'];
    result$data['street'] = (l$street as String);
    return Input$Kyc_sendCredentialsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get bvn => (_$data['bvn'] as String);

  Enum$Country get country => (_$data['country'] as Enum$Country);

  String get dob => (_$data['dob'] as String);

  String get firstName => (_$data['firstName'] as String);

  String get houseAddress => (_$data['houseAddress'] as String);

  String get lastName => (_$data['lastName'] as String);

  String? get middleName => (_$data['middleName'] as String?);

  String get nin => (_$data['nin'] as String);

  String get phone => (_$data['phone'] as String);

  String get state => (_$data['state'] as String);

  String get street => (_$data['street'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bvn = bvn;
    result$data['bvn'] = l$bvn;
    final l$country = country;
    result$data['country'] = toJson$Enum$Country(l$country);
    final l$dob = dob;
    result$data['dob'] = l$dob;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$houseAddress = houseAddress;
    result$data['houseAddress'] = l$houseAddress;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('middleName')) {
      final l$middleName = middleName;
      result$data['middleName'] = l$middleName;
    }
    final l$nin = nin;
    result$data['nin'] = l$nin;
    final l$phone = phone;
    result$data['phone'] = l$phone;
    final l$state = state;
    result$data['state'] = l$state;
    final l$street = street;
    result$data['street'] = l$street;
    return result$data;
  }

  CopyWith$Input$Kyc_sendCredentialsInput<Input$Kyc_sendCredentialsInput>
      get copyWith => CopyWith$Input$Kyc_sendCredentialsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Kyc_sendCredentialsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bvn = bvn;
    final lOther$bvn = other.bvn;
    if (l$bvn != lOther$bvn) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$houseAddress = houseAddress;
    final lOther$houseAddress = other.houseAddress;
    if (l$houseAddress != lOther$houseAddress) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (_$data.containsKey('middleName') !=
        other._$data.containsKey('middleName')) {
      return false;
    }
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (l$nin != lOther$nin) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (l$street != lOther$street) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bvn = bvn;
    final l$country = country;
    final l$dob = dob;
    final l$firstName = firstName;
    final l$houseAddress = houseAddress;
    final l$lastName = lastName;
    final l$middleName = middleName;
    final l$nin = nin;
    final l$phone = phone;
    final l$state = state;
    final l$street = street;
    return Object.hashAll([
      l$bvn,
      l$country,
      l$dob,
      l$firstName,
      l$houseAddress,
      l$lastName,
      _$data.containsKey('middleName') ? l$middleName : const {},
      l$nin,
      l$phone,
      l$state,
      l$street,
    ]);
  }
}

abstract class CopyWith$Input$Kyc_sendCredentialsInput<TRes> {
  factory CopyWith$Input$Kyc_sendCredentialsInput(
    Input$Kyc_sendCredentialsInput instance,
    TRes Function(Input$Kyc_sendCredentialsInput) then,
  ) = _CopyWithImpl$Input$Kyc_sendCredentialsInput;

  factory CopyWith$Input$Kyc_sendCredentialsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Kyc_sendCredentialsInput;

  TRes call({
    String? bvn,
    Enum$Country? country,
    String? dob,
    String? firstName,
    String? houseAddress,
    String? lastName,
    String? middleName,
    String? nin,
    String? phone,
    String? state,
    String? street,
  });
}

class _CopyWithImpl$Input$Kyc_sendCredentialsInput<TRes>
    implements CopyWith$Input$Kyc_sendCredentialsInput<TRes> {
  _CopyWithImpl$Input$Kyc_sendCredentialsInput(
    this._instance,
    this._then,
  );

  final Input$Kyc_sendCredentialsInput _instance;

  final TRes Function(Input$Kyc_sendCredentialsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bvn = _undefined,
    Object? country = _undefined,
    Object? dob = _undefined,
    Object? firstName = _undefined,
    Object? houseAddress = _undefined,
    Object? lastName = _undefined,
    Object? middleName = _undefined,
    Object? nin = _undefined,
    Object? phone = _undefined,
    Object? state = _undefined,
    Object? street = _undefined,
  }) =>
      _then(Input$Kyc_sendCredentialsInput._({
        ..._instance._$data,
        if (bvn != _undefined && bvn != null) 'bvn': (bvn as String),
        if (country != _undefined && country != null)
          'country': (country as Enum$Country),
        if (dob != _undefined && dob != null) 'dob': (dob as String),
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (houseAddress != _undefined && houseAddress != null)
          'houseAddress': (houseAddress as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (middleName != _undefined) 'middleName': (middleName as String?),
        if (nin != _undefined && nin != null) 'nin': (nin as String),
        if (phone != _undefined && phone != null) 'phone': (phone as String),
        if (state != _undefined && state != null) 'state': (state as String),
        if (street != _undefined && street != null)
          'street': (street as String),
      }));
}

class _CopyWithStubImpl$Input$Kyc_sendCredentialsInput<TRes>
    implements CopyWith$Input$Kyc_sendCredentialsInput<TRes> {
  _CopyWithStubImpl$Input$Kyc_sendCredentialsInput(this._res);

  TRes _res;

  call({
    String? bvn,
    Enum$Country? country,
    String? dob,
    String? firstName,
    String? houseAddress,
    String? lastName,
    String? middleName,
    String? nin,
    String? phone,
    String? state,
    String? street,
  }) =>
      _res;
}

class Input$Onchain_ClaimRewardsInput {
  factory Input$Onchain_ClaimRewardsInput({
    String? category,
    String? claimTokenAddress,
    required String feedback,
    required Input$PaymentInput payment,
  }) =>
      Input$Onchain_ClaimRewardsInput._({
        if (category != null) r'category': category,
        if (claimTokenAddress != null) r'claimTokenAddress': claimTokenAddress,
        r'feedback': feedback,
        r'payment': payment,
      });

  Input$Onchain_ClaimRewardsInput._(this._$data);

  factory Input$Onchain_ClaimRewardsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = (l$category as String?);
    }
    if (data.containsKey('claimTokenAddress')) {
      final l$claimTokenAddress = data['claimTokenAddress'];
      result$data['claimTokenAddress'] = (l$claimTokenAddress as String?);
    }
    final l$feedback = data['feedback'];
    result$data['feedback'] = (l$feedback as String);
    final l$payment = data['payment'];
    result$data['payment'] =
        Input$PaymentInput.fromJson((l$payment as Map<String, dynamic>));
    return Input$Onchain_ClaimRewardsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get category => (_$data['category'] as String?);

  String? get claimTokenAddress => (_$data['claimTokenAddress'] as String?);

  String get feedback => (_$data['feedback'] as String);

  Input$PaymentInput get payment => (_$data['payment'] as Input$PaymentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    if (_$data.containsKey('claimTokenAddress')) {
      final l$claimTokenAddress = claimTokenAddress;
      result$data['claimTokenAddress'] = l$claimTokenAddress;
    }
    final l$feedback = feedback;
    result$data['feedback'] = l$feedback;
    final l$payment = payment;
    result$data['payment'] = l$payment.toJson();
    return result$data;
  }

  CopyWith$Input$Onchain_ClaimRewardsInput<Input$Onchain_ClaimRewardsInput>
      get copyWith => CopyWith$Input$Onchain_ClaimRewardsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Onchain_ClaimRewardsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$claimTokenAddress = claimTokenAddress;
    final lOther$claimTokenAddress = other.claimTokenAddress;
    if (_$data.containsKey('claimTokenAddress') !=
        other._$data.containsKey('claimTokenAddress')) {
      return false;
    }
    if (l$claimTokenAddress != lOther$claimTokenAddress) {
      return false;
    }
    final l$feedback = feedback;
    final lOther$feedback = other.feedback;
    if (l$feedback != lOther$feedback) {
      return false;
    }
    final l$payment = payment;
    final lOther$payment = other.payment;
    if (l$payment != lOther$payment) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$claimTokenAddress = claimTokenAddress;
    final l$feedback = feedback;
    final l$payment = payment;
    return Object.hashAll([
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('claimTokenAddress') ? l$claimTokenAddress : const {},
      l$feedback,
      l$payment,
    ]);
  }
}

abstract class CopyWith$Input$Onchain_ClaimRewardsInput<TRes> {
  factory CopyWith$Input$Onchain_ClaimRewardsInput(
    Input$Onchain_ClaimRewardsInput instance,
    TRes Function(Input$Onchain_ClaimRewardsInput) then,
  ) = _CopyWithImpl$Input$Onchain_ClaimRewardsInput;

  factory CopyWith$Input$Onchain_ClaimRewardsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Onchain_ClaimRewardsInput;

  TRes call({
    String? category,
    String? claimTokenAddress,
    String? feedback,
    Input$PaymentInput? payment,
  });
  CopyWith$Input$PaymentInput<TRes> get payment;
}

class _CopyWithImpl$Input$Onchain_ClaimRewardsInput<TRes>
    implements CopyWith$Input$Onchain_ClaimRewardsInput<TRes> {
  _CopyWithImpl$Input$Onchain_ClaimRewardsInput(
    this._instance,
    this._then,
  );

  final Input$Onchain_ClaimRewardsInput _instance;

  final TRes Function(Input$Onchain_ClaimRewardsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? category = _undefined,
    Object? claimTokenAddress = _undefined,
    Object? feedback = _undefined,
    Object? payment = _undefined,
  }) =>
      _then(Input$Onchain_ClaimRewardsInput._({
        ..._instance._$data,
        if (category != _undefined) 'category': (category as String?),
        if (claimTokenAddress != _undefined)
          'claimTokenAddress': (claimTokenAddress as String?),
        if (feedback != _undefined && feedback != null)
          'feedback': (feedback as String),
        if (payment != _undefined && payment != null)
          'payment': (payment as Input$PaymentInput),
      }));

  CopyWith$Input$PaymentInput<TRes> get payment {
    final local$payment = _instance.payment;
    return CopyWith$Input$PaymentInput(local$payment, (e) => call(payment: e));
  }
}

class _CopyWithStubImpl$Input$Onchain_ClaimRewardsInput<TRes>
    implements CopyWith$Input$Onchain_ClaimRewardsInput<TRes> {
  _CopyWithStubImpl$Input$Onchain_ClaimRewardsInput(this._res);

  TRes _res;

  call({
    String? category,
    String? claimTokenAddress,
    String? feedback,
    Input$PaymentInput? payment,
  }) =>
      _res;

  CopyWith$Input$PaymentInput<TRes> get payment =>
      CopyWith$Input$PaymentInput.stub(_res);
}

class Input$Order_AppealInput {
  factory Input$Order_AppealInput({
    required String id,
    required String reason,
  }) =>
      Input$Order_AppealInput._({
        r'id': id,
        r'reason': reason,
      });

  Input$Order_AppealInput._(this._$data);

  factory Input$Order_AppealInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$reason = data['reason'];
    result$data['reason'] = (l$reason as String);
    return Input$Order_AppealInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get reason => (_$data['reason'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$reason = reason;
    result$data['reason'] = l$reason;
    return result$data;
  }

  CopyWith$Input$Order_AppealInput<Input$Order_AppealInput> get copyWith =>
      CopyWith$Input$Order_AppealInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Order_AppealInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$reason = reason;
    return Object.hashAll([
      l$id,
      l$reason,
    ]);
  }
}

abstract class CopyWith$Input$Order_AppealInput<TRes> {
  factory CopyWith$Input$Order_AppealInput(
    Input$Order_AppealInput instance,
    TRes Function(Input$Order_AppealInput) then,
  ) = _CopyWithImpl$Input$Order_AppealInput;

  factory CopyWith$Input$Order_AppealInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Order_AppealInput;

  TRes call({
    String? id,
    String? reason,
  });
}

class _CopyWithImpl$Input$Order_AppealInput<TRes>
    implements CopyWith$Input$Order_AppealInput<TRes> {
  _CopyWithImpl$Input$Order_AppealInput(
    this._instance,
    this._then,
  );

  final Input$Order_AppealInput _instance;

  final TRes Function(Input$Order_AppealInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? reason = _undefined,
  }) =>
      _then(Input$Order_AppealInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (reason != _undefined && reason != null)
          'reason': (reason as String),
      }));
}

class _CopyWithStubImpl$Input$Order_AppealInput<TRes>
    implements CopyWith$Input$Order_AppealInput<TRes> {
  _CopyWithStubImpl$Input$Order_AppealInput(this._res);

  TRes _res;

  call({
    String? id,
    String? reason,
  }) =>
      _res;
}

class Input$Order_CancelInput {
  factory Input$Order_CancelInput({
    required String id,
    required String reason,
  }) =>
      Input$Order_CancelInput._({
        r'id': id,
        r'reason': reason,
      });

  Input$Order_CancelInput._(this._$data);

  factory Input$Order_CancelInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$reason = data['reason'];
    result$data['reason'] = (l$reason as String);
    return Input$Order_CancelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get reason => (_$data['reason'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$reason = reason;
    result$data['reason'] = l$reason;
    return result$data;
  }

  CopyWith$Input$Order_CancelInput<Input$Order_CancelInput> get copyWith =>
      CopyWith$Input$Order_CancelInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Order_CancelInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$reason = reason;
    return Object.hashAll([
      l$id,
      l$reason,
    ]);
  }
}

abstract class CopyWith$Input$Order_CancelInput<TRes> {
  factory CopyWith$Input$Order_CancelInput(
    Input$Order_CancelInput instance,
    TRes Function(Input$Order_CancelInput) then,
  ) = _CopyWithImpl$Input$Order_CancelInput;

  factory CopyWith$Input$Order_CancelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Order_CancelInput;

  TRes call({
    String? id,
    String? reason,
  });
}

class _CopyWithImpl$Input$Order_CancelInput<TRes>
    implements CopyWith$Input$Order_CancelInput<TRes> {
  _CopyWithImpl$Input$Order_CancelInput(
    this._instance,
    this._then,
  );

  final Input$Order_CancelInput _instance;

  final TRes Function(Input$Order_CancelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? reason = _undefined,
  }) =>
      _then(Input$Order_CancelInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (reason != _undefined && reason != null)
          'reason': (reason as String),
      }));
}

class _CopyWithStubImpl$Input$Order_CancelInput<TRes>
    implements CopyWith$Input$Order_CancelInput<TRes> {
  _CopyWithStubImpl$Input$Order_CancelInput(this._res);

  TRes _res;

  call({
    String? id,
    String? reason,
  }) =>
      _res;
}

class Input$Order_CreteSellInput {
  factory Input$Order_CreteSellInput({
    Enum$OrderActions? action_merchant,
    Enum$OrderActions? action_user,
    required double bank_id,
    required Enum$Country currency_fiat,
    required Input$PaymentInput payment,
    required Enum$OrderStatus status,
    required Enum$TradeType trade_type,
  }) =>
      Input$Order_CreteSellInput._({
        if (action_merchant != null) r'action_merchant': action_merchant,
        if (action_user != null) r'action_user': action_user,
        r'bank_id': bank_id,
        r'currency_fiat': currency_fiat,
        r'payment': payment,
        r'status': status,
        r'trade_type': trade_type,
      });

  Input$Order_CreteSellInput._(this._$data);

  factory Input$Order_CreteSellInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('action_merchant')) {
      final l$action_merchant = data['action_merchant'];
      result$data['action_merchant'] = l$action_merchant == null
          ? null
          : fromJson$Enum$OrderActions((l$action_merchant as String));
    }
    if (data.containsKey('action_user')) {
      final l$action_user = data['action_user'];
      result$data['action_user'] = l$action_user == null
          ? null
          : fromJson$Enum$OrderActions((l$action_user as String));
    }
    final l$bank_id = data['bank_id'];
    result$data['bank_id'] = (l$bank_id as num).toDouble();
    final l$currency_fiat = data['currency_fiat'];
    result$data['currency_fiat'] =
        fromJson$Enum$Country((l$currency_fiat as String));
    final l$payment = data['payment'];
    result$data['payment'] =
        Input$PaymentInput.fromJson((l$payment as Map<String, dynamic>));
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$OrderStatus((l$status as String));
    final l$trade_type = data['trade_type'];
    result$data['trade_type'] =
        fromJson$Enum$TradeType((l$trade_type as String));
    return Input$Order_CreteSellInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderActions? get action_merchant =>
      (_$data['action_merchant'] as Enum$OrderActions?);

  Enum$OrderActions? get action_user =>
      (_$data['action_user'] as Enum$OrderActions?);

  double get bank_id => (_$data['bank_id'] as double);

  Enum$Country get currency_fiat => (_$data['currency_fiat'] as Enum$Country);

  Input$PaymentInput get payment => (_$data['payment'] as Input$PaymentInput);

  Enum$OrderStatus get status => (_$data['status'] as Enum$OrderStatus);

  Enum$TradeType get trade_type => (_$data['trade_type'] as Enum$TradeType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('action_merchant')) {
      final l$action_merchant = action_merchant;
      result$data['action_merchant'] = l$action_merchant == null
          ? null
          : toJson$Enum$OrderActions(l$action_merchant);
    }
    if (_$data.containsKey('action_user')) {
      final l$action_user = action_user;
      result$data['action_user'] = l$action_user == null
          ? null
          : toJson$Enum$OrderActions(l$action_user);
    }
    final l$bank_id = bank_id;
    result$data['bank_id'] = l$bank_id;
    final l$currency_fiat = currency_fiat;
    result$data['currency_fiat'] = toJson$Enum$Country(l$currency_fiat);
    final l$payment = payment;
    result$data['payment'] = l$payment.toJson();
    final l$status = status;
    result$data['status'] = toJson$Enum$OrderStatus(l$status);
    final l$trade_type = trade_type;
    result$data['trade_type'] = toJson$Enum$TradeType(l$trade_type);
    return result$data;
  }

  CopyWith$Input$Order_CreteSellInput<Input$Order_CreteSellInput>
      get copyWith => CopyWith$Input$Order_CreteSellInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Order_CreteSellInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$action_merchant = action_merchant;
    final lOther$action_merchant = other.action_merchant;
    if (_$data.containsKey('action_merchant') !=
        other._$data.containsKey('action_merchant')) {
      return false;
    }
    if (l$action_merchant != lOther$action_merchant) {
      return false;
    }
    final l$action_user = action_user;
    final lOther$action_user = other.action_user;
    if (_$data.containsKey('action_user') !=
        other._$data.containsKey('action_user')) {
      return false;
    }
    if (l$action_user != lOther$action_user) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$currency_fiat = currency_fiat;
    final lOther$currency_fiat = other.currency_fiat;
    if (l$currency_fiat != lOther$currency_fiat) {
      return false;
    }
    final l$payment = payment;
    final lOther$payment = other.payment;
    if (l$payment != lOther$payment) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$trade_type = trade_type;
    final lOther$trade_type = other.trade_type;
    if (l$trade_type != lOther$trade_type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$action_merchant = action_merchant;
    final l$action_user = action_user;
    final l$bank_id = bank_id;
    final l$currency_fiat = currency_fiat;
    final l$payment = payment;
    final l$status = status;
    final l$trade_type = trade_type;
    return Object.hashAll([
      _$data.containsKey('action_merchant') ? l$action_merchant : const {},
      _$data.containsKey('action_user') ? l$action_user : const {},
      l$bank_id,
      l$currency_fiat,
      l$payment,
      l$status,
      l$trade_type,
    ]);
  }
}

abstract class CopyWith$Input$Order_CreteSellInput<TRes> {
  factory CopyWith$Input$Order_CreteSellInput(
    Input$Order_CreteSellInput instance,
    TRes Function(Input$Order_CreteSellInput) then,
  ) = _CopyWithImpl$Input$Order_CreteSellInput;

  factory CopyWith$Input$Order_CreteSellInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Order_CreteSellInput;

  TRes call({
    Enum$OrderActions? action_merchant,
    Enum$OrderActions? action_user,
    double? bank_id,
    Enum$Country? currency_fiat,
    Input$PaymentInput? payment,
    Enum$OrderStatus? status,
    Enum$TradeType? trade_type,
  });
  CopyWith$Input$PaymentInput<TRes> get payment;
}

class _CopyWithImpl$Input$Order_CreteSellInput<TRes>
    implements CopyWith$Input$Order_CreteSellInput<TRes> {
  _CopyWithImpl$Input$Order_CreteSellInput(
    this._instance,
    this._then,
  );

  final Input$Order_CreteSellInput _instance;

  final TRes Function(Input$Order_CreteSellInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? action_merchant = _undefined,
    Object? action_user = _undefined,
    Object? bank_id = _undefined,
    Object? currency_fiat = _undefined,
    Object? payment = _undefined,
    Object? status = _undefined,
    Object? trade_type = _undefined,
  }) =>
      _then(Input$Order_CreteSellInput._({
        ..._instance._$data,
        if (action_merchant != _undefined)
          'action_merchant': (action_merchant as Enum$OrderActions?),
        if (action_user != _undefined)
          'action_user': (action_user as Enum$OrderActions?),
        if (bank_id != _undefined && bank_id != null)
          'bank_id': (bank_id as double),
        if (currency_fiat != _undefined && currency_fiat != null)
          'currency_fiat': (currency_fiat as Enum$Country),
        if (payment != _undefined && payment != null)
          'payment': (payment as Input$PaymentInput),
        if (status != _undefined && status != null)
          'status': (status as Enum$OrderStatus),
        if (trade_type != _undefined && trade_type != null)
          'trade_type': (trade_type as Enum$TradeType),
      }));

  CopyWith$Input$PaymentInput<TRes> get payment {
    final local$payment = _instance.payment;
    return CopyWith$Input$PaymentInput(local$payment, (e) => call(payment: e));
  }
}

class _CopyWithStubImpl$Input$Order_CreteSellInput<TRes>
    implements CopyWith$Input$Order_CreteSellInput<TRes> {
  _CopyWithStubImpl$Input$Order_CreteSellInput(this._res);

  TRes _res;

  call({
    Enum$OrderActions? action_merchant,
    Enum$OrderActions? action_user,
    double? bank_id,
    Enum$Country? currency_fiat,
    Input$PaymentInput? payment,
    Enum$OrderStatus? status,
    Enum$TradeType? trade_type,
  }) =>
      _res;

  CopyWith$Input$PaymentInput<TRes> get payment =>
      CopyWith$Input$PaymentInput.stub(_res);
}

class Input$Order_GetAllInput {
  factory Input$Order_GetAllInput({
    String? currency_crypto,
    Enum$Country? currency_fiat,
    Enum$OrderStatus? status,
    Enum$TradeType? trade_type,
  }) =>
      Input$Order_GetAllInput._({
        if (currency_crypto != null) r'currency_crypto': currency_crypto,
        if (currency_fiat != null) r'currency_fiat': currency_fiat,
        if (status != null) r'status': status,
        if (trade_type != null) r'trade_type': trade_type,
      });

  Input$Order_GetAllInput._(this._$data);

  factory Input$Order_GetAllInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('currency_crypto')) {
      final l$currency_crypto = data['currency_crypto'];
      result$data['currency_crypto'] = (l$currency_crypto as String?);
    }
    if (data.containsKey('currency_fiat')) {
      final l$currency_fiat = data['currency_fiat'];
      result$data['currency_fiat'] = l$currency_fiat == null
          ? null
          : fromJson$Enum$Country((l$currency_fiat as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String));
    }
    if (data.containsKey('trade_type')) {
      final l$trade_type = data['trade_type'];
      result$data['trade_type'] = l$trade_type == null
          ? null
          : fromJson$Enum$TradeType((l$trade_type as String));
    }
    return Input$Order_GetAllInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get currency_crypto => (_$data['currency_crypto'] as String?);

  Enum$Country? get currency_fiat => (_$data['currency_fiat'] as Enum$Country?);

  Enum$OrderStatus? get status => (_$data['status'] as Enum$OrderStatus?);

  Enum$TradeType? get trade_type => (_$data['trade_type'] as Enum$TradeType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('currency_crypto')) {
      final l$currency_crypto = currency_crypto;
      result$data['currency_crypto'] = l$currency_crypto;
    }
    if (_$data.containsKey('currency_fiat')) {
      final l$currency_fiat = currency_fiat;
      result$data['currency_fiat'] =
          l$currency_fiat == null ? null : toJson$Enum$Country(l$currency_fiat);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    }
    if (_$data.containsKey('trade_type')) {
      final l$trade_type = trade_type;
      result$data['trade_type'] =
          l$trade_type == null ? null : toJson$Enum$TradeType(l$trade_type);
    }
    return result$data;
  }

  CopyWith$Input$Order_GetAllInput<Input$Order_GetAllInput> get copyWith =>
      CopyWith$Input$Order_GetAllInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Order_GetAllInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currency_crypto = currency_crypto;
    final lOther$currency_crypto = other.currency_crypto;
    if (_$data.containsKey('currency_crypto') !=
        other._$data.containsKey('currency_crypto')) {
      return false;
    }
    if (l$currency_crypto != lOther$currency_crypto) {
      return false;
    }
    final l$currency_fiat = currency_fiat;
    final lOther$currency_fiat = other.currency_fiat;
    if (_$data.containsKey('currency_fiat') !=
        other._$data.containsKey('currency_fiat')) {
      return false;
    }
    if (l$currency_fiat != lOther$currency_fiat) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$trade_type = trade_type;
    final lOther$trade_type = other.trade_type;
    if (_$data.containsKey('trade_type') !=
        other._$data.containsKey('trade_type')) {
      return false;
    }
    if (l$trade_type != lOther$trade_type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$currency_crypto = currency_crypto;
    final l$currency_fiat = currency_fiat;
    final l$status = status;
    final l$trade_type = trade_type;
    return Object.hashAll([
      _$data.containsKey('currency_crypto') ? l$currency_crypto : const {},
      _$data.containsKey('currency_fiat') ? l$currency_fiat : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('trade_type') ? l$trade_type : const {},
    ]);
  }
}

abstract class CopyWith$Input$Order_GetAllInput<TRes> {
  factory CopyWith$Input$Order_GetAllInput(
    Input$Order_GetAllInput instance,
    TRes Function(Input$Order_GetAllInput) then,
  ) = _CopyWithImpl$Input$Order_GetAllInput;

  factory CopyWith$Input$Order_GetAllInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Order_GetAllInput;

  TRes call({
    String? currency_crypto,
    Enum$Country? currency_fiat,
    Enum$OrderStatus? status,
    Enum$TradeType? trade_type,
  });
}

class _CopyWithImpl$Input$Order_GetAllInput<TRes>
    implements CopyWith$Input$Order_GetAllInput<TRes> {
  _CopyWithImpl$Input$Order_GetAllInput(
    this._instance,
    this._then,
  );

  final Input$Order_GetAllInput _instance;

  final TRes Function(Input$Order_GetAllInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currency_crypto = _undefined,
    Object? currency_fiat = _undefined,
    Object? status = _undefined,
    Object? trade_type = _undefined,
  }) =>
      _then(Input$Order_GetAllInput._({
        ..._instance._$data,
        if (currency_crypto != _undefined)
          'currency_crypto': (currency_crypto as String?),
        if (currency_fiat != _undefined)
          'currency_fiat': (currency_fiat as Enum$Country?),
        if (status != _undefined) 'status': (status as Enum$OrderStatus?),
        if (trade_type != _undefined)
          'trade_type': (trade_type as Enum$TradeType?),
      }));
}

class _CopyWithStubImpl$Input$Order_GetAllInput<TRes>
    implements CopyWith$Input$Order_GetAllInput<TRes> {
  _CopyWithStubImpl$Input$Order_GetAllInput(this._res);

  TRes _res;

  call({
    String? currency_crypto,
    Enum$Country? currency_fiat,
    Enum$OrderStatus? status,
    Enum$TradeType? trade_type,
  }) =>
      _res;
}

class Input$Order_GetOneInput {
  factory Input$Order_GetOneInput({required String id}) =>
      Input$Order_GetOneInput._({
        r'id': id,
      });

  Input$Order_GetOneInput._(this._$data);

  factory Input$Order_GetOneInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$Order_GetOneInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$Order_GetOneInput<Input$Order_GetOneInput> get copyWith =>
      CopyWith$Input$Order_GetOneInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Order_GetOneInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$Order_GetOneInput<TRes> {
  factory CopyWith$Input$Order_GetOneInput(
    Input$Order_GetOneInput instance,
    TRes Function(Input$Order_GetOneInput) then,
  ) = _CopyWithImpl$Input$Order_GetOneInput;

  factory CopyWith$Input$Order_GetOneInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Order_GetOneInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$Order_GetOneInput<TRes>
    implements CopyWith$Input$Order_GetOneInput<TRes> {
  _CopyWithImpl$Input$Order_GetOneInput(
    this._instance,
    this._then,
  );

  final Input$Order_GetOneInput _instance;

  final TRes Function(Input$Order_GetOneInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$Order_GetOneInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$Order_GetOneInput<TRes>
    implements CopyWith$Input$Order_GetOneInput<TRes> {
  _CopyWithStubImpl$Input$Order_GetOneInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$Order_MoveCryptoToEscrowInput {
  factory Input$Order_MoveCryptoToEscrowInput({
    required Enum$OrderActions action,
    required int amountCrypto,
    required String currencyCrypto,
    required String id,
  }) =>
      Input$Order_MoveCryptoToEscrowInput._({
        r'action': action,
        r'amountCrypto': amountCrypto,
        r'currencyCrypto': currencyCrypto,
        r'id': id,
      });

  Input$Order_MoveCryptoToEscrowInput._(this._$data);

  factory Input$Order_MoveCryptoToEscrowInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$action = data['action'];
    result$data['action'] = fromJson$Enum$OrderActions((l$action as String));
    final l$amountCrypto = data['amountCrypto'];
    result$data['amountCrypto'] = (l$amountCrypto as int);
    final l$currencyCrypto = data['currencyCrypto'];
    result$data['currencyCrypto'] = (l$currencyCrypto as String);
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$Order_MoveCryptoToEscrowInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderActions get action => (_$data['action'] as Enum$OrderActions);

  int get amountCrypto => (_$data['amountCrypto'] as int);

  String get currencyCrypto => (_$data['currencyCrypto'] as String);

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$action = action;
    result$data['action'] = toJson$Enum$OrderActions(l$action);
    final l$amountCrypto = amountCrypto;
    result$data['amountCrypto'] = l$amountCrypto;
    final l$currencyCrypto = currencyCrypto;
    result$data['currencyCrypto'] = l$currencyCrypto;
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$Order_MoveCryptoToEscrowInput<
          Input$Order_MoveCryptoToEscrowInput>
      get copyWith => CopyWith$Input$Order_MoveCryptoToEscrowInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Order_MoveCryptoToEscrowInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$amountCrypto = amountCrypto;
    final lOther$amountCrypto = other.amountCrypto;
    if (l$amountCrypto != lOther$amountCrypto) {
      return false;
    }
    final l$currencyCrypto = currencyCrypto;
    final lOther$currencyCrypto = other.currencyCrypto;
    if (l$currencyCrypto != lOther$currencyCrypto) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$amountCrypto = amountCrypto;
    final l$currencyCrypto = currencyCrypto;
    final l$id = id;
    return Object.hashAll([
      l$action,
      l$amountCrypto,
      l$currencyCrypto,
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$Order_MoveCryptoToEscrowInput<TRes> {
  factory CopyWith$Input$Order_MoveCryptoToEscrowInput(
    Input$Order_MoveCryptoToEscrowInput instance,
    TRes Function(Input$Order_MoveCryptoToEscrowInput) then,
  ) = _CopyWithImpl$Input$Order_MoveCryptoToEscrowInput;

  factory CopyWith$Input$Order_MoveCryptoToEscrowInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Order_MoveCryptoToEscrowInput;

  TRes call({
    Enum$OrderActions? action,
    int? amountCrypto,
    String? currencyCrypto,
    String? id,
  });
}

class _CopyWithImpl$Input$Order_MoveCryptoToEscrowInput<TRes>
    implements CopyWith$Input$Order_MoveCryptoToEscrowInput<TRes> {
  _CopyWithImpl$Input$Order_MoveCryptoToEscrowInput(
    this._instance,
    this._then,
  );

  final Input$Order_MoveCryptoToEscrowInput _instance;

  final TRes Function(Input$Order_MoveCryptoToEscrowInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? action = _undefined,
    Object? amountCrypto = _undefined,
    Object? currencyCrypto = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$Order_MoveCryptoToEscrowInput._({
        ..._instance._$data,
        if (action != _undefined && action != null)
          'action': (action as Enum$OrderActions),
        if (amountCrypto != _undefined && amountCrypto != null)
          'amountCrypto': (amountCrypto as int),
        if (currencyCrypto != _undefined && currencyCrypto != null)
          'currencyCrypto': (currencyCrypto as String),
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$Order_MoveCryptoToEscrowInput<TRes>
    implements CopyWith$Input$Order_MoveCryptoToEscrowInput<TRes> {
  _CopyWithStubImpl$Input$Order_MoveCryptoToEscrowInput(this._res);

  TRes _res;

  call({
    Enum$OrderActions? action,
    int? amountCrypto,
    String? currencyCrypto,
    String? id,
  }) =>
      _res;
}

class Input$PaymentInput {
  factory Input$PaymentInput({
    required double amountCrypto,
    required double amountFiat,
    required Enum$Country fiatCurrency,
    bool? isNative,
    required String tokenAddress,
    required String tokenChain,
    required String transaction_pin,
    required String user_uid,
  }) =>
      Input$PaymentInput._({
        r'amountCrypto': amountCrypto,
        r'amountFiat': amountFiat,
        r'fiatCurrency': fiatCurrency,
        if (isNative != null) r'isNative': isNative,
        r'tokenAddress': tokenAddress,
        r'tokenChain': tokenChain,
        r'transaction_pin': transaction_pin,
        r'user_uid': user_uid,
      });

  Input$PaymentInput._(this._$data);

  factory Input$PaymentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$amountCrypto = data['amountCrypto'];
    result$data['amountCrypto'] = (l$amountCrypto as num).toDouble();
    final l$amountFiat = data['amountFiat'];
    result$data['amountFiat'] = (l$amountFiat as num).toDouble();
    final l$fiatCurrency = data['fiatCurrency'];
    result$data['fiatCurrency'] =
        fromJson$Enum$Country((l$fiatCurrency as String));
    if (data.containsKey('isNative')) {
      final l$isNative = data['isNative'];
      result$data['isNative'] = (l$isNative as bool?);
    }
    final l$tokenAddress = data['tokenAddress'];
    result$data['tokenAddress'] = (l$tokenAddress as String);
    final l$tokenChain = data['tokenChain'];
    result$data['tokenChain'] = (l$tokenChain as String);
    final l$transaction_pin = data['transaction_pin'];
    result$data['transaction_pin'] = (l$transaction_pin as String);
    final l$user_uid = data['user_uid'];
    result$data['user_uid'] = (l$user_uid as String);
    return Input$PaymentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get amountCrypto => (_$data['amountCrypto'] as double);

  double get amountFiat => (_$data['amountFiat'] as double);

  Enum$Country get fiatCurrency => (_$data['fiatCurrency'] as Enum$Country);

  bool? get isNative => (_$data['isNative'] as bool?);

  String get tokenAddress => (_$data['tokenAddress'] as String);

  String get tokenChain => (_$data['tokenChain'] as String);

  String get transaction_pin => (_$data['transaction_pin'] as String);

  String get user_uid => (_$data['user_uid'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$amountCrypto = amountCrypto;
    result$data['amountCrypto'] = l$amountCrypto;
    final l$amountFiat = amountFiat;
    result$data['amountFiat'] = l$amountFiat;
    final l$fiatCurrency = fiatCurrency;
    result$data['fiatCurrency'] = toJson$Enum$Country(l$fiatCurrency);
    if (_$data.containsKey('isNative')) {
      final l$isNative = isNative;
      result$data['isNative'] = l$isNative;
    }
    final l$tokenAddress = tokenAddress;
    result$data['tokenAddress'] = l$tokenAddress;
    final l$tokenChain = tokenChain;
    result$data['tokenChain'] = l$tokenChain;
    final l$transaction_pin = transaction_pin;
    result$data['transaction_pin'] = l$transaction_pin;
    final l$user_uid = user_uid;
    result$data['user_uid'] = l$user_uid;
    return result$data;
  }

  CopyWith$Input$PaymentInput<Input$PaymentInput> get copyWith =>
      CopyWith$Input$PaymentInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaymentInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$amountCrypto = amountCrypto;
    final lOther$amountCrypto = other.amountCrypto;
    if (l$amountCrypto != lOther$amountCrypto) {
      return false;
    }
    final l$amountFiat = amountFiat;
    final lOther$amountFiat = other.amountFiat;
    if (l$amountFiat != lOther$amountFiat) {
      return false;
    }
    final l$fiatCurrency = fiatCurrency;
    final lOther$fiatCurrency = other.fiatCurrency;
    if (l$fiatCurrency != lOther$fiatCurrency) {
      return false;
    }
    final l$isNative = isNative;
    final lOther$isNative = other.isNative;
    if (_$data.containsKey('isNative') !=
        other._$data.containsKey('isNative')) {
      return false;
    }
    if (l$isNative != lOther$isNative) {
      return false;
    }
    final l$tokenAddress = tokenAddress;
    final lOther$tokenAddress = other.tokenAddress;
    if (l$tokenAddress != lOther$tokenAddress) {
      return false;
    }
    final l$tokenChain = tokenChain;
    final lOther$tokenChain = other.tokenChain;
    if (l$tokenChain != lOther$tokenChain) {
      return false;
    }
    final l$transaction_pin = transaction_pin;
    final lOther$transaction_pin = other.transaction_pin;
    if (l$transaction_pin != lOther$transaction_pin) {
      return false;
    }
    final l$user_uid = user_uid;
    final lOther$user_uid = other.user_uid;
    if (l$user_uid != lOther$user_uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amountCrypto = amountCrypto;
    final l$amountFiat = amountFiat;
    final l$fiatCurrency = fiatCurrency;
    final l$isNative = isNative;
    final l$tokenAddress = tokenAddress;
    final l$tokenChain = tokenChain;
    final l$transaction_pin = transaction_pin;
    final l$user_uid = user_uid;
    return Object.hashAll([
      l$amountCrypto,
      l$amountFiat,
      l$fiatCurrency,
      _$data.containsKey('isNative') ? l$isNative : const {},
      l$tokenAddress,
      l$tokenChain,
      l$transaction_pin,
      l$user_uid,
    ]);
  }
}

abstract class CopyWith$Input$PaymentInput<TRes> {
  factory CopyWith$Input$PaymentInput(
    Input$PaymentInput instance,
    TRes Function(Input$PaymentInput) then,
  ) = _CopyWithImpl$Input$PaymentInput;

  factory CopyWith$Input$PaymentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentInput;

  TRes call({
    double? amountCrypto,
    double? amountFiat,
    Enum$Country? fiatCurrency,
    bool? isNative,
    String? tokenAddress,
    String? tokenChain,
    String? transaction_pin,
    String? user_uid,
  });
}

class _CopyWithImpl$Input$PaymentInput<TRes>
    implements CopyWith$Input$PaymentInput<TRes> {
  _CopyWithImpl$Input$PaymentInput(
    this._instance,
    this._then,
  );

  final Input$PaymentInput _instance;

  final TRes Function(Input$PaymentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amountCrypto = _undefined,
    Object? amountFiat = _undefined,
    Object? fiatCurrency = _undefined,
    Object? isNative = _undefined,
    Object? tokenAddress = _undefined,
    Object? tokenChain = _undefined,
    Object? transaction_pin = _undefined,
    Object? user_uid = _undefined,
  }) =>
      _then(Input$PaymentInput._({
        ..._instance._$data,
        if (amountCrypto != _undefined && amountCrypto != null)
          'amountCrypto': (amountCrypto as double),
        if (amountFiat != _undefined && amountFiat != null)
          'amountFiat': (amountFiat as double),
        if (fiatCurrency != _undefined && fiatCurrency != null)
          'fiatCurrency': (fiatCurrency as Enum$Country),
        if (isNative != _undefined) 'isNative': (isNative as bool?),
        if (tokenAddress != _undefined && tokenAddress != null)
          'tokenAddress': (tokenAddress as String),
        if (tokenChain != _undefined && tokenChain != null)
          'tokenChain': (tokenChain as String),
        if (transaction_pin != _undefined && transaction_pin != null)
          'transaction_pin': (transaction_pin as String),
        if (user_uid != _undefined && user_uid != null)
          'user_uid': (user_uid as String),
      }));
}

class _CopyWithStubImpl$Input$PaymentInput<TRes>
    implements CopyWith$Input$PaymentInput<TRes> {
  _CopyWithStubImpl$Input$PaymentInput(this._res);

  TRes _res;

  call({
    double? amountCrypto,
    double? amountFiat,
    Enum$Country? fiatCurrency,
    bool? isNative,
    String? tokenAddress,
    String? tokenChain,
    String? transaction_pin,
    String? user_uid,
  }) =>
      _res;
}

class Input$Transaction_GetOneInput {
  factory Input$Transaction_GetOneInput({required int id}) =>
      Input$Transaction_GetOneInput._({
        r'id': id,
      });

  Input$Transaction_GetOneInput._(this._$data);

  factory Input$Transaction_GetOneInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$Transaction_GetOneInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$Transaction_GetOneInput<Input$Transaction_GetOneInput>
      get copyWith => CopyWith$Input$Transaction_GetOneInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Transaction_GetOneInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$Transaction_GetOneInput<TRes> {
  factory CopyWith$Input$Transaction_GetOneInput(
    Input$Transaction_GetOneInput instance,
    TRes Function(Input$Transaction_GetOneInput) then,
  ) = _CopyWithImpl$Input$Transaction_GetOneInput;

  factory CopyWith$Input$Transaction_GetOneInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Transaction_GetOneInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$Transaction_GetOneInput<TRes>
    implements CopyWith$Input$Transaction_GetOneInput<TRes> {
  _CopyWithImpl$Input$Transaction_GetOneInput(
    this._instance,
    this._then,
  );

  final Input$Transaction_GetOneInput _instance;

  final TRes Function(Input$Transaction_GetOneInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$Transaction_GetOneInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$Transaction_GetOneInput<TRes>
    implements CopyWith$Input$Transaction_GetOneInput<TRes> {
  _CopyWithStubImpl$Input$Transaction_GetOneInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$TvBill_GetTVBouquetInput {
  factory Input$TvBill_GetTVBouquetInput({
    required Enum$Country countryCode,
    required String service,
  }) =>
      Input$TvBill_GetTVBouquetInput._({
        r'countryCode': countryCode,
        r'service': service,
      });

  Input$TvBill_GetTVBouquetInput._(this._$data);

  factory Input$TvBill_GetTVBouquetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    final l$service = data['service'];
    result$data['service'] = (l$service as String);
    return Input$TvBill_GetTVBouquetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  String get service => (_$data['service'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    final l$service = service;
    result$data['service'] = l$service;
    return result$data;
  }

  CopyWith$Input$TvBill_GetTVBouquetInput<Input$TvBill_GetTVBouquetInput>
      get copyWith => CopyWith$Input$TvBill_GetTVBouquetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TvBill_GetTVBouquetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    final l$service = service;
    return Object.hashAll([
      l$countryCode,
      l$service,
    ]);
  }
}

abstract class CopyWith$Input$TvBill_GetTVBouquetInput<TRes> {
  factory CopyWith$Input$TvBill_GetTVBouquetInput(
    Input$TvBill_GetTVBouquetInput instance,
    TRes Function(Input$TvBill_GetTVBouquetInput) then,
  ) = _CopyWithImpl$Input$TvBill_GetTVBouquetInput;

  factory CopyWith$Input$TvBill_GetTVBouquetInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TvBill_GetTVBouquetInput;

  TRes call({
    Enum$Country? countryCode,
    String? service,
  });
}

class _CopyWithImpl$Input$TvBill_GetTVBouquetInput<TRes>
    implements CopyWith$Input$TvBill_GetTVBouquetInput<TRes> {
  _CopyWithImpl$Input$TvBill_GetTVBouquetInput(
    this._instance,
    this._then,
  );

  final Input$TvBill_GetTVBouquetInput _instance;

  final TRes Function(Input$TvBill_GetTVBouquetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryCode = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Input$TvBill_GetTVBouquetInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
        if (service != _undefined && service != null)
          'service': (service as String),
      }));
}

class _CopyWithStubImpl$Input$TvBill_GetTVBouquetInput<TRes>
    implements CopyWith$Input$TvBill_GetTVBouquetInput<TRes> {
  _CopyWithStubImpl$Input$TvBill_GetTVBouquetInput(this._res);

  TRes _res;

  call({
    Enum$Country? countryCode,
    String? service,
  }) =>
      _res;
}

class Input$TvBill_GetTVProvidersInput {
  factory Input$TvBill_GetTVProvidersInput(
          {required Enum$Country countryCode}) =>
      Input$TvBill_GetTVProvidersInput._({
        r'countryCode': countryCode,
      });

  Input$TvBill_GetTVProvidersInput._(this._$data);

  factory Input$TvBill_GetTVProvidersInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    return Input$TvBill_GetTVProvidersInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    return result$data;
  }

  CopyWith$Input$TvBill_GetTVProvidersInput<Input$TvBill_GetTVProvidersInput>
      get copyWith => CopyWith$Input$TvBill_GetTVProvidersInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TvBill_GetTVProvidersInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    return Object.hashAll([l$countryCode]);
  }
}

abstract class CopyWith$Input$TvBill_GetTVProvidersInput<TRes> {
  factory CopyWith$Input$TvBill_GetTVProvidersInput(
    Input$TvBill_GetTVProvidersInput instance,
    TRes Function(Input$TvBill_GetTVProvidersInput) then,
  ) = _CopyWithImpl$Input$TvBill_GetTVProvidersInput;

  factory CopyWith$Input$TvBill_GetTVProvidersInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TvBill_GetTVProvidersInput;

  TRes call({Enum$Country? countryCode});
}

class _CopyWithImpl$Input$TvBill_GetTVProvidersInput<TRes>
    implements CopyWith$Input$TvBill_GetTVProvidersInput<TRes> {
  _CopyWithImpl$Input$TvBill_GetTVProvidersInput(
    this._instance,
    this._then,
  );

  final Input$TvBill_GetTVProvidersInput _instance;

  final TRes Function(Input$TvBill_GetTVProvidersInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? countryCode = _undefined}) =>
      _then(Input$TvBill_GetTVProvidersInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
      }));
}

class _CopyWithStubImpl$Input$TvBill_GetTVProvidersInput<TRes>
    implements CopyWith$Input$TvBill_GetTVProvidersInput<TRes> {
  _CopyWithStubImpl$Input$TvBill_GetTVProvidersInput(this._res);

  TRes _res;

  call({Enum$Country? countryCode}) => _res;
}

class Input$TvBill_PaymentInput {
  factory Input$TvBill_PaymentInput({
    required String amount,
    required Enum$Country countryCode,
    required String customerName,
    required String packageCode,
    required Input$PaymentInput payment,
    required String reference,
    required String service,
    required String smartCardNumber,
  }) =>
      Input$TvBill_PaymentInput._({
        r'amount': amount,
        r'countryCode': countryCode,
        r'customerName': customerName,
        r'packageCode': packageCode,
        r'payment': payment,
        r'reference': reference,
        r'service': service,
        r'smartCardNumber': smartCardNumber,
      });

  Input$TvBill_PaymentInput._(this._$data);

  factory Input$TvBill_PaymentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as String);
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    final l$customerName = data['customerName'];
    result$data['customerName'] = (l$customerName as String);
    final l$packageCode = data['packageCode'];
    result$data['packageCode'] = (l$packageCode as String);
    final l$payment = data['payment'];
    result$data['payment'] =
        Input$PaymentInput.fromJson((l$payment as Map<String, dynamic>));
    final l$reference = data['reference'];
    result$data['reference'] = (l$reference as String);
    final l$service = data['service'];
    result$data['service'] = (l$service as String);
    final l$smartCardNumber = data['smartCardNumber'];
    result$data['smartCardNumber'] = (l$smartCardNumber as String);
    return Input$TvBill_PaymentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get amount => (_$data['amount'] as String);

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  String get customerName => (_$data['customerName'] as String);

  String get packageCode => (_$data['packageCode'] as String);

  Input$PaymentInput get payment => (_$data['payment'] as Input$PaymentInput);

  String get reference => (_$data['reference'] as String);

  String get service => (_$data['service'] as String);

  String get smartCardNumber => (_$data['smartCardNumber'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    final l$customerName = customerName;
    result$data['customerName'] = l$customerName;
    final l$packageCode = packageCode;
    result$data['packageCode'] = l$packageCode;
    final l$payment = payment;
    result$data['payment'] = l$payment.toJson();
    final l$reference = reference;
    result$data['reference'] = l$reference;
    final l$service = service;
    result$data['service'] = l$service;
    final l$smartCardNumber = smartCardNumber;
    result$data['smartCardNumber'] = l$smartCardNumber;
    return result$data;
  }

  CopyWith$Input$TvBill_PaymentInput<Input$TvBill_PaymentInput> get copyWith =>
      CopyWith$Input$TvBill_PaymentInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TvBill_PaymentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$customerName = customerName;
    final lOther$customerName = other.customerName;
    if (l$customerName != lOther$customerName) {
      return false;
    }
    final l$packageCode = packageCode;
    final lOther$packageCode = other.packageCode;
    if (l$packageCode != lOther$packageCode) {
      return false;
    }
    final l$payment = payment;
    final lOther$payment = other.payment;
    if (l$payment != lOther$payment) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$smartCardNumber = smartCardNumber;
    final lOther$smartCardNumber = other.smartCardNumber;
    if (l$smartCardNumber != lOther$smartCardNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$countryCode = countryCode;
    final l$customerName = customerName;
    final l$packageCode = packageCode;
    final l$payment = payment;
    final l$reference = reference;
    final l$service = service;
    final l$smartCardNumber = smartCardNumber;
    return Object.hashAll([
      l$amount,
      l$countryCode,
      l$customerName,
      l$packageCode,
      l$payment,
      l$reference,
      l$service,
      l$smartCardNumber,
    ]);
  }
}

abstract class CopyWith$Input$TvBill_PaymentInput<TRes> {
  factory CopyWith$Input$TvBill_PaymentInput(
    Input$TvBill_PaymentInput instance,
    TRes Function(Input$TvBill_PaymentInput) then,
  ) = _CopyWithImpl$Input$TvBill_PaymentInput;

  factory CopyWith$Input$TvBill_PaymentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TvBill_PaymentInput;

  TRes call({
    String? amount,
    Enum$Country? countryCode,
    String? customerName,
    String? packageCode,
    Input$PaymentInput? payment,
    String? reference,
    String? service,
    String? smartCardNumber,
  });
  CopyWith$Input$PaymentInput<TRes> get payment;
}

class _CopyWithImpl$Input$TvBill_PaymentInput<TRes>
    implements CopyWith$Input$TvBill_PaymentInput<TRes> {
  _CopyWithImpl$Input$TvBill_PaymentInput(
    this._instance,
    this._then,
  );

  final Input$TvBill_PaymentInput _instance;

  final TRes Function(Input$TvBill_PaymentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? countryCode = _undefined,
    Object? customerName = _undefined,
    Object? packageCode = _undefined,
    Object? payment = _undefined,
    Object? reference = _undefined,
    Object? service = _undefined,
    Object? smartCardNumber = _undefined,
  }) =>
      _then(Input$TvBill_PaymentInput._({
        ..._instance._$data,
        if (amount != _undefined && amount != null)
          'amount': (amount as String),
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
        if (customerName != _undefined && customerName != null)
          'customerName': (customerName as String),
        if (packageCode != _undefined && packageCode != null)
          'packageCode': (packageCode as String),
        if (payment != _undefined && payment != null)
          'payment': (payment as Input$PaymentInput),
        if (reference != _undefined && reference != null)
          'reference': (reference as String),
        if (service != _undefined && service != null)
          'service': (service as String),
        if (smartCardNumber != _undefined && smartCardNumber != null)
          'smartCardNumber': (smartCardNumber as String),
      }));

  CopyWith$Input$PaymentInput<TRes> get payment {
    final local$payment = _instance.payment;
    return CopyWith$Input$PaymentInput(local$payment, (e) => call(payment: e));
  }
}

class _CopyWithStubImpl$Input$TvBill_PaymentInput<TRes>
    implements CopyWith$Input$TvBill_PaymentInput<TRes> {
  _CopyWithStubImpl$Input$TvBill_PaymentInput(this._res);

  TRes _res;

  call({
    String? amount,
    Enum$Country? countryCode,
    String? customerName,
    String? packageCode,
    Input$PaymentInput? payment,
    String? reference,
    String? service,
    String? smartCardNumber,
  }) =>
      _res;

  CopyWith$Input$PaymentInput<TRes> get payment =>
      CopyWith$Input$PaymentInput.stub(_res);
}

class Input$TvBill_ValidateAccountInput {
  factory Input$TvBill_ValidateAccountInput({
    required String service,
    required String smartCardNumber,
  }) =>
      Input$TvBill_ValidateAccountInput._({
        r'service': service,
        r'smartCardNumber': smartCardNumber,
      });

  Input$TvBill_ValidateAccountInput._(this._$data);

  factory Input$TvBill_ValidateAccountInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$service = data['service'];
    result$data['service'] = (l$service as String);
    final l$smartCardNumber = data['smartCardNumber'];
    result$data['smartCardNumber'] = (l$smartCardNumber as String);
    return Input$TvBill_ValidateAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get service => (_$data['service'] as String);

  String get smartCardNumber => (_$data['smartCardNumber'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$service = service;
    result$data['service'] = l$service;
    final l$smartCardNumber = smartCardNumber;
    result$data['smartCardNumber'] = l$smartCardNumber;
    return result$data;
  }

  CopyWith$Input$TvBill_ValidateAccountInput<Input$TvBill_ValidateAccountInput>
      get copyWith => CopyWith$Input$TvBill_ValidateAccountInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TvBill_ValidateAccountInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$smartCardNumber = smartCardNumber;
    final lOther$smartCardNumber = other.smartCardNumber;
    if (l$smartCardNumber != lOther$smartCardNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$service = service;
    final l$smartCardNumber = smartCardNumber;
    return Object.hashAll([
      l$service,
      l$smartCardNumber,
    ]);
  }
}

abstract class CopyWith$Input$TvBill_ValidateAccountInput<TRes> {
  factory CopyWith$Input$TvBill_ValidateAccountInput(
    Input$TvBill_ValidateAccountInput instance,
    TRes Function(Input$TvBill_ValidateAccountInput) then,
  ) = _CopyWithImpl$Input$TvBill_ValidateAccountInput;

  factory CopyWith$Input$TvBill_ValidateAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TvBill_ValidateAccountInput;

  TRes call({
    String? service,
    String? smartCardNumber,
  });
}

class _CopyWithImpl$Input$TvBill_ValidateAccountInput<TRes>
    implements CopyWith$Input$TvBill_ValidateAccountInput<TRes> {
  _CopyWithImpl$Input$TvBill_ValidateAccountInput(
    this._instance,
    this._then,
  );

  final Input$TvBill_ValidateAccountInput _instance;

  final TRes Function(Input$TvBill_ValidateAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? smartCardNumber = _undefined,
  }) =>
      _then(Input$TvBill_ValidateAccountInput._({
        ..._instance._$data,
        if (service != _undefined && service != null)
          'service': (service as String),
        if (smartCardNumber != _undefined && smartCardNumber != null)
          'smartCardNumber': (smartCardNumber as String),
      }));
}

class _CopyWithStubImpl$Input$TvBill_ValidateAccountInput<TRes>
    implements CopyWith$Input$TvBill_ValidateAccountInput<TRes> {
  _CopyWithStubImpl$Input$TvBill_ValidateAccountInput(this._res);

  TRes _res;

  call({
    String? service,
    String? smartCardNumber,
  }) =>
      _res;
}

class Input$Utilities_GetOperatorsInput {
  factory Input$Utilities_GetOperatorsInput(
          {required Enum$Country countryCode}) =>
      Input$Utilities_GetOperatorsInput._({
        r'countryCode': countryCode,
      });

  Input$Utilities_GetOperatorsInput._(this._$data);

  factory Input$Utilities_GetOperatorsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    return Input$Utilities_GetOperatorsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    return result$data;
  }

  CopyWith$Input$Utilities_GetOperatorsInput<Input$Utilities_GetOperatorsInput>
      get copyWith => CopyWith$Input$Utilities_GetOperatorsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Utilities_GetOperatorsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    return Object.hashAll([l$countryCode]);
  }
}

abstract class CopyWith$Input$Utilities_GetOperatorsInput<TRes> {
  factory CopyWith$Input$Utilities_GetOperatorsInput(
    Input$Utilities_GetOperatorsInput instance,
    TRes Function(Input$Utilities_GetOperatorsInput) then,
  ) = _CopyWithImpl$Input$Utilities_GetOperatorsInput;

  factory CopyWith$Input$Utilities_GetOperatorsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Utilities_GetOperatorsInput;

  TRes call({Enum$Country? countryCode});
}

class _CopyWithImpl$Input$Utilities_GetOperatorsInput<TRes>
    implements CopyWith$Input$Utilities_GetOperatorsInput<TRes> {
  _CopyWithImpl$Input$Utilities_GetOperatorsInput(
    this._instance,
    this._then,
  );

  final Input$Utilities_GetOperatorsInput _instance;

  final TRes Function(Input$Utilities_GetOperatorsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? countryCode = _undefined}) =>
      _then(Input$Utilities_GetOperatorsInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
      }));
}

class _CopyWithStubImpl$Input$Utilities_GetOperatorsInput<TRes>
    implements CopyWith$Input$Utilities_GetOperatorsInput<TRes> {
  _CopyWithStubImpl$Input$Utilities_GetOperatorsInput(this._res);

  TRes _res;

  call({Enum$Country? countryCode}) => _res;
}

class Input$Utilities_PurchaseAirtimeInput {
  factory Input$Utilities_PurchaseAirtimeInput({
    required double amount,
    required Enum$Country countryCode,
    required int operatorId,
    required Input$PaymentInput payment,
    required String phoneNo,
  }) =>
      Input$Utilities_PurchaseAirtimeInput._({
        r'amount': amount,
        r'countryCode': countryCode,
        r'operatorId': operatorId,
        r'payment': payment,
        r'phoneNo': phoneNo,
      });

  Input$Utilities_PurchaseAirtimeInput._(this._$data);

  factory Input$Utilities_PurchaseAirtimeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    final l$operatorId = data['operatorId'];
    result$data['operatorId'] = (l$operatorId as int);
    final l$payment = data['payment'];
    result$data['payment'] =
        Input$PaymentInput.fromJson((l$payment as Map<String, dynamic>));
    final l$phoneNo = data['phoneNo'];
    result$data['phoneNo'] = (l$phoneNo as String);
    return Input$Utilities_PurchaseAirtimeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get amount => (_$data['amount'] as double);

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  int get operatorId => (_$data['operatorId'] as int);

  Input$PaymentInput get payment => (_$data['payment'] as Input$PaymentInput);

  String get phoneNo => (_$data['phoneNo'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    final l$operatorId = operatorId;
    result$data['operatorId'] = l$operatorId;
    final l$payment = payment;
    result$data['payment'] = l$payment.toJson();
    final l$phoneNo = phoneNo;
    result$data['phoneNo'] = l$phoneNo;
    return result$data;
  }

  CopyWith$Input$Utilities_PurchaseAirtimeInput<
          Input$Utilities_PurchaseAirtimeInput>
      get copyWith => CopyWith$Input$Utilities_PurchaseAirtimeInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Utilities_PurchaseAirtimeInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$operatorId = operatorId;
    final lOther$operatorId = other.operatorId;
    if (l$operatorId != lOther$operatorId) {
      return false;
    }
    final l$payment = payment;
    final lOther$payment = other.payment;
    if (l$payment != lOther$payment) {
      return false;
    }
    final l$phoneNo = phoneNo;
    final lOther$phoneNo = other.phoneNo;
    if (l$phoneNo != lOther$phoneNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$countryCode = countryCode;
    final l$operatorId = operatorId;
    final l$payment = payment;
    final l$phoneNo = phoneNo;
    return Object.hashAll([
      l$amount,
      l$countryCode,
      l$operatorId,
      l$payment,
      l$phoneNo,
    ]);
  }
}

abstract class CopyWith$Input$Utilities_PurchaseAirtimeInput<TRes> {
  factory CopyWith$Input$Utilities_PurchaseAirtimeInput(
    Input$Utilities_PurchaseAirtimeInput instance,
    TRes Function(Input$Utilities_PurchaseAirtimeInput) then,
  ) = _CopyWithImpl$Input$Utilities_PurchaseAirtimeInput;

  factory CopyWith$Input$Utilities_PurchaseAirtimeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Utilities_PurchaseAirtimeInput;

  TRes call({
    double? amount,
    Enum$Country? countryCode,
    int? operatorId,
    Input$PaymentInput? payment,
    String? phoneNo,
  });
  CopyWith$Input$PaymentInput<TRes> get payment;
}

class _CopyWithImpl$Input$Utilities_PurchaseAirtimeInput<TRes>
    implements CopyWith$Input$Utilities_PurchaseAirtimeInput<TRes> {
  _CopyWithImpl$Input$Utilities_PurchaseAirtimeInput(
    this._instance,
    this._then,
  );

  final Input$Utilities_PurchaseAirtimeInput _instance;

  final TRes Function(Input$Utilities_PurchaseAirtimeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? countryCode = _undefined,
    Object? operatorId = _undefined,
    Object? payment = _undefined,
    Object? phoneNo = _undefined,
  }) =>
      _then(Input$Utilities_PurchaseAirtimeInput._({
        ..._instance._$data,
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
        if (operatorId != _undefined && operatorId != null)
          'operatorId': (operatorId as int),
        if (payment != _undefined && payment != null)
          'payment': (payment as Input$PaymentInput),
        if (phoneNo != _undefined && phoneNo != null)
          'phoneNo': (phoneNo as String),
      }));

  CopyWith$Input$PaymentInput<TRes> get payment {
    final local$payment = _instance.payment;
    return CopyWith$Input$PaymentInput(local$payment, (e) => call(payment: e));
  }
}

class _CopyWithStubImpl$Input$Utilities_PurchaseAirtimeInput<TRes>
    implements CopyWith$Input$Utilities_PurchaseAirtimeInput<TRes> {
  _CopyWithStubImpl$Input$Utilities_PurchaseAirtimeInput(this._res);

  TRes _res;

  call({
    double? amount,
    Enum$Country? countryCode,
    int? operatorId,
    Input$PaymentInput? payment,
    String? phoneNo,
  }) =>
      _res;

  CopyWith$Input$PaymentInput<TRes> get payment =>
      CopyWith$Input$PaymentInput.stub(_res);
}

class Input$Utilities_PurchaseDataBundleInput {
  factory Input$Utilities_PurchaseDataBundleInput({
    required double amount,
    required Enum$Country countryCode,
    required int operatorId,
    required Input$PaymentInput payment,
    required String phoneNo,
  }) =>
      Input$Utilities_PurchaseDataBundleInput._({
        r'amount': amount,
        r'countryCode': countryCode,
        r'operatorId': operatorId,
        r'payment': payment,
        r'phoneNo': phoneNo,
      });

  Input$Utilities_PurchaseDataBundleInput._(this._$data);

  factory Input$Utilities_PurchaseDataBundleInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] =
        fromJson$Enum$Country((l$countryCode as String));
    final l$operatorId = data['operatorId'];
    result$data['operatorId'] = (l$operatorId as int);
    final l$payment = data['payment'];
    result$data['payment'] =
        Input$PaymentInput.fromJson((l$payment as Map<String, dynamic>));
    final l$phoneNo = data['phoneNo'];
    result$data['phoneNo'] = (l$phoneNo as String);
    return Input$Utilities_PurchaseDataBundleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get amount => (_$data['amount'] as double);

  Enum$Country get countryCode => (_$data['countryCode'] as Enum$Country);

  int get operatorId => (_$data['operatorId'] as int);

  Input$PaymentInput get payment => (_$data['payment'] as Input$PaymentInput);

  String get phoneNo => (_$data['phoneNo'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$countryCode = countryCode;
    result$data['countryCode'] = toJson$Enum$Country(l$countryCode);
    final l$operatorId = operatorId;
    result$data['operatorId'] = l$operatorId;
    final l$payment = payment;
    result$data['payment'] = l$payment.toJson();
    final l$phoneNo = phoneNo;
    result$data['phoneNo'] = l$phoneNo;
    return result$data;
  }

  CopyWith$Input$Utilities_PurchaseDataBundleInput<
          Input$Utilities_PurchaseDataBundleInput>
      get copyWith => CopyWith$Input$Utilities_PurchaseDataBundleInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Utilities_PurchaseDataBundleInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$operatorId = operatorId;
    final lOther$operatorId = other.operatorId;
    if (l$operatorId != lOther$operatorId) {
      return false;
    }
    final l$payment = payment;
    final lOther$payment = other.payment;
    if (l$payment != lOther$payment) {
      return false;
    }
    final l$phoneNo = phoneNo;
    final lOther$phoneNo = other.phoneNo;
    if (l$phoneNo != lOther$phoneNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$countryCode = countryCode;
    final l$operatorId = operatorId;
    final l$payment = payment;
    final l$phoneNo = phoneNo;
    return Object.hashAll([
      l$amount,
      l$countryCode,
      l$operatorId,
      l$payment,
      l$phoneNo,
    ]);
  }
}

abstract class CopyWith$Input$Utilities_PurchaseDataBundleInput<TRes> {
  factory CopyWith$Input$Utilities_PurchaseDataBundleInput(
    Input$Utilities_PurchaseDataBundleInput instance,
    TRes Function(Input$Utilities_PurchaseDataBundleInput) then,
  ) = _CopyWithImpl$Input$Utilities_PurchaseDataBundleInput;

  factory CopyWith$Input$Utilities_PurchaseDataBundleInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Utilities_PurchaseDataBundleInput;

  TRes call({
    double? amount,
    Enum$Country? countryCode,
    int? operatorId,
    Input$PaymentInput? payment,
    String? phoneNo,
  });
  CopyWith$Input$PaymentInput<TRes> get payment;
}

class _CopyWithImpl$Input$Utilities_PurchaseDataBundleInput<TRes>
    implements CopyWith$Input$Utilities_PurchaseDataBundleInput<TRes> {
  _CopyWithImpl$Input$Utilities_PurchaseDataBundleInput(
    this._instance,
    this._then,
  );

  final Input$Utilities_PurchaseDataBundleInput _instance;

  final TRes Function(Input$Utilities_PurchaseDataBundleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? countryCode = _undefined,
    Object? operatorId = _undefined,
    Object? payment = _undefined,
    Object? phoneNo = _undefined,
  }) =>
      _then(Input$Utilities_PurchaseDataBundleInput._({
        ..._instance._$data,
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as Enum$Country),
        if (operatorId != _undefined && operatorId != null)
          'operatorId': (operatorId as int),
        if (payment != _undefined && payment != null)
          'payment': (payment as Input$PaymentInput),
        if (phoneNo != _undefined && phoneNo != null)
          'phoneNo': (phoneNo as String),
      }));

  CopyWith$Input$PaymentInput<TRes> get payment {
    final local$payment = _instance.payment;
    return CopyWith$Input$PaymentInput(local$payment, (e) => call(payment: e));
  }
}

class _CopyWithStubImpl$Input$Utilities_PurchaseDataBundleInput<TRes>
    implements CopyWith$Input$Utilities_PurchaseDataBundleInput<TRes> {
  _CopyWithStubImpl$Input$Utilities_PurchaseDataBundleInput(this._res);

  TRes _res;

  call({
    double? amount,
    Enum$Country? countryCode,
    int? operatorId,
    Input$PaymentInput? payment,
    String? phoneNo,
  }) =>
      _res;

  CopyWith$Input$PaymentInput<TRes> get payment =>
      CopyWith$Input$PaymentInput.stub(_res);
}

class Input$Wallet_CreateInput {
  factory Input$Wallet_CreateInput({
    required String answer,
    required String pin,
    required String question,
    required String user_uid,
  }) =>
      Input$Wallet_CreateInput._({
        r'answer': answer,
        r'pin': pin,
        r'question': question,
        r'user_uid': user_uid,
      });

  Input$Wallet_CreateInput._(this._$data);

  factory Input$Wallet_CreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$answer = data['answer'];
    result$data['answer'] = (l$answer as String);
    final l$pin = data['pin'];
    result$data['pin'] = (l$pin as String);
    final l$question = data['question'];
    result$data['question'] = (l$question as String);
    final l$user_uid = data['user_uid'];
    result$data['user_uid'] = (l$user_uid as String);
    return Input$Wallet_CreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get answer => (_$data['answer'] as String);

  String get pin => (_$data['pin'] as String);

  String get question => (_$data['question'] as String);

  String get user_uid => (_$data['user_uid'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$answer = answer;
    result$data['answer'] = l$answer;
    final l$pin = pin;
    result$data['pin'] = l$pin;
    final l$question = question;
    result$data['question'] = l$question;
    final l$user_uid = user_uid;
    result$data['user_uid'] = l$user_uid;
    return result$data;
  }

  CopyWith$Input$Wallet_CreateInput<Input$Wallet_CreateInput> get copyWith =>
      CopyWith$Input$Wallet_CreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Wallet_CreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$answer = answer;
    final lOther$answer = other.answer;
    if (l$answer != lOther$answer) {
      return false;
    }
    final l$pin = pin;
    final lOther$pin = other.pin;
    if (l$pin != lOther$pin) {
      return false;
    }
    final l$question = question;
    final lOther$question = other.question;
    if (l$question != lOther$question) {
      return false;
    }
    final l$user_uid = user_uid;
    final lOther$user_uid = other.user_uid;
    if (l$user_uid != lOther$user_uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$answer = answer;
    final l$pin = pin;
    final l$question = question;
    final l$user_uid = user_uid;
    return Object.hashAll([
      l$answer,
      l$pin,
      l$question,
      l$user_uid,
    ]);
  }
}

abstract class CopyWith$Input$Wallet_CreateInput<TRes> {
  factory CopyWith$Input$Wallet_CreateInput(
    Input$Wallet_CreateInput instance,
    TRes Function(Input$Wallet_CreateInput) then,
  ) = _CopyWithImpl$Input$Wallet_CreateInput;

  factory CopyWith$Input$Wallet_CreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Wallet_CreateInput;

  TRes call({
    String? answer,
    String? pin,
    String? question,
    String? user_uid,
  });
}

class _CopyWithImpl$Input$Wallet_CreateInput<TRes>
    implements CopyWith$Input$Wallet_CreateInput<TRes> {
  _CopyWithImpl$Input$Wallet_CreateInput(
    this._instance,
    this._then,
  );

  final Input$Wallet_CreateInput _instance;

  final TRes Function(Input$Wallet_CreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? answer = _undefined,
    Object? pin = _undefined,
    Object? question = _undefined,
    Object? user_uid = _undefined,
  }) =>
      _then(Input$Wallet_CreateInput._({
        ..._instance._$data,
        if (answer != _undefined && answer != null)
          'answer': (answer as String),
        if (pin != _undefined && pin != null) 'pin': (pin as String),
        if (question != _undefined && question != null)
          'question': (question as String),
        if (user_uid != _undefined && user_uid != null)
          'user_uid': (user_uid as String),
      }));
}

class _CopyWithStubImpl$Input$Wallet_CreateInput<TRes>
    implements CopyWith$Input$Wallet_CreateInput<TRes> {
  _CopyWithStubImpl$Input$Wallet_CreateInput(this._res);

  TRes _res;

  call({
    String? answer,
    String? pin,
    String? question,
    String? user_uid,
  }) =>
      _res;
}

enum Enum$ChainType {
  Cosmos,
  Ethereum,
  Solana,
  $unknown;

  factory Enum$ChainType.fromJson(String value) =>
      fromJson$Enum$ChainType(value);

  String toJson() => toJson$Enum$ChainType(this);
}

String toJson$Enum$ChainType(Enum$ChainType e) {
  switch (e) {
    case Enum$ChainType.Cosmos:
      return r'Cosmos';
    case Enum$ChainType.Ethereum:
      return r'Ethereum';
    case Enum$ChainType.Solana:
      return r'Solana';
    case Enum$ChainType.$unknown:
      return r'$unknown';
  }
}

Enum$ChainType fromJson$Enum$ChainType(String value) {
  switch (value) {
    case r'Cosmos':
      return Enum$ChainType.Cosmos;
    case r'Ethereum':
      return Enum$ChainType.Ethereum;
    case r'Solana':
      return Enum$ChainType.Solana;
    default:
      return Enum$ChainType.$unknown;
  }
}

enum Enum$Country {
  GH,
  KE,
  MW,
  NG,
  RW,
  TZ,
  UG,
  ZA,
  $unknown;

  factory Enum$Country.fromJson(String value) => fromJson$Enum$Country(value);

  String toJson() => toJson$Enum$Country(this);
}

String toJson$Enum$Country(Enum$Country e) {
  switch (e) {
    case Enum$Country.GH:
      return r'GH';
    case Enum$Country.KE:
      return r'KE';
    case Enum$Country.MW:
      return r'MW';
    case Enum$Country.NG:
      return r'NG';
    case Enum$Country.RW:
      return r'RW';
    case Enum$Country.TZ:
      return r'TZ';
    case Enum$Country.UG:
      return r'UG';
    case Enum$Country.ZA:
      return r'ZA';
    case Enum$Country.$unknown:
      return r'$unknown';
  }
}

Enum$Country fromJson$Enum$Country(String value) {
  switch (value) {
    case r'GH':
      return Enum$Country.GH;
    case r'KE':
      return Enum$Country.KE;
    case r'MW':
      return Enum$Country.MW;
    case r'NG':
      return Enum$Country.NG;
    case r'RW':
      return Enum$Country.RW;
    case r'TZ':
      return Enum$Country.TZ;
    case r'UG':
      return Enum$Country.UG;
    case r'ZA':
      return Enum$Country.ZA;
    default:
      return Enum$Country.$unknown;
  }
}

enum Enum$CredentialsStatus {
  FAILED,
  NONE,
  REVIEW,
  VALID,
  $unknown;

  factory Enum$CredentialsStatus.fromJson(String value) =>
      fromJson$Enum$CredentialsStatus(value);

  String toJson() => toJson$Enum$CredentialsStatus(this);
}

String toJson$Enum$CredentialsStatus(Enum$CredentialsStatus e) {
  switch (e) {
    case Enum$CredentialsStatus.FAILED:
      return r'FAILED';
    case Enum$CredentialsStatus.NONE:
      return r'NONE';
    case Enum$CredentialsStatus.REVIEW:
      return r'REVIEW';
    case Enum$CredentialsStatus.VALID:
      return r'VALID';
    case Enum$CredentialsStatus.$unknown:
      return r'$unknown';
  }
}

Enum$CredentialsStatus fromJson$Enum$CredentialsStatus(String value) {
  switch (value) {
    case r'FAILED':
      return Enum$CredentialsStatus.FAILED;
    case r'NONE':
      return Enum$CredentialsStatus.NONE;
    case r'REVIEW':
      return Enum$CredentialsStatus.REVIEW;
    case r'VALID':
      return Enum$CredentialsStatus.VALID;
    default:
      return Enum$CredentialsStatus.$unknown;
  }
}

enum Enum$OrderActions {
  Appeal,
  Cancel,
  FaitReceived,
  FaitSent,
  LockCrypto,
  ReleaseCrypto,
  $unknown;

  factory Enum$OrderActions.fromJson(String value) =>
      fromJson$Enum$OrderActions(value);

  String toJson() => toJson$Enum$OrderActions(this);
}

String toJson$Enum$OrderActions(Enum$OrderActions e) {
  switch (e) {
    case Enum$OrderActions.Appeal:
      return r'Appeal';
    case Enum$OrderActions.Cancel:
      return r'Cancel';
    case Enum$OrderActions.FaitReceived:
      return r'FaitReceived';
    case Enum$OrderActions.FaitSent:
      return r'FaitSent';
    case Enum$OrderActions.LockCrypto:
      return r'LockCrypto';
    case Enum$OrderActions.ReleaseCrypto:
      return r'ReleaseCrypto';
    case Enum$OrderActions.$unknown:
      return r'$unknown';
  }
}

Enum$OrderActions fromJson$Enum$OrderActions(String value) {
  switch (value) {
    case r'Appeal':
      return Enum$OrderActions.Appeal;
    case r'Cancel':
      return Enum$OrderActions.Cancel;
    case r'FaitReceived':
      return Enum$OrderActions.FaitReceived;
    case r'FaitSent':
      return Enum$OrderActions.FaitSent;
    case r'LockCrypto':
      return Enum$OrderActions.LockCrypto;
    case r'ReleaseCrypto':
      return Enum$OrderActions.ReleaseCrypto;
    default:
      return Enum$OrderActions.$unknown;
  }
}

enum Enum$OrderStatus {
  APPEAL,
  CANCEL,
  COMPLETED,
  PENDING,
  $unknown;

  factory Enum$OrderStatus.fromJson(String value) =>
      fromJson$Enum$OrderStatus(value);

  String toJson() => toJson$Enum$OrderStatus(this);
}

String toJson$Enum$OrderStatus(Enum$OrderStatus e) {
  switch (e) {
    case Enum$OrderStatus.APPEAL:
      return r'APPEAL';
    case Enum$OrderStatus.CANCEL:
      return r'CANCEL';
    case Enum$OrderStatus.COMPLETED:
      return r'COMPLETED';
    case Enum$OrderStatus.PENDING:
      return r'PENDING';
    case Enum$OrderStatus.$unknown:
      return r'$unknown';
  }
}

Enum$OrderStatus fromJson$Enum$OrderStatus(String value) {
  switch (value) {
    case r'APPEAL':
      return Enum$OrderStatus.APPEAL;
    case r'CANCEL':
      return Enum$OrderStatus.CANCEL;
    case r'COMPLETED':
      return Enum$OrderStatus.COMPLETED;
    case r'PENDING':
      return Enum$OrderStatus.PENDING;
    default:
      return Enum$OrderStatus.$unknown;
  }
}

enum Enum$OtpPurpose {
  SignUp,
  Verification,
  $unknown;

  factory Enum$OtpPurpose.fromJson(String value) =>
      fromJson$Enum$OtpPurpose(value);

  String toJson() => toJson$Enum$OtpPurpose(this);
}

String toJson$Enum$OtpPurpose(Enum$OtpPurpose e) {
  switch (e) {
    case Enum$OtpPurpose.SignUp:
      return r'SignUp';
    case Enum$OtpPurpose.Verification:
      return r'Verification';
    case Enum$OtpPurpose.$unknown:
      return r'$unknown';
  }
}

Enum$OtpPurpose fromJson$Enum$OtpPurpose(String value) {
  switch (value) {
    case r'SignUp':
      return Enum$OtpPurpose.SignUp;
    case r'Verification':
      return Enum$OtpPurpose.Verification;
    default:
      return Enum$OtpPurpose.$unknown;
  }
}

enum Enum$StaticLinkGroup {
  Docs,
  Learn,
  Social,
  $unknown;

  factory Enum$StaticLinkGroup.fromJson(String value) =>
      fromJson$Enum$StaticLinkGroup(value);

  String toJson() => toJson$Enum$StaticLinkGroup(this);
}

String toJson$Enum$StaticLinkGroup(Enum$StaticLinkGroup e) {
  switch (e) {
    case Enum$StaticLinkGroup.Docs:
      return r'Docs';
    case Enum$StaticLinkGroup.Learn:
      return r'Learn';
    case Enum$StaticLinkGroup.Social:
      return r'Social';
    case Enum$StaticLinkGroup.$unknown:
      return r'$unknown';
  }
}

Enum$StaticLinkGroup fromJson$Enum$StaticLinkGroup(String value) {
  switch (value) {
    case r'Docs':
      return Enum$StaticLinkGroup.Docs;
    case r'Learn':
      return Enum$StaticLinkGroup.Learn;
    case r'Social':
      return Enum$StaticLinkGroup.Social;
    default:
      return Enum$StaticLinkGroup.$unknown;
  }
}

enum Enum$TradeType {
  BUY,
  SELL,
  $unknown;

  factory Enum$TradeType.fromJson(String value) =>
      fromJson$Enum$TradeType(value);

  String toJson() => toJson$Enum$TradeType(this);
}

String toJson$Enum$TradeType(Enum$TradeType e) {
  switch (e) {
    case Enum$TradeType.BUY:
      return r'BUY';
    case Enum$TradeType.SELL:
      return r'SELL';
    case Enum$TradeType.$unknown:
      return r'$unknown';
  }
}

Enum$TradeType fromJson$Enum$TradeType(String value) {
  switch (value) {
    case r'BUY':
      return Enum$TradeType.BUY;
    case r'SELL':
      return Enum$TradeType.SELL;
    default:
      return Enum$TradeType.$unknown;
  }
}

enum Enum$TransactionCategory {
  AIRTIME,
  BETTING_WALLET,
  DATA_BUNDLE,
  ELECTRICITY_BILL,
  EXPRESS_EXCHANGE,
  GIFT_CARD,
  INTERNET_BILL,
  OFF_RAMPING,
  ON_RAMPING,
  P2P_EXCHANGE,
  TV_BILL,
  WATER_BILL,
  $unknown;

  factory Enum$TransactionCategory.fromJson(String value) =>
      fromJson$Enum$TransactionCategory(value);

  String toJson() => toJson$Enum$TransactionCategory(this);
}

String toJson$Enum$TransactionCategory(Enum$TransactionCategory e) {
  switch (e) {
    case Enum$TransactionCategory.AIRTIME:
      return r'AIRTIME';
    case Enum$TransactionCategory.BETTING_WALLET:
      return r'BETTING_WALLET';
    case Enum$TransactionCategory.DATA_BUNDLE:
      return r'DATA_BUNDLE';
    case Enum$TransactionCategory.ELECTRICITY_BILL:
      return r'ELECTRICITY_BILL';
    case Enum$TransactionCategory.EXPRESS_EXCHANGE:
      return r'EXPRESS_EXCHANGE';
    case Enum$TransactionCategory.GIFT_CARD:
      return r'GIFT_CARD';
    case Enum$TransactionCategory.INTERNET_BILL:
      return r'INTERNET_BILL';
    case Enum$TransactionCategory.OFF_RAMPING:
      return r'OFF_RAMPING';
    case Enum$TransactionCategory.ON_RAMPING:
      return r'ON_RAMPING';
    case Enum$TransactionCategory.P2P_EXCHANGE:
      return r'P2P_EXCHANGE';
    case Enum$TransactionCategory.TV_BILL:
      return r'TV_BILL';
    case Enum$TransactionCategory.WATER_BILL:
      return r'WATER_BILL';
    case Enum$TransactionCategory.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionCategory fromJson$Enum$TransactionCategory(String value) {
  switch (value) {
    case r'AIRTIME':
      return Enum$TransactionCategory.AIRTIME;
    case r'BETTING_WALLET':
      return Enum$TransactionCategory.BETTING_WALLET;
    case r'DATA_BUNDLE':
      return Enum$TransactionCategory.DATA_BUNDLE;
    case r'ELECTRICITY_BILL':
      return Enum$TransactionCategory.ELECTRICITY_BILL;
    case r'EXPRESS_EXCHANGE':
      return Enum$TransactionCategory.EXPRESS_EXCHANGE;
    case r'GIFT_CARD':
      return Enum$TransactionCategory.GIFT_CARD;
    case r'INTERNET_BILL':
      return Enum$TransactionCategory.INTERNET_BILL;
    case r'OFF_RAMPING':
      return Enum$TransactionCategory.OFF_RAMPING;
    case r'ON_RAMPING':
      return Enum$TransactionCategory.ON_RAMPING;
    case r'P2P_EXCHANGE':
      return Enum$TransactionCategory.P2P_EXCHANGE;
    case r'TV_BILL':
      return Enum$TransactionCategory.TV_BILL;
    case r'WATER_BILL':
      return Enum$TransactionCategory.WATER_BILL;
    default:
      return Enum$TransactionCategory.$unknown;
  }
}

enum Enum$TransactionStatus {
  COMPLETED,
  PENDING,
  $unknown;

  factory Enum$TransactionStatus.fromJson(String value) =>
      fromJson$Enum$TransactionStatus(value);

  String toJson() => toJson$Enum$TransactionStatus(this);
}

String toJson$Enum$TransactionStatus(Enum$TransactionStatus e) {
  switch (e) {
    case Enum$TransactionStatus.COMPLETED:
      return r'COMPLETED';
    case Enum$TransactionStatus.PENDING:
      return r'PENDING';
    case Enum$TransactionStatus.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionStatus fromJson$Enum$TransactionStatus(String value) {
  switch (value) {
    case r'COMPLETED':
      return Enum$TransactionStatus.COMPLETED;
    case r'PENDING':
      return Enum$TransactionStatus.PENDING;
    default:
      return Enum$TransactionStatus.$unknown;
  }
}

enum Enum$TransactionsMode {
  CREDIT,
  DEBIT,
  $unknown;

  factory Enum$TransactionsMode.fromJson(String value) =>
      fromJson$Enum$TransactionsMode(value);

  String toJson() => toJson$Enum$TransactionsMode(this);
}

String toJson$Enum$TransactionsMode(Enum$TransactionsMode e) {
  switch (e) {
    case Enum$TransactionsMode.CREDIT:
      return r'CREDIT';
    case Enum$TransactionsMode.DEBIT:
      return r'DEBIT';
    case Enum$TransactionsMode.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionsMode fromJson$Enum$TransactionsMode(String value) {
  switch (value) {
    case r'CREDIT':
      return Enum$TransactionsMode.CREDIT;
    case r'DEBIT':
      return Enum$TransactionsMode.DEBIT;
    default:
      return Enum$TransactionsMode.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
