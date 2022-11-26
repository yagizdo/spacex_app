import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  AppTextStyle._();

  // Example
  /*static TextStyle titleMedium({
    Color? color,
    double? size,
    FontWeight? weight,
    TextOverflow? overflow,
    bool isItalic = false,
  }) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: (size ?? 22).sp,
      fontWeight: weight ?? FontWeight.w700,
      letterSpacing: -0.2.sp,
      overflow: overflow ?? TextOverflow.ellipsis,
      //fontStyle: isItalic ? FontStyle.italic : FontStyle.normal
    );
  }*/

  static TextStyle homeText() {
    return TextStyle(
      color: Colors.white,
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.2.sp,
      overflow: TextOverflow.ellipsis,
    );
  }
}
