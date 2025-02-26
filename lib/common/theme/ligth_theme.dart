import 'package:flutter/material.dart';
import 'package:wat_sa/common/utils/colors.dart';

ThemeData ligthTeme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      // backgroundColor: AppColor.backgroundDark,
      scaffoldBackgroundColor: AppColor.backgroundLight);
}
