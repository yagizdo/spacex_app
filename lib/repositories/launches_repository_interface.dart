import 'package:spacex_app/models/launches_model.dart';

abstract class LaunchesRepositoryInterface {
  Future<List<LaunchesModel>> getAllData();
}
