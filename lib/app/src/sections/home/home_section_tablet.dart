import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/social_media_widget.dart';

class HomeSectionTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
            child: Opacity(
              opacity: 0.8,
              child: Image.asset('assets/img/image-home.png',
                  height: height * 0.8),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "SEJA BEM-VINDO(A)! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.03, fontWeight: FontWeight.w300),
                    ),
                    Image.asset(
                      "assets/gif/hi.gif",
                      height: height * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  children: [
                    Text(
                      "see!",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.07,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      "WAVE",
                      style: GoogleFonts.montserrat(
                          color: AppColors.primaryColor,
                          fontSize: height * 0.07,
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppColors.primaryColor,
                    ),
                    AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
                      TyperAnimatedText(
                        " Desenvolvimento de aplicativos",
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                      ),
                      TyperAnimatedText(
                        " Desenvolvimento de websites",
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                      ),
                      TyperAnimatedText(
                        " Desenvolvimento de lojas virtuais",
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                      )
                    ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                SocialMediaWidget(
                  height: height * 0.035,
                  horizontalPadding: width * 0.01,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
