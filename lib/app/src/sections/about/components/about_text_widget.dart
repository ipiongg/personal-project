import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTextWidget extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutTextWidget({Key key, this.textAlign, this.fontSize})
      : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris id enim enim. \n\nEtiam placerat dolor nec odio dapibus blandit. Duis ut varius turpis. Maecenas a erat mollis, gravida nunc in, convallis velit. In non porta lectus, non posuere justo. In hac habitasse platea dictumst. Nam nec ipsum eget ante volutpat eleifend. \n\nFusce sed augue eu lorem rhoncus interdum quis eget nibh. Vestibulum tempor pretium purus fringilla dictum. Aliquam erat volutpat. Sed quis tristique neque. Cras commodo faucibus accumsan. Nunc vel aliquet neque, lobortis elementum nulla. Vivamus volutpat ut mauris eu sagittis",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
      ]),
    );
  }
}
