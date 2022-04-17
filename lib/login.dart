import 'package:eazyydoctor/homeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName='login';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
        body:
        Container(decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/images/x1.0/login.jpg'),
          fit: BoxFit.cover
        )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 250, 25, 25),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextField(),
                ),
                Container(
                  child: TextField(),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },child: Text('login'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      ],
    );
  }
}