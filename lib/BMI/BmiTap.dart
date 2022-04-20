import 'package:eazyydoctor/BMI/ResultPage.dart';
import 'package:eazyydoctor/themeData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eazyydoctor/BMI/calcbrain.dart';

class BmiTap extends StatefulWidget {
  @override
  _BmiTapState createState() => _BmiTapState();
}

class _BmiTapState extends State<BmiTap> {
  int height=180;
  int weight=30;
  int age=18;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    height:150,
                    width: 150,
                    child: Card(color: MyThemeData.primaryColor,
                      child: ListTile(title: Text('MALE',style: TextStyle(fontSize: 20),),
                        trailing: Icon(Icons.male_outlined,size: 30,),),
                    ),

                  ),

                  Container(
                    height:150,
                    width: 150,
                    child: Card(child: ListTile(title: Text('FEMALE',style: TextStyle(fontSize: 20),),
                      trailing: Icon(Icons.female_outlined,size: 30,),),
                      color: MyThemeData.primaryColor,
                    ),
                  ),

                ],
              ),
              Container(

                height:150,
                width: 150,
                child: Card(color: MyThemeData.primaryColor,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',style: TextStyle(fontSize: 25),),


                      SliderTheme(data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: MyThemeData.primaryColor,
                        overlayColor: Colors.white,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderThumbShape(enabledThumbRadius: 30.0),
                      ), child: Slider(value: height.toDouble(),
                          min:120.0,
                          max: 220.0,
                          onChanged: (double newvalue){
                            setState(() {
                              height=newvalue.round();
                            });
                          })),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(),style: TextStyle(fontSize: 30),),
                          Text('cm'), ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    height:150,
                    width: 150,
                    child: Card(color: MyThemeData.primaryColor,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Weight',style:TextStyle(fontSize: 23),textAlign: TextAlign.left,),Text(weight.toString(),style: TextStyle(fontSize: 25),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  if (weight>1)
                                    weight--;
                                });
                              }, icon: Icon(Icons.remove_circle_outline,size: 30,)),
                              SizedBox(width: 10.0,),
                              IconButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }, icon: Icon(Icons.add_circle_outline,size: 30,)),
                            ],
                          ),
                        ],),
                    ),

                  ),

                  Container(
                    height:150,
                    width: 150,
                    child: Card(color: MyThemeData.primaryColor,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Age',style: TextStyle(fontSize: 25),),Text(age.toString(),style: TextStyle(fontSize: 25),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  if (age>1)age--;
                                });

                              }, icon: Icon(Icons.remove_circle_outline,size: 30,)),
                              SizedBox(width: 10.0,),
                              IconButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              }, icon: Icon(Icons.add_circle_outline,size: 30,)),
                            ],
                          ),
                        ],),
                    ),
                  ),

                ],
              ),
              ElevatedButton(onPressed: (){
                CalculatorBrain calc =
                CalculatorBrain(height: height, weight:weight);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(bmiResult: calc.calculateBMI(), resultText: calc.getResult(), interpretation: calc.getInterpretation())));
              },
                  style:ElevatedButton.styleFrom(primary: MyThemeData.primaryColor),child: Text('Calculate'))
            ],
          ),
        )
      ],
    );
  }
}
