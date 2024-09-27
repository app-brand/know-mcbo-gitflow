import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/user/interface_user_facade.dart';
import 'package:know_my_city/domain/user/user_failures.dart';
import 'package:know_my_city/domain/value_objects/email_address.dart';
import 'package:know_my_city/domain/value_objects/password.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final InterfaceUserFacade _interfaceUserFacade;
  SignInBloc(
    this._interfaceUserFacade,
  ) : super(
          SignInState.initial(),
        ) {
    on<SignInEvent>((event, emit) async {
      // TODO: implement event handler
      // Nota especial atencion a este detalle del Handler de eventos
      // Debe ser declarado asincrono si se van a interactuar con eventos asincronos
      await event.map(
        started: (e) {},
        singInEmail: (e) async {
          Either<UserFailure, Unit>? failureOrSuccess;
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          if (isEmailValid && isPasswordValid) {
            // Activando la interzas de comunicacion asincrono
            print('Email and password are valid, attempting sign-in');
            emit(state.copyWith(
              isSubmitting: true,
              userFailureOrUserSuccess: none(),
            ));
            // Intento raw a inicio de sesion
            // Future.delayed(const Duration(seconds: 10));
            failureOrSuccess = await _interfaceUserFacade.signInWithEmail(
              emailAddress: state.emailAddress,
              password: state.password,
            );
            // Emitir nuevo estado
            emit(state.copyWith(
              isSubmitting: false,
              userFailureOrUserSuccess: optionOf(failureOrSuccess),
            ));
          } else {
            print('something is missing');
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
