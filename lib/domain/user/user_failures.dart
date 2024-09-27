import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
//import 'package:vivelo_en_mcbo/domain/core/value_object.dart';
part 'user_failures.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.cancelledByUser() = CancelledByUser;
  const factory UserFailure.serverError() =
      ServerError; // implementar la logica para agarrar el error.
  const factory UserFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory UserFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
