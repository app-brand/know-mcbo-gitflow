import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/application/facade/interface_user_facade.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/one_time_password.dart';
import 'package:know_my_city/domain/value_objects/password.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';

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
  Future<Either<UserFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    print('RegisterInWithMail - Infraestructura');
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: userMail, password: userPassword);
      await _firebaseAuth.currentUser!.sendEmailVerification();
      print('RegisterInWith Verification email it is send - right');
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'email-already-in-use') {
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
      //await Future.delayed(Duration(seconds: 59));
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
  Future<Either<UserFailure, Unit>> phoneNumberVerification({required String verification_id, required OneTimePassword otp}) {
    // TODO: implement phoneNumberVerification
    throw UnimplementedError();
  }
  
  @override
  Future<Either<UserFailure, Unit>> sendOneTimePassword({required PhoneNumber phone_number}) {
    // TODO: implement sendOneTimePassword
    throw UnimplementedError();
  }
  
  @override
  Future<bool> verifyRecaptchaAvailable() {
    // TODO: implement verifyRecaptchaAvailable
    throw UnimplementedError();
  }// O ajusta la lógica según tu entorno.
}
