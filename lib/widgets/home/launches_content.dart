import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:spacex_app/utils/app_colors.dart';
import 'package:spacex_app/widgets/home/launches_card.dart';

import '../../bloc/launches_bloc.dart';
import '../../utils/app_textstyles.dart';

class LaunchesContent extends StatefulWidget {
  const LaunchesContent({Key? key}) : super(key: key);

  @override
  State<LaunchesContent> createState() => _LaunchesContentState();
}

class _LaunchesContentState extends State<LaunchesContent> {
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
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: AppColors.blackGray,
            height: 80.w,
            child: Text(
              'Launches',
              style: AppTextStyle.launchesViewTitle(),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Center(
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
                      cacheExtent: 9999,
                      itemCount: state.launches.length,
                      itemBuilder: (context, index) {
                        var launch = state.launches[index];

                        return LaunchesCard(launch: launch);
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
          ),
        ),
      ],
    );
  }
}
