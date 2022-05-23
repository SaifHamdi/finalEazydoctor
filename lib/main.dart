import 'package:eazyydoctor/Setting/Profile.dart';
import 'package:eazyydoctor/SignInScreen.dart';
import 'package:eazyydoctor/SignUpScreen.dart';
import 'package:eazyydoctor/homeScreen.dart';
import 'package:eazyydoctor/themeData.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        Profile.routName: (buildContext)=>Profile(),
        SignInScreen.routeName: (buildContext)=>SignInScreen(),
        SignUpScreen.routeName: (buildCcontext)=> SignUpScreen(),
       // AlarmTap.routeName:(buildContext)=>AlarmTap(),
        //AlarmResult.routeName:(buildContext)=>AlarmResult(),
    },
      initialRoute: SignInScreen.routeName,
    );
  }
}

