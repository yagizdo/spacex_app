import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spacex_app/models/data_model.dart';
import 'package:spacex_app/repositories/launches_repository.dart';

part 'launches_event.dart';
part 'launches_state.dart';

class LaunchesBloc extends Bloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc() : super(LaunchesInitial()) {
    on<LaunchesEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<LaunchesFetch>((event, emit) async {
      LaunchesRepository _repository = LaunchesRepository();
      emit(LoadingState(true));
      List<DataModel> launches = await _repository.getAllData();
      emit(LoadingState(false));
      emit(GetLaunchesState(launches: launches));
    });
  }
}
