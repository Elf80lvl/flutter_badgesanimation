import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'notif_event.dart';
part 'notif_state.dart';

class NotifBloc extends Bloc<NotifEvent, NotifState> {
  NotifBloc() : super(NotifInitial()) {
    on<NotifAddEvent>((event, emit) {
      emit(NotifState(notifCount: state.notifCount + 1));
    });

    on<NotifRemoveEvent>((event, emit) {
      emit(NotifState(notifCount: state.notifCount - 1));
    });

    on<NotifZeroEvent>((event, emit) {
      emit(NotifInitial());
    });
  }
}
