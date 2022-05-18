import 'package:eazyydoctor/themeData.dart';
import 'package:flutter/material.dart';


TextField reusableTextField (String text, IconData icon, bool isPasswordType, TextEditingController controller ){
  return TextField(controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(prefixIcon: Icon(icon, color: MyThemeData.primaryColor),
        labelText: text,
        labelStyle: TextStyle(color: Colors.black),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none))
    ),
    keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.emailAddress ,
  );
}

Container signInSignUpButton(BuildContext context, bool isLogin, Function onTap){
  return Container(
    width: MediaQuery.of(context).size.width, height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(onPressed: (){
      onTap();
    },
      child: Text(
        isLogin ? 'LOGIN' : 'SIGN UP',
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if(states.contains(MaterialState.pressed)){
              return Colors.black;
            }
            return MyThemeData.primaryColor;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ))
      ),),
  );
}