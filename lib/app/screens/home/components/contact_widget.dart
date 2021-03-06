import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff2D2E32),
      width: double.infinity,
      // height: 450,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Entre em contato conosco',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              // color: Color(0xff05A2EF),
                              border: Border.all(
                                color: Color(0xff05A2EF),
                              ),
                              shape: BoxShape.circle),
                          child: Image.asset(
                            '/icon/instagram.png',
                            repeat: ImageRepeat.noRepeat,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'seewave_tecnology',
                        style: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
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
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '+55 6398488-7858',
                          style: TextStyle(
                            color: Color(0xffAFAFAF),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              // color: Color(0xff05A2EF),
                              border: Border.all(
                                color: Color(0xff05A2EF),
                              ),
                              shape: BoxShape.circle),
                          child: Image.asset(
                            '/icon/mail.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'crysleiferreiragomes@gmail.com',
                        style: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Image.asset(
                  '/png/people.png',
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
