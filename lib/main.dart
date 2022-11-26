import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_app/views/home_view.dart';

import 'bloc/launches_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => LaunchesBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (context, child) => const MaterialApp(
        title: 'SpaceX App',
        home: HomeView(),
      ),
    );
  }
}
