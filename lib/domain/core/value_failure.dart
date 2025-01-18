import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  //
  const factory ValueFailure.missingUppercase({
    required T failedValue,
  }) = MissingUppercase<T>;
  //
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  //
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.missingSpecialSymbol({
    required T failedValue,
  }) = MissingSpecialSymbol<T>;

  const factory ValueFailure.missingNumberPassword({
    required T failedValue,
  }) = MissingNumberPassword<T>;

  const factory ValueFailure.invalidOtp({
    required T failedValue,
  }) = invalidOtp<T>;

  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = invalidPhoneNumber<T>;

  const ValueFailure._();

  /// Returns a human-readable message describing the failure.
  String get message {
    return when(
        invalidOtp: (f) => 'Codigo ingresado es invalido',
        missingUppercase: (f) => 'Falta de un caracter mayuscula',
        invalidEmail: (f) => 'Formato de email invalido',
        shortPassword: (f) => 'Contrasena muy corta',
        missingSpecialSymbol: (f) => 'No contiene un caracter especial',
        missingNumberPassword: (f) => 'No existe un numero en la contrasena',
        invalidPhoneNumber: (f) => 'Formato de numero no correcto');
  }
}
