import 'package:eazyydoctor/Setting/Profile.dart';
import 'package:eazyydoctor/SignInScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, Profile.routName);
            },
                child: Container(child: Text('بياناتي',style: TextStyle(fontSize: 25.0),),)),
            InkWell(onTap: (){},
                child: Container(child: Text('احنا مين',style: TextStyle(fontSize: 25.0),),)),
            InkWell(onTap: (){},
                child: Container(child: Text('اسئلني',style: TextStyle(fontSize: 25.0),),)),
            InkWell(onTap: (){
              FirebaseAuth.instance.signOut().then((value) {
                print("signed out");
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
              });
            },
                child: Container(child: Text('خروج',style: TextStyle(fontSize: 25.0),),)),
          ],
        ),
      )
      ],
    );
  }
}