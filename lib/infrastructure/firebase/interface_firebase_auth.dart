import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/application/core/interface_user_facade.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/password.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';
import 'package:know_my_city/injection.dart';

@LazySingleton(as: InterfaceUserFacade)
class FirebaseUserRepository implements InterfaceUserFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseUserRepository(
      {required FirebaseAuth firebaseAuth,
      required FirebaseFirestore firebaseFirestore})
      : _firebaseAuth = firebaseAuth,
        _firebaseFirestore = firebaseFirestore;

  @override
  Future<Either<UserFailure, Unit>> signInWithEmail({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    print('SignInWithMail - Infraestructura');
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: userMail, password: userPassword);
      print('SignInWithMail - right');
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' ||
          e.code == 'user-not-found' ||
          e.code == 'invalid-credential') {
        return left(const UserFailure.invalidEmailAndPasswordCombination(
            failedValue: ''));
      } else {
        return left(const UserFailure.serverError(failedValue: ''));
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> verifyIsMailisActive() async {
    //TODO: Agregar correr en un bucle - for o u otra salida
    try {
      User? user = _firebaseAuth.currentUser;
      await user!.reload();
      if (_firebaseAuth.currentUser!.emailVerified) {
        print('IsValidatedMail - right');
        return right(unit);
      } else {
        print('IsValidatedMail - wrong');
        _firebaseAuth.currentUser!.delete();
        return left(const UserFailure.emailNotVerified(failedValue: ''));
      }
    } on FirebaseAuthException {
      return left(const UserFailure.serverError(failedValue: ''));
    }
  }

  @override
  Future<Either<UserFailure, Unit>> signUpWithMail(
      {required EmailAddress emailAddress, required Password password}) async {
    print('regisrterUserOne - Infraestructura');
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: userMail, password: userPassword);
      await _firebaseAuth.currentUser!.sendEmailVerification();
      print('RegisterInWith Verification email it is sended to the user');
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print('RegisterInWith Verification email error ' + e.code);
      if (e.code == 'email-already-in-use') {
        return left(const UserFailure.invalidEmailAndPasswordCombination(
            failedValue: ''));
      } else {
        return left(const UserFailure.serverError(failedValue: ''));
      }
    }
  }
  @override
  Future<Either<UserFailure, Unit>> phoneIsValid(
      {required PhoneNumber phone_number}) async {
    print('SMS send tringger - Infraestructura');
    final Completer<Either<UserFailure, Unit>> completer = Completer();
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phone_number.getOrCrash(),
        timeout: Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          print('automatic verification - does not exist');
          return completer.complete(right(unit));
        },
        verificationFailed: (FirebaseAuthException e) {
          print('verification - Falla codigo + ' + e.code);
          print('verification - Falla  message+ ' + e.message.toString());
          return completer
              .complete(left(UserFailure.serverError(failedValue: '')));
        },
        codeSent: (String userId, int? resendToken) {
          print('code - sent');
          print('verificaciontionId: ' + userId);
          sl<SignUpBloc>().add(SignUpEvent.verificationChanged(userId));
          return completer.complete(right(unit));
        },
        codeAutoRetrievalTimeout: (String userId) {
          print("codeAutoRetrievalTimeout" + userId);
          print("False by default" + userId);
          return completer
              .complete(left(UserFailure.serverError(failedValue: '')));
        },
      );
      print('Que pasa aqui - aqui deberia entrar si no retorna nada');
      print(unit.toString());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e.toString() + 'Error de Firebase - Out Control');
      return left(UserFailure.serverError(failedValue: ''));
    }
  }

  @override
  Future<Either<UserFailure, Unit>> OtpIsValid(
      {required String verification_id, required String otp}) async {
    final Completer<Either<UserFailure, Unit>> completer = Completer();
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verification_id,
        smsCode: otp,
      );
      print('validacion exitosa ' + credential.toString());
    } catch (e) {
      print(e.toString() + ' Entendiendo el error');
    }
    // Investigar
    return right(unit);
  }
}
