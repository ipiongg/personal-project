import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/portfolio/portfolio_section_desktop.dart';
import 'package:personal_portfolio/app/src/sections/portfolio/portfolio_section_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PortfolioSectionMobile(),
      tablet: PortfolioSectionMobile(),
      desktop: PortfolioSectionDesktop(),
    );
  }
}
