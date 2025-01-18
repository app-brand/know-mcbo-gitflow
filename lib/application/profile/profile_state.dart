part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {required PhoneNumber phone_number,
      required String first_lastname,
      required String first_name,
      required String citizen_id,
      required bool isSubmitting,
      required String userId,
      required Option<Either<UserFailure, Unit>>
          userFailureOrUserSuccess}) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        phone_number: PhoneNumber(''),
        isSubmitting: false,
        first_lastname: '',
        first_name: '',
        citizen_id: '',
        userId: ' ',
        userFailureOrUserSuccess: none(),
      );
}
