part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState(
      {required EmailAddress emailAddress,
      required Password password,
      // TODO: Reparar esto no se esta usando
      // ShowErrorMessages
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<UserFailure, Unit>>
          userFailureOrUserSuccess}) = _SignInState;

  factory SignInState.initial() => SignInState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        userFailureOrUserSuccess: none(),
      );
}
