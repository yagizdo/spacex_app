import 'package:spacex_app/models/data_model.dart';

abstract class DataRepositoryInterface {
  Future<List<DataModel>> getAllData();
}
