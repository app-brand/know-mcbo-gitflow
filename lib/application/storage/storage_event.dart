part of 'storage_bloc.dart';

@freezed
class StorageEvent with _$StorageEvent {
  const factory StorageEvent.started() = _Started;
}