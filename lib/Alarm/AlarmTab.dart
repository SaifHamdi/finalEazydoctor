import 'package:eazyydoctor/Alarm/AlarmResult.dart';
import 'package:flutter/material.dart';
class AlarmTap extends StatelessWidget {
  static const String routeName= 'Alarm';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          margin: EdgeInsets.fromLTRB(290,500,0,0),
          height:60.0,
          child: SizedBox.fromSize(
            size: Size(60,60),
            child: ClipOval(
              child: Material(
                color: Colors.cyan,// button color
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AlarmResult.routeName);
                  },
                  // button pressed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ), // text
                    ],
                  ),
                ),
              ),
            ),
          ),
        )

    );

  }
}