import 'package:dartz/dartz.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/one_time_password.dart';
//import 'package:know_my_city/domain/value_objects/one_time_password.dart';
import 'package:know_my_city/domain/value_objects/password.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';
//import 'package:know_my_city/domain/value_objects/phone_number.dart';

abstract interface class InterfaceUserFacade {
  // Inicio de sesion
  Future<Either<UserFailure, Unit>> signInWithEmail({
    required EmailAddress emailAddress,
    required Password password,
  });
  // Registro de correo y contrasena
  Future<Either<UserFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  // Verificador de correo electronico
  Future<Either<UserFailure, Unit>> verifyIsMailisActive();

  // Envia el otp al usuario - validar.
  Future<Either<UserFailure, Unit>> sendOneTimePassword(
      {required PhoneNumber phone_number});

  // Verifica el OTP
  Future<Either<UserFailure, Unit>> phoneNumberVerification({
    required String verification_id,
    required OneTimePassword otp,
  });

  // Pantalla de recapchat
  Future<bool> verifyRecaptchaAvailable();
}
