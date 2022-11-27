import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_app/models/launches_model.dart';

import '../bloc/launches_bloc.dart';

class LaunchesClient {
  // Base Url
  final String baseUrl = 'https://api.spacexdata.com';

  // Dio
  Dio dio = Dio();

  // Get data from API
  Future<List<LaunchesModel>> getLaunchesData(BuildContext context) async {
    // Data List
    List<LaunchesModel> dataList = [];

    try {
      // Get data
      Response response = await dio.get('$baseUrl/v4/launches/');

      // Parsed list
      var parsedList = response.data;

      // Parsed list to mapped and add to data list
      dataList = parsedList
          .map<LaunchesModel>((e) => LaunchesModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      BlocProvider.of<LaunchesBloc>(context).add(ErrorEvent(
          statusCode: (e.response?.statusCode ?? 404), message: e.message));
    } catch (e) {
      print('Error detail : $e');
      BlocProvider.of<LaunchesBloc>(context)
          .add(ErrorEvent(statusCode: 404, message: e.toString()));
      throw e;
    }

    // Return data list
    return dataList;
  }
}
