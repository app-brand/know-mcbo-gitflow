part of 'sing_out_bloc.dart';

@freezed
class SingOutEvent with _$SingOutEvent {
  const factory SingOutEvent.started() = _Started;
}