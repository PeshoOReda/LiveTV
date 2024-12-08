import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_style.dart';
import '../../core/utils/colors_manger.dart';

class ApplicationTheme {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: ColorsManager.white),
      backgroundColor: ColorsManager.appBarColors,
      centerTitle: true,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
      ),
      titleTextStyle: AppStyle.appBarStyle,
    ),
  );
}
