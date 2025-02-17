import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/application/facade/interface_user_facade.dart';
import 'package:know_my_city/domain/core/value_failure.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/password.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@singleton
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final InterfaceUserFacade _interfaceUserFacade;

  SignUpBloc(
    this._interfaceUserFacade,
  ) : super(
          SignUpState.initial(),
        ) {
    on<SignUpEvent>((event, emit) async {
      await event.map(
        started: (e) async {},
        emailChanged: (e) async {
          emit(state.copyWith(
            emailAddress: EmailAddress(e.email),
            userFailureOrUserSuccess: none(),
          ));
        },
        passwordChanged: (e) async {
          emit(state.copyWith(
            password: Password(e.password),
            userFailureOrUserSuccess: none(),
          ));
        },
        signUpMail: (e) async {
          Either<UserFailure, Unit>? failureOrSuccess;
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(
              isSubmitting: true,
              userFailureOrUserSuccess: none(),
            ));
            failureOrSuccess =
                await _interfaceUserFacade.registerWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
            emit(state.copyWith(
              isSubmitting: false,
              isEmailVerified: true,
              userFailureOrUserSuccess: optionOf(failureOrSuccess),
            ));
          }
        },
        mailVerification: (e) async {
          Either<UserFailure, Unit>? failureOrSuccess;
          emit(state.copyWith(
            isSubmitting: true,
            userFailureOrUserSuccess: none(),
          ));
          failureOrSuccess = await _interfaceUserFacade.verifyIsMailisActive();
          emit(state.copyWith(
            isSubmitting: false,
            isEmailVerified: true,
            userFailureOrUserSuccess: optionOf(failureOrSuccess),
          ));
        },
        sendOtp: (e) async {
          Either<UserFailure, Unit>? failureOrSuccess;
          final isPhoneValid = state.phoneNumber.isValid();

          if (isPhoneValid) {
            emit(state.copyWith(
              isSubmitting: true,
              userFailureOrUserSuccess: none(),
            ));
            failureOrSuccess = await _interfaceUserFacade.sendOneTimePassword(
                phone_number: state.phoneNumber);
            emit(state.copyWith(
              isSubmitting: false,
              userFailureOrUserSuccess: optionOf(failureOrSuccess),
            ));
          }
        },
        verifyOtp: (_SignUpFirestore value) {},
        phoneChanged: (e) async {
          emit(state.copyWith(
            phoneNumber: PhoneNumber(e.phone_numer),
            userFailureOrUserSuccess: none(),
          ));
        },
        firstNameChanged: (e) async {
          emit(state.copyWith(
            firstName: e.firstName,
            userFailureOrUserSuccess: none(),
          ));
        },
        lastNameChanged: (e) async {
          emit(state.copyWith(
            lastName: e.lastName,
            userFailureOrUserSuccess: none(),
          ));
        },
        ageChanged: (e) async {
          emit(state.copyWith(
            age: e.age,
            userFailureOrUserSuccess: none(),
          ));
        },
        genderChanged: (e) async {
          emit(state.copyWith(
            gender: e.gender,
            userFailureOrUserSuccess: none(),
          ));
        },
      );
    });
  }
}
