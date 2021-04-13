import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/about/components/about_text_widget.dart';

import 'package:google_fonts/google_fonts.dart';

class AboutSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Color(0xff2D2E32),
      child: Column(
        children: [
          Text(
            "Sobre nós",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          AboutTextWidget(
            textAlign: TextAlign.center,
            fontSize: 13,
          ),
          SizedBox(
            height: height * 0.025,
          ),
        ],
      ),
    );
  }
}
