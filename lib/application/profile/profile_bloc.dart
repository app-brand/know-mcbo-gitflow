import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/core/value_failure.dart';
import 'package:know_my_city/application/facade/auth_facade.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@singleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final InterfaceUserFacade _interfaceUserFacade;
  ProfileBloc(
    this._interfaceUserFacade,
  ) : super(
          ProfileState.initial(),
        ) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        started: (e) async {},
        sendOtp: (e) async {
          emit(state.copyWith(
            userFailureOrUserSuccess: none(),
            isSubmitting: true,
          ));
          //
          print('Phone validation event trigered');
          Either<UserFailure, Unit>? phoneOr;
          phoneOr = await _interfaceUserFacade.sendOneTimePassword(
              phone_number: state.phone_number);
          //
          emit(state.copyWith(
              userFailureOrUserSuccess: optionOf(phoneOr),
              isSubmitting: false));
        },
        verifyOtp: (e) async {},
        phoneChanged: (e) async {
          emit(state.copyWith(
            phone_number: PhoneNumber(e.phone_numer),
            userFailureOrUserSuccess: none(),
          ));
        },
        nameChanged: (e) async {
          emit(state.copyWith(
            first_lastname: e.first_name,
            userFailureOrUserSuccess: none(),
          ));
        },
        lastnameChanged: (e) async {
          emit(state.copyWith(
            first_lastname: e.first_lastname,
            userFailureOrUserSuccess: none(),
          ));
        },
        completeRegistration: (e) async {},
      );
    });
  }
}
