import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool startAnimation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => setState(() => startAnimation = !startAnimation),
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(0.0),
            ),
            width: startAnimation ? 150 : 300,
            height: startAnimation ? 150 : 300,
            curve: Curves.easeInOutCubic,
            duration: Duration(seconds: 5),
          ),
        ),
      ),
    );
  }
}
