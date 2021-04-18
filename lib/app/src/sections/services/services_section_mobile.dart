import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/services/components/service_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(
            "\nServiços",
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "Desenvolvemos a solução ideal para a sua empresa!\n\n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w200,
            ),
          ),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ServiceCardWidget(
                cardWidth: width < 650 ? width * 0.9 : width * 0.7,
                serviceIcon: [
                  'assets/img/mobile-app.png',
                  'assets/img/website.png',
                  'assets/img/online-shopping.png',
                ].elementAt(itemIndex),
                serviceTitle: [
                  'Aplicativos móveis',
                  'Websites',
                  'Lojas virtuais',
                ].elementAt(itemIndex),
                serviceDescription: [
                  'Aplicativos personalizados na palma da mão dos seus clientes.',
                  'Projetos personalizados para a sua aplicação web.',
                  'Plataformas personalizadas para aumentar as suas vendas online.',
                ].elementAt(itemIndex),
              ),
            ),
            options: CarouselOptions(
                height: height * 0.45,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
        ],
      ),
    );
  }
}
