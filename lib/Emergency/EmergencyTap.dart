import 'package:flutter/material.dart';

import 'id_screen.dart';

class EmergencyTab extends StatelessWidget {
  static const String routeName ='intro_screen';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 170),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // ignore: deprecated_member_use
              SizedBox(),
              Image.asset('assets/images/hospital.jpg'),
              SizedBox(
                height: 60,
                width: double.infinity,
                // ignore: deprecated_member_use
                child: RaisedButton(

                  color: Colors.teal,

                  onPressed: () {
                    Navigator.pushNamed(context, IdScreen.routeName);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text('Get started',
                      style : TextStyle(
                          color: Colors.white,
                          fontSize: 18)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}