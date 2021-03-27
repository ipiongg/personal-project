import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/models/section.dart';
import 'package:personal_portfolio/app/src/sections/arrow_on_top_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/home/home_section.dart';
import 'sections/portfolio/portfolio_section.dart';
import 'sections/services/services_section.dart';
import 'sections/footer/footer_section.dart';

class MainSectionController {
  ScrollController scrollController =
      ScrollController(initialScrollOffset: 25.0);
  ItemScrollController itemScrollController = ItemScrollController();
  ItemPositionsListener itemPositionListener = ItemPositionsListener.create();

  final List<Section> sections = [
    Section(name: "Início", icon: Icons.home),
    Section(name: "Sobre", icon: Icons.person),
    Section(name: "Serviços", icon: Icons.settings),
    Section(name: "Projetos", icon: Icons.build),
    Section(name: "Contato", icon: Icons.phone),
  ];

  void scroll(int i) {
    itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomeSection();
    } else if (i == 1) {
      return AboutSection();
    } else if (i == 2) {
      return ServicesSection();
    } else if (i == 3) {
      return PortfolioSection();
    } else if (i == 4) {
      return ContactSection();
    } else if (i == 5) {
      return SizedBox(
        height: 40.0,
      );
    } else if (i == 6) {
      return ArrowOnTopWidget(
        onPressed: () => scroll(0),
      );
    } else if (i == 7) {
      return FooterSection();
    } else {
      return Container();
    }
  }
}
