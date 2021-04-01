import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/main_section_controller.dart';

import 'navbar_actions.dart';
import 'navbar_logo.dart';

class DrawerWidget extends StatelessWidget {
  final MainSectionController controller;

  const DrawerWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: NavbarLogo(
                height: 28,
              ),
            ),
            SizedBox(height: 25),
            for (int i = 0; i < controller.sections.length; i++)
              NavbarActions(
                label: controller.sections[i].name,
                index: i,
                icon: controller.sections[i].icon,
                scroll: controller.scroll,
              )
          ],
        ),
      ),
    );
  }
}
