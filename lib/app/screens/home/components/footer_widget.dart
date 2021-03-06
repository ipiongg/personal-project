import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/utils/colors.dart';

class FooterWidget extends StatefulWidget {
  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: AppColors.secondary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:80.0,vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Links Úteis',
                        style: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: 15,
                          
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Inicio',
                        style: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Trabalhos',
                        style: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Contato',
                        style: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Image(image: AssetImage('/img/logo.png'), height: 50.73),
                ],
              )
            ],
          ),
        ));
  }
}
