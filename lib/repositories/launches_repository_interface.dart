import 'package:spacex_app/models/data_model.dart';

abstract class LaunchesRepositoryInterface {
  Future<List<DataModel>> getAllData();
}
