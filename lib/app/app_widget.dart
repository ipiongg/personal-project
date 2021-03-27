import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'src/main_section.dart';
import 'utils/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'see!WAVE',
      theme: AppTheme.theme,
      home: MainSection(),
    );
  }
}
