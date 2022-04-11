import 'package:eazyydoctor/themeData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BmiTap extends StatelessWidget {
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
             Container(height:150,
               width: 150,
               child: Card(color: MyThemeData.primaryColor,
                 child: Column(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     TextField(decoration: InputDecoration(
                       hintText: 'enter your height'
                     ),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline: TextBaseline.alphabetic,
                       children: [
                         Text('cm'),
                       ],
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
                       Text('Weight',textAlign: TextAlign.left,),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline)),
                           SizedBox(width: 10.0,),
                           IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
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
                       Text('Age'),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline)),
                           SizedBox(width: 10.0,),
                           IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
                         ],
                       ),
                     ],),
                   ),
                 ),

               ],
             ),
             ElevatedButton(onPressed: (){},
                 style:ElevatedButton.styleFrom(primary: MyThemeData.primaryColor),child: Text('Calculate'))
           ],
         ),
       )
     ],
    );
  }
}