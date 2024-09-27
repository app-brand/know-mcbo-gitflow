import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/user/interface_user_facade.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/password.dart';

@LazySingleton(as: InterfaceUserFacade)
class FirebaseAuthRepository implements InterfaceUserFacade {
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthRepository(
    this._firebaseAuth,
  );
  @override
  Future<Either<UserFailure, Unit>> signInWithEmail(
      {required EmailAddress emailAddress, required Password password}) async {
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    print(userMail.toString() + ' ' + userPassword.toString());
    try {
      print('Inicio de session + FirebaseAuthFacade');
      await _firebaseAuth.signInWithEmailAndPassword(
          email: userMail, password: userPassword);
      print('Resultado Exitoso + FirebaseAuthFace ' + right(unit).toString());
      print(right(unit.toString()));
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print('ErrorCode + FirebaseAuthException ' + e.code);
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const UserFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }
}
