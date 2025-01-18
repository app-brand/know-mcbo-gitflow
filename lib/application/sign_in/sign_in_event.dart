part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.singInEmail() = _SingInEmail;
  const factory SignInEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInEvent.passwordChanged(String password) = _PasswordChanged;
}
