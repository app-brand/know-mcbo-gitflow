import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_event.dart';
part 'storage_state.dart';
part 'storage_bloc.freezed.dart';

class StorageBloc extends Bloc<StorageEvent, StorageState> {
  StorageBloc() : super(_Initial()) {
    on<StorageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
