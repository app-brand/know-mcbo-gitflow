import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/user/interface_user_facade.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/password.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';
//import 'package:know_my_city/domain/value_objects/phone_number.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final InterfaceUserFacade _interfaceUserFacade;
  SignUpBloc(
    this._interfaceUserFacade,
  ) : super(
          SignUpState.initial(),
        ) {
    on<SignUpEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          // Logica para validar.
        },
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
            failureOrSuccess.fold(
                (failure) => emit(state.copyWith(
                      isSubmitting: false,
                      userFailureOrUserSuccess: some(left(failure)),
                    )),
                (_) => emit(state.copyWith(
                      isSubmitting: false,
                      userFailureOrUserSuccess: none(),
                    )));
          }
        },
        mailVerification: (e) async {},
        sendOtp: (e) async {},
        verifyOtp: (e) async {},
        phoneChanged: (e) async {},
        completeRegistration: (e) async {},
      );
    });
  }
}
