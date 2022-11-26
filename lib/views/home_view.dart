import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_app/utils/app_colors.dart';
import 'package:spacex_app/widgets/home/launches_content.dart';

import '../utils/app_textstyles.dart';
import '../widgets/main_widgets/main_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      backgroundColor: AppColors.white,
      content: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) {
          return [
            SliverAppBar(
              title: Text(
                'SpaceX Launches',
                style: AppTextStyle.homeAppbarTitle(),
              ),
              backgroundColor: AppColors.blackBackground,
              elevation: 0,
              centerTitle: true,
              expandedHeight: 150.w,
              pinned: true,
            ),
          ];
        },
        body: const LaunchesContent(),
      ),
    );
  }
}
