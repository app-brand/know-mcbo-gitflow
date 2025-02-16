part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
   // ✅ Viejos eventos
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.emailChanged(String email) = _EmailChanged;
  const factory SignUpEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignUpEvent.signUpMail() = _SignUpMail;
  const factory SignUpEvent.mailVerification() = _MailVerification;
  const factory SignUpEvent.sendOtp() = _SendOtp;
  const factory SignUpEvent.verifyOtp() = _SignUpFirestore;
  const factory SignUpEvent.phoneChanged(PhoneNumber phone_numer) = _PhoneChanged;
  // ✅ Nuevos eventos
  const factory SignUpEvent.firstNameChanged(String firstName) = _FirstNameChanged;
  const factory SignUpEvent.lastNameChanged(String lastName) = _LastNameChanged;
  const factory SignUpEvent.ageChanged(String age) = _AgeChanged;
  const factory SignUpEvent.genderChanged(String gender) = _GenderChanged;
}
