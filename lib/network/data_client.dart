import 'package:dio/dio.dart';
import 'package:spacex_app/models/data_model.dart';

class DataClient {
  // Base Url
  final String baseUrl = 'https://api.spacexdata.com';

  // Dio
  Dio dio = Dio();

  // Get data from API
  Future<List<DataModel>> getData() async {
    // Data List
    List<DataModel> dataList = [];

    // Get data
    Response response = await dio.get('$baseUrl/v4/launches/');

    // Parsed list
    var parsedList = response.data;

    // Parsed list to mapped and add to data list
    dataList = parsedList.map<DataModel>((e) => DataModel.fromJson(e)).toList();

    // Return data list
    return dataList;
  }
}
