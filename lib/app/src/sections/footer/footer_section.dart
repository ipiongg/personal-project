import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      height: height * 0.07,
      width: width,
      color: Colors.grey[900],
      child: Center(
        child: Text(
          "Copyright ${DateTime.now().year} see!WAVE | Todos os direitos reservados.",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.w100, fontSize: 15),
        ),
      ),
    );
  }
}
