class AppPlainException implements Exception {
  final String message;
  AppPlainException(this.message);

  @override
  String toString() => "$message";
}

require(dynamic payload, String msg) {
  if (payload == null) {
    throw AppPlainException(msg);
  }

  if (payload is bool) {
    if (payload == false) throw AppPlainException(msg);
    return;
  }

  if (payload is String) {
    if (payload.isEmpty) throw AppPlainException(msg);
    return;
  }

  if (payload is int) {
    if (payload.isNaN) throw AppPlainException(msg);
    if (payload.isInfinite) throw AppPlainException(msg);
    return;
  }
}
