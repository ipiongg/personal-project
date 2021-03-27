import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      padding: EdgeInsets.all(5),
      height: height * 0.07,
      width: width,
      color: Colors.grey[900],
      child: Center(
        child: Text(
          "Copyright ${DateTime.now().year} see!Wave | Todos os direitos reservados.",
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}