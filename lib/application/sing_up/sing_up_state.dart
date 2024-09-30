part of 'sing_up_bloc.dart';

@freezed
class SingUpState with _$SingUpState {
  // variables para controlar el estado del bloc
  const factory SingUpState({
    required EmailAddress emailAddress,
    required Password password,
    //required PhoneNumber phone_number,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isEmailVerified,
    //required bool isPhoneNumberVerified,
    required Option<Either<UserFailure, Unit>> userFailureOrUserSuccess,
  }) = _SingUpState;

  factory SingUpState.initial() => SingUpState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        //phone_number: PhoneNumber(' '),
        showErrorMessages: false,
        isSubmitting: false,
        isEmailVerified: false,
        //isPhoneNumberVerified: false,
        userFailureOrUserSuccess: none(),
      );
}
