import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/user/interface_user_facade.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/one_time_password.dart';
import 'package:know_my_city/domain/value_objects/password.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';

@LazySingleton(as: InterfaceUserFacade)
class FirebaseUserRepository implements InterfaceUserFacade {
  // Servicios de terceros a utilizar
  // Infraestructura
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;
  // Este campo se usa para verificar el OTP
  String? _verificationId;
  // Constructor de la capa de infraestructura
  FirebaseUserRepository(
    this._firebaseAuth,
    this._firebaseFirestore,
  );
  // Funcion para validar el correo electronico, en funcion
  // de un OTP que expira a cierto tiempo antes de poder proceder a otra pantalla.
  // Inicio de sesion con usuario y contrasena.
  @override
  Future<Either<UserFailure, Unit>> signInWithEmail({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: userMail, password: userPassword);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e.toString() + ' Error de firebase_auth');
      if (e.code == 'wrong-password' ||
          e.code == 'user-not-found' ||
          e.code == 'invalid-credential') {
        return left(const UserFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

// #1 - creando el registro  y enviando el link
  @override
  Future<Either<UserFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    print('Entro al metodo en infra - sing-up');
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: userMail, password: userPassword);
      await _firebaseAuth.currentUser!.sendEmailVerification();
      return right(unit);
    } catch (e) {
      print(e.toString() + 'Creando usuario - Error de firebase_auth');
      if (e.toString() == 'email-already-in-use') {
        return left(const UserFailure.emailAlreadyInUse());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  // # 2 - Enviando correo de verification
  @override
  Future<Either<UserFailure, Unit>> sendVerificationEmail() async {
    try {
      User? user = _firebaseAuth.currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
        return right(unit);
      } else {
        return left(UserFailure.emailAlreadyInUse());
      }
    } on FirebaseAuthException catch (e) {
      print(e.toString() +
          'Enviando correo de verificacion - Error de firebase_auth');
      return left(UserFailure.serverError());
    }
  }

  // #3 - Verificando correo.
  @override
  Future<Either<UserFailure, Unit>> emailIsVerificated() async {
    try {
      User? user = _firebaseAuth.currentUser;
      await Future.delayed(Duration(seconds: 30), () async {
        await user!.reload();
      });

      if (_firebaseAuth.currentUser!.emailVerified) {
        return right(unit);
      } else {
        return left(UserFailure.emailNotVerified());
      }
      // Como capturar cualquier error y en esta fase, devolverlo
      // Como alert-dialog.
    } on FirebaseAuthException catch (e) {
      print(e.toString() + 'Verificando corre - Error de verificacion');
      return left(UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> sendOneTimePassword(
      {required PhoneNumber phone_number}) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phone_number.getOrCrash(),
        timeout: Duration(seconds: 30),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Esta funcion se llama usualmente en telefonos android
          print('verification - phone number');
          await _firebaseAuth.currentUser!.linkWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          print('verification - Falla');
          throw UserFailure.serverError();
        },
        codeSent: (String userId, int? resendToken) {
          print('code - sent');
          _verificationId = userId;
        },
        codeAutoRetrievalTimeout: (String userId) {
          _verificationId = userId;
          print('cambio de verification_id +' + _verificationId!);
        },
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e.toString() +
          'Enviando correo de verificacion - Error de firebase_auth');
      return left(UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> completeUserRegistration(
      {required String uuid,
      required String first_name,
      required String first_lastname,
      required PhoneNumber phone_number,
      required EmailAddress email_address}) {
    // TODO: implement completeUserRegistration
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, Unit>> phoneNumberVerification({
    required String verification_id,
    required OneTimePassword otp,
  }) async {
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verification_id,
        smsCode: otp.getOrCrash(),
      );
      await _firebaseAuth.currentUser!.linkWithCredential(credential);
      return right(unit);
    } catch (e) {
      print(e.toString() + ' Entendiendo el error');
      return left(UserFailure.otpExpired());
    }
  }
}
