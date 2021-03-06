import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/screens/home/components/contact_widget.dart';
import 'package:personal_portfolio/app/screens/home/components/header_widget.dart';
import 'package:personal_portfolio/app/screens/home/components/solutions_widget.dart';
import 'package:personal_portfolio/app/screens/home/components/testimonial_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            HeaderWidget(),
            SolutionsWidget(),
            TestimonialWidget(),
            ContactWidget()
          ],
        ),
      ),
    ));
  }
}
