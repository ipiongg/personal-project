import 'package:flutter/material.dart';

class TestimonialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff25262A),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:80.0,vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Testemonial',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Text(
                'O que os clientes falam sobre nós',
                style: TextStyle(
                  color: Color(0xffAFAFAF),
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60.0),
              child: Container(
                height: 550,
                width: double.infinity,
                color: Color(0xff25262A),
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 50,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal:80.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("/img/elon.png"),
                                  radius: 70,
                                  backgroundColor: Color(0xff27273d),
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  '/img/virgula.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Text(
                                'Elon Musk',
                                style: TextStyle(
                                  color: Color(0xff05A2EF),
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatisLorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis',
                                  style: TextStyle(
                                    color: Color(0xffAFAFAF),
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
