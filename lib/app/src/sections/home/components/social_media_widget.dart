import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/app/utils/animations/bottom_animation.dart';
import 'package:personal_portfolio/app/utils/constants.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';

class SocialMediaWidget extends StatelessWidget {
  final double height;
  final double horizontalPadding;

  SocialMediaWidget({@required this.height, @required this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        WidgetAnimator(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/svg/whatsapp-outline.svg',
                color: Colors.white,
              ),
              iconSize: height,
              onPressed: () => launchURL(kWhatsAppLink),
              hoverColor: AppColors.primaryColor,
            ),
          ),
        ),
        WidgetAnimator(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/svg/instagram-outline.svg',
                color: Colors.white,
              ),
              iconSize: height,
              onPressed: () => launchURL(kInstagramLink),
              hoverColor: AppColors.primaryColor,
            ),
          ),
        ),
        WidgetAnimator(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/svg/linkedin-outline.svg',
                color: Colors.white,
              ),
              iconSize: height,
              onPressed: () => launchURL(kLinkedinLink),
              hoverColor: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
