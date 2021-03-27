import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        accentColor: AppColors.primaryColor,
        highlightColor: AppColors.primaryColor,
      );
}
