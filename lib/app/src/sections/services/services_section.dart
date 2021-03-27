import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/services/services_section_desktop.dart';
import 'package:personal_portfolio/app/src/sections/services/services_section_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceSectionMobile(),
      tablet: ServiceSectionMobile(),
      desktop: ServicesSectionDesktop(),
    );
  }
}
