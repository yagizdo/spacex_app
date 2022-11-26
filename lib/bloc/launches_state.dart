part of 'launches_bloc.dart';

@immutable
abstract class LaunchesState {}

class LaunchesInitial extends LaunchesState {}

class GetLaunchesState extends LaunchesState {
  final List<DataModel> launches;

  GetLaunchesState({required this.launches});
}

class LoadingState extends LaunchesState {
  final bool isLoading;

  LoadingState(this.isLoading);
}
