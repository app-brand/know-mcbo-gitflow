part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.sendOtp() = _SendOtp;
  const factory ProfileEvent.verifyOtp() = _VerifyOtp;
  const factory ProfileEvent.phoneChanged(String phone_numer) = _PhoneChanged;
  const factory ProfileEvent.nameChanged(String first_name) = _NameChanged;
  const factory ProfileEvent.lastnameChanged(String first_lastname) =
      _LastnameChanged;

  const factory ProfileEvent.completeRegistration({
    required String first_name,
    required String first_lastname,
  }) = _CompleteRegistration;
}
