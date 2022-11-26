part of 'launches_bloc.dart';

@immutable
abstract class LaunchesState {}

class LaunchesInitial extends LaunchesState {}

class GetLaunchesState extends LaunchesState {
  final List<DataModel> launches;

  GetLaunchesState({required this.launches});
}
