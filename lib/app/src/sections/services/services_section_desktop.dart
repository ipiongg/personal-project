import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/utils/animations/bottom_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/service_card_widget.dart';

class ServicesSectionDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
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
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w200,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: width < 1200
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                children: [
                  WidgetAnimator(
                    child: ServiceCardWidget(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: 'assets/img/mobile-app.png',
                      serviceTitle: 'Aplicativos móveis',
                      serviceDescription:
                          'Aplicativos personalizados na palma da mão dos seus clientes.',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServiceCardWidget(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: 'assets/img/website.png',
                      serviceTitle: 'Websites',
                      serviceDescription:
                          'Projetos personalizados para a sua aplicação web.',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServiceCardWidget(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: 'assets/img/online-shopping.png',
                      serviceTitle: 'Lojas virtuais',
                      serviceDescription:
                          'Plataformas personalizadas para aumentar as suas vendas online.',
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
