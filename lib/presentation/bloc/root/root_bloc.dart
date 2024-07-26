import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutternaut_frontend_webapp/enum/navbar_type.dart';

part 'root_event.dart';
part 'root_state.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  RootBloc() : super(const RootState()) {
    on<OnNavigationBarItemChanged>(
      (event, emit) => _handleOnNavigationBarItemChangedEvent(event, emit),
    );
  }

  Future<void> _handleOnNavigationBarItemChangedEvent(
    OnNavigationBarItemChanged event,
    Emitter<RootState> emit,
  ) async {
    emit(state.copyWith(selectedItem: event.item));
  }
}
