import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_app/models/launches_model.dart';
import 'package:spacex_app/utils/app_assets.dart';
import 'package:spacex_app/utils/app_constants.dart';

import '../../utils/app_textstyles.dart';

class LaunchesCard extends StatelessWidget {
  const LaunchesCard({Key? key, required this.launch}) : super(key: key);
  final LaunchesModel launch;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
      child: Container(
        width: 1.sw,
        height: 250.w,
        decoration: BoxDecoration(
          color: CupertinoColors.systemTeal,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (launch.details?.length ?? 0) < 100 ? 10.w : 20.w),
          child: Column(
            children: [
              height5Per(context: context),
              Image.network(
                launch.links?.patch?.small ?? AppAssets.noIconImg,
                scale: 2.5.w,
              ),
              height2Per(context: context),
              Text(launch.name ?? 'No name data',
                  style: AppTextStyle.launchesTitle()),
              height2Per(context: context),
              Text(
                launch.details ?? 'No details data',
                style: AppTextStyle.launchesDetail(),
                textAlign: (launch.details?.length ?? 0) < 100
                    ? TextAlign.center
                    : TextAlign.start,
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
