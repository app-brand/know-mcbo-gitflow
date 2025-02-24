part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required Option<Either<UserFailure, Unit>> userFailureOrUserSuccess,
    required bool isEmailVerified,
    required bool isPhoneVerified,
    // ✅ Nuevos campos
    required String firstName,
    required String lastName,
    required String age,
    required String gender,
    required PhoneNumber phoneNumber,
    required String verificationId,
    required String smsCode,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        userFailureOrUserSuccess: none(),
        isEmailVerified: false,
        isPhoneVerified: false,
        // ✅ Valores para inicializar en cadena logica.
        firstName: '',
        lastName: '',
        age: '',
        gender: 'Masculino', // Valor por defecto
        phoneNumber: PhoneNumber(''),
        verificationId: '',
        smsCode: '',
      );
}
