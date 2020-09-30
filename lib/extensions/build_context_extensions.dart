import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ulusoyapps_flutter/resources/colors/app_colors.dart';
import 'package:ulusoyapps_flutter/resources/themes/theme_view_model.dart';

extension BuildContextExtension on BuildContext {
  AppColors get appColors => this.watch<ThemeViewModel>().appColors;
  TextTheme get baseTextTheme => this.watch<ThemeViewModel>().baseTextTheme;
  Brightness get brightness => this.watch<ThemeViewModel>().brightness;
  ThemeData get appThemeData => this.watch<ThemeViewModel>().themeData;
  bool get isDark => brightness == Brightness.dark;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  Size get screenSize => MediaQuery.of(this).size;
}