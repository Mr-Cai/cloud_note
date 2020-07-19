import 'package:flutter/material.dart';

class EmailAddress {
  final String value;

  const EmailAddress._(this.value) : assert(value != null);

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmail(input));
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is EmailAddress && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'EmailAddress(value: $value)';
}

String validateEmail(String input) {
  const emailRegex = r"""(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return input;
  } else {
    throw InvaildEmailException(error: input);
  }
}

class InvaildEmailException implements Exception {
  final String error;

  InvaildEmailException({@required this.error});
}
