import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_app/utils/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle homeText() {
    return TextStyle(
      color: Colors.white,
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.2.sp,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle homeAppbarTitle() {
    return TextStyle(
      color: AppColors.white,
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.2.sp,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle launchesViewTitle() {
    return TextStyle(
      color: AppColors.white,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.2.sp,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle launchesTitle() {
    return TextStyle(
      color: AppColors.white,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.2.sp,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle launchesDetail() {
    return TextStyle(
      color: AppColors.white,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.2.sp,
      overflow: TextOverflow.ellipsis,
    );
  }
}
