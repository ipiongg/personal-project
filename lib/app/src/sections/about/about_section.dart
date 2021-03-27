import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/about/about_section_desktop.dart';
import 'package:personal_portfolio/app/src/sections/about/about_section_mobile.dart';
import 'package:personal_portfolio/app/src/sections/about/about_section_tablet.dart';

import 'package:responsive_builder/responsive_builder.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutSectionMobile(),
      tablet: AboutSectionTablet(),
      desktop: AboutSectionDesktop(),
    );
  }
}
