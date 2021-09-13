import 'package:flutter/material.dart';
import 'package:flutter_application_2/first_screen.dart';
import 'package:page_transition/page_transition.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.leftToRight, child: FirstScreen()));
        },
        child: Text(
          'На экран 1',
          style: TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}
