part of 'notif_bloc.dart';

class NotifState {
  final int notifCount;
  const NotifState({required this.notifCount});
}

class NotifInitial extends NotifState {
  NotifInitial() : super(notifCount: 0);
}
