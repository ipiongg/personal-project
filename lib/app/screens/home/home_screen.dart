import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/screens/home/components/header_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        children: [HeaderWidget()],
      ),
    ));
  }
}
