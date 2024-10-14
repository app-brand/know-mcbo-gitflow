import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_failures.freezed.dart';

@freezed
abstract class UserFailure<T> with _$UserFailure<T> {
  //
  const factory UserFailure.cancelledByUser({
    required T failedValue,
  }) = cancelledByUser<T>;
  //
  const factory UserFailure.invalidEmailAndPasswordCombination({
    required T failedValue,
  }) = invalidEmailAndPasswordCombination<T>;
  //
  const factory UserFailure.emailNotVerified({
    required T failedValue,
  }) = emailNotVerified<T>;

  const factory UserFailure.otpExpired({
    required T failedValue,
  }) = otpExpired<T>;

  const factory UserFailure.emailLinkExpired({
    required T failedValue,
  }) = emailLinkExpired<T>;

  const factory UserFailure.serverError({
    required T failedValue,
  }) = serverError<T>;

  const UserFailure._();

  String get message {
    return when(
      cancelledByUser: (f) => 'Cancelado por el usuario',
      invalidEmailAndPasswordCombination: (f) =>
          'Combinacion incorrecta de email y password',
      emailNotVerified: (f) => 'Falla en la verificacion del correo',
      otpExpired: (f) =>
          'Codigo SMS expiro, verifique el numero y intente de nuevo',
      serverError: (f) => 'Error 500, problemas en el servidor',
      emailLinkExpired: (f) => 'El link enviado expiro, envio uno nuevamente',
    );
  }
}
