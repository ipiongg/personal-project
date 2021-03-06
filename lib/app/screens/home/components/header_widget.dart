import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF25262A),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('/img/logo.png'), height: 55),
              Container(
                child: Row(
                  children: [
                    Text(
                      '<Ínicio/>',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(
                        'Trabalhos',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Text(
                      'Contato',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
          ///////

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 400.00,
                      child: Text(
                        'Desenvolvimento de sites e aplicativos feitos para você!'
                            .toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        width: 400.00,
                        child: Text(
                          'Especialistas na criação de aplicativos, websites e lojas virtuais para o seu negócio.',
                          style:
                              TextStyle(color: Color(0xffAFAFAF), fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff05A2EF),
                            // shape: OutlinedBorder(side: Border.all()),
                            padding:
                                EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Enviar Mensagem',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Image.asset(
                '/img/image-header.png',
                width: 400,
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff05A2EF),
                        ),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      '/icon/instagram.png',
                    ),
                  ),
               
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff05A2EF),
                          ),
                          shape: BoxShape.circle),
                      child: Image.asset(
                        '/icon/whatsapp.png',
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff05A2EF),
                        ),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      '/icon/mail.png',
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
