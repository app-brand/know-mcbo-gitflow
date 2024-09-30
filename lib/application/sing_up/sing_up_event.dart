part of 'sing_up_bloc.dart';

@freezed
class SingUpEvent with _$SingUpEvent {
  const factory SingUpEvent.started() = _Started;
  const factory SingUpEvent.emailChanged(String email) = _EmailChanged;
  const factory SingUpEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SingUpEvent.signUpMail() = _SignUpMail;
  const factory SingUpEvent.mailVerification() = _MailVerification;
  //const factory SingUpEvent.sendOtp() = _SendOtp;
  //const factory SingUpEvent.verifyOtp() = _SignUpFirestore;
  //const factory SingUpEvent.phoneChanged(String phone_numer) = _PhoneChanged;
  /*const factory SingUpEvent.completeRegistration({
    required String first_name,
    required String first_lastname,
  }) = _CompleteRegistration;
  */
}
