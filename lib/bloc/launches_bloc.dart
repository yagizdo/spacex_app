import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:spacex_app/models/launches_model.dart';
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
      try {
        List<LaunchesModel> launches = await _repository.getAllData();
        emit(LoadingState(false));
        emit(GetLaunchesState(launches: launches));
      } on DioError catch (e) {
        emit(LoadingState(false));

        emit(ErrorState(e.message, e.response?.statusCode ?? 404));
      } catch (e) {
        emit(LoadingState(false));

        emit(ErrorState(e.toString(), 404));
      }
    });

    on<ErrorEvent>((event, emit) async {
      emit(ErrorState(event.message, event.statusCode));
    });
  }
}
