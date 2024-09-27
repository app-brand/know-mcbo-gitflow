import 'package:dartz/dartz.dart';
import 'package:know_my_city/domain/core/value_failure.dart';

// Validar correo
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

// Validador de contrasenas
Either<ValueFailure<String>, String> validatePassword(String input) {
  // Check for minimum length
  if (input.length <= 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
  // Check for at least one uppercase letter
  if (!input.contains(new RegExp(r'[A-Z]'))) {
    return left(ValueFailure.missingUppercase(failedValue: input));
  }
  // Check for at least one special keyboard symbol
  if (!input.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return left(ValueFailure.missingSpecialSymbol(failedValue: input));
  }
  return right(input);
}
