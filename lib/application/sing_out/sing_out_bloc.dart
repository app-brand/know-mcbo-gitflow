import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sing_out_event.dart';
part 'sing_out_state.dart';
part 'sing_out_bloc.freezed.dart';

@injectable
class SingOutBloc extends Bloc<SingOutEvent, SingOutState> {
  SingOutBloc() : super(_Initial()) {
    on<SingOutEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
