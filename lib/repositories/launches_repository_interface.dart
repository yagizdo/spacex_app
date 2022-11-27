import 'package:flutter/material.dart';
import 'package:spacex_app/models/launches_model.dart';

abstract class LaunchesRepositoryInterface {
  Future<List<LaunchesModel>> getAllData(BuildContext context);
}
