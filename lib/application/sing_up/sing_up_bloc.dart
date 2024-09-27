import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sing_up_event.dart';
part 'sing_up_state.dart';
part 'sing_up_bloc.freezed.dart';

@injectable
class SingUpBloc extends Bloc<SingUpEvent, SingUpState> {
  SingUpBloc() : super(_Initial()) {
    on<SingUpEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
