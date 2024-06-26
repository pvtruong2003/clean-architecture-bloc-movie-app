import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainInitial(tabIndex: 0)) {
    on<MainEvent>((event, emit) {
      if (event is TabChangeEvent) {
        emit(MainInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
