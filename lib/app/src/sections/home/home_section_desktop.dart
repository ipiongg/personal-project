import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/utils/animations/entrance_fader.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/social_media_widget.dart';

class HomeSectionDesktop extends StatelessWidget {
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
            top: width < 1200 ? height * 0.15 : height * 0.05,
            right: width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.asset(
                  'assets/img/image-home.png',
                  height: width < 1200 ? height * 0.8 : height * 1,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.35, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "SEJA BEM-VINDO(A)! ",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 2),
                      duration: Duration(milliseconds: 800),
                      child: Image.asset(
                        "assets/gif/hi.gif",
                        height: height * 0.05,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "see!",
                      style: GoogleFonts.montserrat(
                        fontSize: 50,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      "WAVE",
                      style: GoogleFonts.montserrat(
                          fontSize: 55,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor,
                          letterSpacing: 3.0),
                    ),
                  ],
                ),
                EntranceFader(
                  offset: Offset(-10, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppColors.primaryColor,
                      ),
                      AnimatedTextKit(
                          repeatForever: true,
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            TyperAnimatedText(
                              " Desenvolvimento de aplicativos",
                              speed: Duration(milliseconds: 50),
                              textStyle: GoogleFonts.montserrat(
                                  fontSize: 15, fontWeight: FontWeight.w200),
                            ),
                            TyperAnimatedText(
                              " Desenvolvimento de websites",
                              speed: Duration(milliseconds: 50),
                              textStyle: GoogleFonts.montserrat(
                                  fontSize: 15, fontWeight: FontWeight.w200),
                            ),
                            TyperAnimatedText(
                              " Desenvolvimento de lojas virtuais",
                              speed: Duration(milliseconds: 50),
                              textStyle: GoogleFonts.montserrat(
                                  fontSize: 15, fontWeight: FontWeight.w200),
                            )
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SocialMediaWidget(
                  height: height * 0.035,
                  horizontalPadding: width * 0.005,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
