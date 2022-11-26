import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:spacex_app/bloc/launches_bloc.dart';
import 'package:spacex_app/widgets/main_widgets/main_layout.dart';

import '../utils/app_textstyles.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final RefreshController _refreshController;

  void _onRefresh() async {
    BlocProvider.of<LaunchesBloc>(context).add(LaunchesFetch());
    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<LaunchesBloc>(context).add(LaunchesFetch());
    _refreshController = RefreshController(initialRefresh: false);
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      content: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) {
          return [
            SliverAppBar(
              title: Text(
                'SpaceX Launches',
                style: AppTextStyle.homeAppbarTitle(),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              expandedHeight: 200.w,
              pinned: true,
            ),
          ];
        },
        body: _buildLaunchesList(),
      ),
    );
  }

  Widget _buildLaunchesList() {
    return Center(
      child: BlocBuilder<LaunchesBloc, LaunchesState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 5.w,
              ),
            );
          }
          if (state is GetLaunchesState) {
            return SmartRefresher(
              enablePullDown: true,
              enablePullUp: false,
              header: const WaterDropHeader(),
              controller: _refreshController,
              onRefresh: _onRefresh,
              child: ListView.builder(
                itemCount: state.launches.length,
                itemBuilder: (context, index) {
                  var launch = state.launches[index];

                  return Text(
                    launch.name ?? 'No name data',
                    style: AppTextStyle.homeText(),
                  );
                },
              ),
            );
          }
          return Text(
            'No Launches Data',
            style: AppTextStyle.homeText(),
          );
        },
      ),
    );
  }
}
