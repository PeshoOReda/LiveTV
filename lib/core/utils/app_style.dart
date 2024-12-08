import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_manger.dart';

class AppStyle {
  static TextStyle appBarStyle = GoogleFonts.exo(
      fontWeight: FontWeight.w400, fontSize: 22.sp, color: ColorsManager.white);
  static TextStyle drawer = GoogleFonts.poppins(
      fontWeight: FontWeight.w700, fontSize: 24.sp, color: ColorsManager.white);
  static TextStyle drawerItem = GoogleFonts.poppins(
      fontWeight: FontWeight.w700, fontSize: 24.sp, color: ColorsManager.black);
  static TextStyle pickCategory = GoogleFonts.poppins(
      fontWeight: FontWeight.w700, fontSize: 22.sp, color: ColorsManager.grey);
  static TextStyle categoryTitle = GoogleFonts.exo(
      fontWeight: FontWeight.w400, fontSize: 22.sp, color: ColorsManager.white);
}
