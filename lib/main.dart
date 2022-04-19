import 'package:eazyydoctor/homeScreen.dart';
import 'package:eazyydoctor/login.dart';
import 'package:eazyydoctor/themeData.dart';
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
        primaryColor: MyThemeData.primaryColor,
      ),
      routes: {
        HomeScreen.routeName: (buildContext)=>HomeScreen(),
        LoginScreen.routeName: (buildContext)=>LoginScreen()
    },
      initialRoute: LoginScreen.routeName,
    );
  }
}

