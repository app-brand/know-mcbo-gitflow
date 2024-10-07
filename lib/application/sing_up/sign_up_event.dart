part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.emailChanged(String email) = _EmailChanged;
  const factory SignUpEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignUpEvent.signUpMail() = _SignUpMail;
  const factory SignUpEvent.mailVerification() = _MailVerification;
  const factory SignUpEvent.sendOtp() = _SendOtp;
  const factory SignUpEvent.verifyOtp() = _SignUpFirestore;
  const factory SignUpEvent.phoneChanged(String phone_numer) = _PhoneChanged;
  const factory SignUpEvent.completeRegistration({
    required String first_name,
    required String first_lastname,
  }) = _CompleteRegistration;
}
