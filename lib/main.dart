import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eazy Doctor',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(23, 202, 172, 255),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

