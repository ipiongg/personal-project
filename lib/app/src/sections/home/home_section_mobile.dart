import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/social_media_widget.dart';

class HomeSectionMobile extends StatelessWidget {
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
            bottom: 0.0,
            right: 0.0,
            child: Opacity(
              opacity: 0.7,
              child: Image.asset('assets/img/image-home.png',
                  height: height * 0.65),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/gif/hi.gif",
                      height: height * 0.04,
                    ),
                    Text(
                      " SEJA BEM-VINDO(A) À",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "see!",
                      style: GoogleFonts.montserrat(
                        fontSize: 50,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      "WAVE",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                        letterSpacing: 2.0,
                        fontSize: 55,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppColors.primaryColor,
                    ),
                    AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
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
                SizedBox(
                  height: height * 0.035,
                ),
                SocialMediaWidget(
                  height: height * 0.06,
                  horizontalPadding: 2.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
