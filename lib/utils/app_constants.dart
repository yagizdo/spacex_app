import 'package:spacex_app/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

/// Screen-width %1
SizedBox height1Per({required BuildContext context}) {
  return SizedBox(
    height: context.screenWidth * 0.02,
  );
}

/// Screen-width %2
SizedBox height2Per({required BuildContext context}) {
  return SizedBox(
    height: context.screenWidth * 0.02,
  );
}

/// Screen-width %5
SizedBox height5Per({required BuildContext context}) {
  return SizedBox(
    height: context.screenWidth * 0.05,
  );
}

/// Screen-width %7
SizedBox height7Per({required BuildContext context}) {
  return SizedBox(
    height: context.screenWidth * 0.07,
  );
}

/// Screen-width %10
SizedBox height10Per({required BuildContext context}) {
  return SizedBox(
    height: context.screenWidth * 0.1,
  );
}

/// Screen-width %15
SizedBox height15Per({required BuildContext context}) {
  return SizedBox(
    height: context.screenWidth * 0.15,
  );
}

/// Screen-width %20
SizedBox height20Per({required BuildContext context}) {
  return SizedBox(
    height: context.screenWidth * 0.2,
  );
}
