part of 'sing_up_bloc.dart';

@freezed
class SingUpState with _$SingUpState {
  // variables para controlar el estado del bloc
  const factory SingUpState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<UserFailure, Unit>> userFailureOrUserSuccess,
  }) = _SingUpState;

  factory SingUpState.initial() => SingUpState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        userFailureOrUserSuccess: none(),
      );
}
