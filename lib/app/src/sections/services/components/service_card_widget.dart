import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceCardWidget extends StatefulWidget {
  final String serviceIcon;
  final String? serviceTitle;
  final String? serviceDescription;
  final String? serviceLink;
  final double? cardWidth;
  final double? cardHeight;

  const ServiceCardWidget(
      {required this.serviceIcon,
      this.serviceTitle,
      this.serviceDescription,
      this.serviceLink,
      this.cardHeight,
      this.cardWidth});

  @override
  _ServiceCardWidgetState createState() => _ServiceCardWidgetState();
}

class _ServiceCardWidgetState extends State<ServiceCardWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () => launch(widget.serviceLink!),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8.0),
            border: isHover
                ? Border.all(width: 0.7, color: AppColors.primaryColor)
                : null,
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: AppColors.primaryColor.withAlpha(200),
                      blurRadius: 12.0,
                      offset: Offset(2.0, 3.0),
                    )
                  ]
                : []),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              widget.serviceIcon,
              height: height * 0.24,
            ),
            Text(
              widget.serviceTitle!,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: Text(
                widget.serviceDescription!,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
