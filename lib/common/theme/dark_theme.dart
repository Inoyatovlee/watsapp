import 'package:flutter/material.dart';
import 'package:wat_sa/common/utils/colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      // backgroundColor:AppColor.backgroundDark
      scaffoldBackgroundColor: AppColor.backgroundDark
      // elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()
      );
}
