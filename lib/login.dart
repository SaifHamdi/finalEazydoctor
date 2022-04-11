import 'package:eazyydoctor/homeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName='login';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Image.asset('assets/images/x1.0/circle.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
        Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 150, 25, 25),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/x1.0/heart.jpg',
                width: 150,
                height: 350,),
              ),
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
      ],
    );
  }
}