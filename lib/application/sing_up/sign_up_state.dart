part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailAddress emailAddress,
    required Password password,
    required PhoneNumber phone_number,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isEmailVerified,
    required bool isPhoneNumberVerified,
    required Option<Either<UserFailure, Unit>> userFailureOrUserSuccess,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        phone_number: PhoneNumber(' '),
        showErrorMessages: false,
        isSubmitting: false,
        isEmailVerified: false,
        isPhoneNumberVerified: false,
        userFailureOrUserSuccess: none(),
      );
}
