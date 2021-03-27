import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/home/home_section_desktop.dart';
import 'package:personal_portfolio/app/src/sections/home/home_section_mobile.dart';
import 'package:personal_portfolio/app/src/sections/home/home_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeSection extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeSectionMobile(),
      tablet: HomeSectionTablet(),
      desktop: HomeSectionDesktop(),
    );
  }
}
