import 'package:dartz/dartz.dart';
import 'package:know_my_city/domain/core/value_failure.dart';
import 'package:know_my_city/domain/core/value_object.dart';
import 'package:know_my_city/domain/core/value_validator.dart';

class OneTimePassword extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;
  factory OneTimePassword(String input) {
    return OneTimePassword._(
      validateOTP(input),
    );
  }
  // Fuck y la vida.
  const OneTimePassword._(this.value);
}
