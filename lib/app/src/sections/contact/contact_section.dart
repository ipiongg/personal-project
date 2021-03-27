import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/contact/contact_section_desktop.dart';
import 'package:personal_portfolio/app/src/sections/contact/contact_section_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactSectionMobile(),
      tablet: ContactSectionMobile(),
      desktop: ContactSectionDesktop(),
    );
  }
}
