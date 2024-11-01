import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/application/facade/auth_facade.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/password.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@singleton
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final InterfaceUserFacade _interfaceUserFacade;

  SignInBloc(
    this._interfaceUserFacade,
  ) : super(
          SignInState.initial(),
        ) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        singInEmail: (e) async {
          Either<UserFailure, Unit>? failureOrSuccess;
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(
              isSubmitting: true,
              userFailureOrUserSuccess: none(),
            ));
            failureOrSuccess = await _interfaceUserFacade.signInWithEmail(
              emailAddress: state.emailAddress,
              password: state.password,
            );
            // TODO: Corregir la logica anterior y cambiar el nombre de
            // la variable showErrorEmessage para que exprese autenticacion
            emit(state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              userFailureOrUserSuccess: optionOf(failureOrSuccess),
            ));
          }
        },
        emailChanged: (e) {
          emit(state.copyWith(
            emailAddress: EmailAddress(e.email),
            userFailureOrUserSuccess: none(),
          ));
        },
        passwordChanged: (e) {
          emit(state.copyWith(
            password: Password(e.password),
            userFailureOrUserSuccess: none(),
          ));
        },
      );
    });
  }
}
