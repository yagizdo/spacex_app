import 'package:flutter/material.dart';
import 'package:spacex_app/models/launches_model.dart';
import 'package:spacex_app/network/launches_client.dart';
import 'package:spacex_app/repositories/launches_repository_interface.dart';

class LaunchesRepository extends LaunchesRepositoryInterface {
  @override
  Future<List<LaunchesModel>> getAllData(BuildContext context) async {
    // Data List
    List<LaunchesModel> dataResponseList = [];

    // Data Client Instance
    LaunchesClient launchesClient = LaunchesClient();

    // Get Data
    dataResponseList = await launchesClient.getLaunchesData(context);

    // return data list
    return dataResponseList;
  }
}
