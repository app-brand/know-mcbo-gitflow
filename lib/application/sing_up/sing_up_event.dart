part of 'sing_up_bloc.dart';

@freezed
class SingUpEvent with _$SingUpEvent {
  const factory SingUpEvent.started() = _Started;
  const factory SingUpEvent.emailChanged(String email) = _EmailChanged;
  const factory SingUpEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SingUpEvent.signUpMail() = _SignUpMail;
  const factory SingUpEvent.signUpPhone() = _SignUpPhone;
  const factory SingUpEvent.siguUpFirestore() = _SignUpFirestore;
}
