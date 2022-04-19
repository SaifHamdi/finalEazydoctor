import 'package:flutter/material.dart';
import 'utils.dart';
class RegisterScreen extends StatelessWidget{
  static const String routeName= 'register';
  String firstName='',lastName='',userName='',password='',email='';
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body:
          SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 100, 25, 25),
                child: Form(key: formKey,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Image.asset('assets/images/x1.0/register.jpg',width: 175,height: 190,),),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'first name'),
                          onChanged: (text){
                            firstName=text;
                          },
                          validator: (text){
                            if(text==null|| text.trim().isEmpty){
                              return 'please enter first name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        child: TextFormField(
                            decoration: InputDecoration(labelText: 'last name'), onChanged: (text){
                          lastName=text;
                        },
                            validator: (text){
                              if(text==null|| text.trim().isEmpty){
                                return 'please enter last name';
                              }
                              return null;
                            }
                        ),
                      ),
                      Container(
                        child: TextFormField(
                            decoration: InputDecoration(labelText: ' username'),
                            onChanged: (text){
                              userName=text;
                            },
                            validator: (text){
                              if(text==null|| text.trim().isEmpty){
                                return 'please enter user name';
                              }
                              return null;
                            }
                        ),
                      ),
                      Container(
                        key: formKey,
                        child: TextFormField(
                            decoration: InputDecoration(labelText: 'Email'),
                            onChanged: (text){
                              email=text;
                            },
                            validator: (text){
                              if(text==null|| text.trim().isEmpty){
                                return 'please enter your email';
                              }
                              if(!isValidEmail(email)){
                                return 'please enter a valid email';
                              }
                              return null;
                            }
                        ),
                      ),
                      Container(
                        child: TextFormField(
                            decoration: InputDecoration(labelText: 'password'),
                            onChanged: (text){
                              password=text;
                            },
                            validator: (text){
                              if(text==null|| text.trim().isEmpty){
                                return 'please enter your password';
                              }if(text.length<6){
                                return 'password should be at least 6 characters';
                              }
                              return null;
                            }
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            if(formKey.currentState?.validate()==true){
                              createAccountWithFirebaseAuth();
                            }
                          },child: Text('create account'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  void createAccountWithFirebaseAuth(){

  }
}