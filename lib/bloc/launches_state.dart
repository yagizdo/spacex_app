part of 'launches_bloc.dart';

@immutable
abstract class LaunchesState {}

class LaunchesInitial extends LaunchesState {}

class GetLaunchesState extends LaunchesState {
  final List<LaunchesModel> launches;

  GetLaunchesState({required this.launches});
}

class LoadingState extends LaunchesState {
  final bool isLoading;

  LoadingState(this.isLoading);
}

class ErrorState extends LaunchesState {
  final String message;
  final int statusCode;

  ErrorState(this.message, this.statusCode);
}
