import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/app/utils/animations/entrance_fader.dart';
import 'package:personal_portfolio/app/utils/theme/app_colors.dart';

class NavbarActions extends StatelessWidget {
  final String label;
  final int index;
  final IconData icon;
  final Function(int) scroll;

  const NavbarActions(
      {Key key,
      @required this.label,
      @required this.index,
      @required this.icon,
      @required this.scroll})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: Offset(0, -20),
            delay: Duration(seconds: 3),
            duration: Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: AppColors.primaryColor,
                onPressed: () => scroll(index),
                child: Text(
                  label,
                  style: GoogleFonts.montserrat(color: Colors.white),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                hoverColor: AppColors.primaryColor,
                onPressed: () => scroll(index),
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: AppColors.primaryColor,
                  ),
                  title: Text(
                    label,
                    style: GoogleFonts.montserrat(color: Colors.white),
                  ),
                )),
          );
  }
}
