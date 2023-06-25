
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_colors.dart';


ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: MyColors.themeColor,
    scaffoldBackgroundColor: MyColors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: MyColors.grayScale2Color,),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: MyColors.grayScale2Color,),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith((states) => MyColors.themeColor),
      overlayColor:  MaterialStateColor.resolveWith((states) =>MyColors.grayScale2Color,),
    ),

    colorScheme: const ColorScheme.light(
      primary: MyColors.themeColor,
      secondary: MyColors.grayScale2Color,
      tertiary:  MyColors.grayScale5Color,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 1.h,
      backgroundColor: Colors.white,
      selectedItemColor: MyColors.themeColor,
      unselectedItemColor: MyColors.grayScale2Color,
      selectedIconTheme: const IconThemeData(color: MyColors.themeColor),
      showUnselectedLabels: true,
    ),
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0, color: MyColors.themeColor);
