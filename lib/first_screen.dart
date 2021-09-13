import 'package:flutter/material.dart';
import 'package:flutter_application_2/second_screen.dart';
import 'package:page_transition/page_transition.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft, child: SecondScreen()));
        },
        child: Text(
          'На экран 2',
          style: TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}
