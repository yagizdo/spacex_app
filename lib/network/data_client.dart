import 'package:dio/dio.dart';
import 'package:spacex_app/models/launches_model.dart';

class DataClient {
  // Base Url
  final String baseUrl = 'https://api.spacexdata.com';

  // Dio
  Dio dio = Dio();

  // Get data from API
  Future<List<LaunchesModel>> getData() async {
    // Data List
    List<LaunchesModel> dataList = [];

    // Get data
    Response response = await dio.get('$baseUrl/v4/launches/');

    // Parsed list
    var parsedList = response.data;

    // Parsed list to mapped and add to data list
    dataList = parsedList
        .map<LaunchesModel>((e) => LaunchesModel.fromJson(e))
        .toList();

    // Return data list
    return dataList;
  }
}
