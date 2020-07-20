import 'package:dartz/dartz.dart';
import 'package:note/domain/core/failures.dart';
import 'package:note/domain/core/value_objects.dart';
import 'package:note/domain/core/value_validators.dart';


class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmail(input));
  }

  final Either<ValueFailure<String>, String> value;
}

class Password extends ValueObject<String> {
  const Password._(this.value);

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePWD(input));
  }

  final Either<ValueFailure<String>, String> value;
}
