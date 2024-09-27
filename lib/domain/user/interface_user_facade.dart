import 'package:dartz/dartz.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/password.dart';

abstract interface class InterfaceUserFacade {
  Future<Either<UserFailure, Unit>> signInWithEmail({
    required EmailAddress emailAddress,
    required Password password,
  });
}
