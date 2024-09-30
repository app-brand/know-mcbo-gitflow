import 'dart:async';
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
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;
  String? _verificationId;

  FirebaseUserRepository(
    this._firebaseAuth,
    this._firebaseFirestore,
  );

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
      if (e.code == 'wrong-password' ||
          e.code == 'user-not-found' ||
          e.code == 'invalid-credential') {
        return left(const UserFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    print('inicio registro');
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: userMail, password: userPassword);
      await _firebaseAuth.currentUser!.sendEmailVerification();
      return right(unit);
      print('todo-ok');
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'email-already-in-use') {
        return left(const UserFailure.emailAlreadyInUse());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> verifyIsMailisActive() async {
    try {
      User? user = _firebaseAuth.currentUser;
      await user!.reload();
      if (_firebaseAuth.currentUser!.emailVerified) {
        return right(unit);
      } else {
        return left(UserFailure.emailNotVerified());
      }
    } on FirebaseAuthException {
      return left(UserFailure.serverError());
    }
  }
  /*
  @override
  Future<Either<UserFailure, Unit>> sendOneTimePassword(
      {required PhoneNumber phone_number}) async {
    final Completer<Either<UserFailure, Unit>> completer = Completer();
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phone_number.getOrCrash(),
        timeout: Duration(seconds: 30),
        verificationCompleted: (PhoneAuthCredential credential) async {
          print('verification - phone number');
          await _firebaseAuth.currentUser!.linkWithCredential(credential);
          return completer.complete(right(unit));
        },
        verificationFailed: (FirebaseAuthException e) {
          print('verification - Falla');
          return completer.complete(left(UserFailure.serverError()));
        },
        codeSent: (String userId, int? resendToken) {
          print('code - sent');
          _verificationId = userId;
          return completer.complete(right(unit));
        },
        codeAutoRetrievalTimeout: (String userId) {
          _verificationId = userId;
          return completer.complete(right(unit));
        },
      );
      // Esto debe ser corregido programacion defensiva
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e.toString() + 'Error de Firebase - Out Control');
      return left(UserFailure.serverError());
    }
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

  @override
  Future<Either<UserFailure, Unit>> completeUserRegistration(
      {required String uuid,
      required String first_name,
      required String first_lastname,
      required PhoneNumber phone_number,
      required EmailAddress email_address}) async {
    try {
      final userDoc = _firebaseFirestore.collection('users').doc(uuid);
      final userProfile = {
        'firstName': first_name,
        'lastName': first_lastname,
        'phoneNumber': phone_number.getOrCrash(),
        'email': email_address.getOrCrash(),
        'createdAt': FieldValue.serverTimestamp(),
      };
      await userDoc.set(userProfile);
      return right(unit);
    } on FirebaseException catch (e) {
      print(e.toString());
      return left(UserFailure.serverError());
    } catch (e) {
      print(e.toString());
      return left(UserFailure.serverError());
    }
  }
  */
}
