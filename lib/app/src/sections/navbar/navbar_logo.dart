import 'package:flutter/material.dart';

class NavbarLogo extends StatelessWidget {
  final double? height;

  NavbarLogo({this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/img/logo-wave.png',
            height: 40,
          ),
        ],
      ),
    );
  }
}
