import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/src/sections/about/components/about_text_widget.dart';

import 'package:google_fonts/google_fonts.dart';

class AboutSectionDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      color: Color(0xff2D2E32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\nSobre nós",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: AboutTextWidget(
                  fontSize: width <= 1100 ? 14 : 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}
