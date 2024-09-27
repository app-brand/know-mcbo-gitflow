import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
// Esto indica que despues de correr la clase, en la terminal
// dart run build runner // Se genera todo el codigo boiler-plate para
// ser un data transfer object
part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
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

  factory ValueFailure.customFailure({
    required String message,
    required T failedValue,
  }) = CustomFailure<T>;
  //
  const ValueFailure._();

  /// Returns a human-readable message describing the failure.
  String get message {
    return when(
        missingUppercase: (f) => 'Missing uppercase character',
        invalidEmail: (f) => 'Invalid email format',
        shortPassword: (f) => 'Password is too short',
        missingSpecialSymbol: (f) => 'Missing special symbol',
        customFailure: (message, failedValue) => message,
        missingNumberPassword: (failedValue) =>
            'Missing a number in the password');
  }
}
