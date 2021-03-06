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
          padding: const EdgeInsets.only(
              left: 80.0, right: 80.0, top: 40.0, bottom: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Links Úteis',
                        style: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Inicio',
                              style: TextStyle(
                                color: Color(0xffAFAFAF),
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: Text(
                                'Trabalhos',
                                style: TextStyle(
                                  color: Color(0xffAFAFAF),
                                  fontSize: 15,
                                ),
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
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('/img/logo.png'), height: 80.0),
                    ],
                  )
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' Copyright © 2021 see!Wave - Todos os direitos reservados.',
                      style: TextStyle(
                        color: Color(0xff05A2EF),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
