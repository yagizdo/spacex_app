import 'package:spacex_app/models/data_model.dart';
import 'package:spacex_app/network/data_client.dart';
import 'package:spacex_app/repositories/data_repository_interface.dart';

class DataRepository extends DataRepositoryInterface {
  @override
  Future<List<DataModel>> getAllData() async {
    // Data List
    List<DataModel> dataResponseList = [];

    // Data Client Instance
    DataClient _client = DataClient();

    // Get Data
    dataResponseList = await _client.getData();

    // return data list
    return dataResponseList;
  }
}
