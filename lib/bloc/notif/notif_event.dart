part of 'notif_bloc.dart';

abstract class NotifEvent extends Equatable {
  const NotifEvent();

  @override
  List<Object> get props => [];
}

class NotifAddEvent extends NotifEvent {}

class NotifRemoveEvent extends NotifEvent {}

class NotifZeroEvent extends NotifEvent {}
