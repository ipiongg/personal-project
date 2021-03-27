import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/main_section_controller.dart';
import 'package:personal_portfolio/app/src/sections/navbar/drawer_widget.dart';
import 'package:personal_portfolio/app/src/sections/navbar/navbar_actions.dart';
import 'package:personal_portfolio/app/utils/animations/entrance_fader.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'sections/navbar/navbar_logo.dart';

class MainSection extends StatefulWidget {
  @override
  _MainSectionState createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  final MainSectionController controller = MainSectionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 760
          ? _navbarDesktop() as PreferredSizeWidget?
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
      drawer: MediaQuery.of(context).size.width < 760
          ? DrawerWidget(controller: controller)
          : null,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: controller.scrollController,
          thumbColor: AppColors.primaryColor,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: controller.itemScrollController,
            itemPositionsListener: controller.itemPositionListener,
            itemCount: 8,
            itemBuilder: (context, index) => controller.sectionWidget(index),
          ),
        ),
      ),
    );
  }

  Widget _navbarDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: EntranceFader(
        offset: Offset(0, -20),
        duration: Duration(seconds: 1),
        delay: Duration(seconds: 3),
        child: NavbarLogo(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
      ),
      actions: [
        for (int i = 0; i < controller.sections.length; i++)
          NavbarActions(
            label: controller.sections[i].name,
            index: i,
            icon: controller.sections[i].icon,
            scroll: controller.scroll,
          )
      ],
    );
  }
}
