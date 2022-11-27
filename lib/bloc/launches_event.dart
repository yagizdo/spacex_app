part of 'launches_bloc.dart';

@immutable
abstract class LaunchesEvent {}

class LaunchesFetch extends LaunchesEvent {
  final BuildContext context;

  LaunchesFetch({required this.context});
}

class ErrorEvent extends LaunchesEvent {
  final int statusCode;
  final String message;

  ErrorEvent({required this.message, required this.statusCode});
}
