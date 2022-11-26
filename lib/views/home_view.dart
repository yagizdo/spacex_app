import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_app/bloc/launches_bloc.dart';
import 'package:spacex_app/utils/app_textstyles.dart';
import 'package:spacex_app/widgets/main_widgets/main_layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<LaunchesBloc>(context).add(LaunchesFetch());
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      content: Center(
        child: BlocBuilder<LaunchesBloc, LaunchesState>(
          builder: (context, state) {
            if (state is GetLaunchesState) {
              return ListView.builder(
                itemCount: state.launches.length,
                itemBuilder: (context, index) {
                  var launch = state.launches[index];

                  return Text(
                    launch.name ?? 'No name data',
                    style: AppTextStyle.homeText(),
                  );
                },
              );
            }
            return Text(
              'No Launches Data',
              style: AppTextStyle.homeText(),
            );
          },
        ),
      ),
    );
  }
}
