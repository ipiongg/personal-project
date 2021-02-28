import 'package:flutter/material.dart';

import 'components/contact_widget.dart';
import 'components/testimonial_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        ContactWidget(),
        TestimonialWidget(),
      ]),
    ));
  }
}
