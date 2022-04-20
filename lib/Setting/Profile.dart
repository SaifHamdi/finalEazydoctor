import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Profile extends StatefulWidget {
  static const routName='profile';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('بياناتك الشخصية'),),
      body:Column(children: [
        TextFormField(decoration: InputDecoration(labelText: 'الاسم:'),),
        TextField(
          controller: dateinput, //editing controller of this TextField
          decoration: InputDecoration(
              icon: Icon(Icons.calendar_today), //icon of text field
              labelText: "Enter Date" //label text of field
          ),
          readOnly: true,  //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context, initialDate: DateTime.now(),
                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101)
            );

            if(pickedDate != null ){
              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
              print(formattedDate); //formatted date output using intl package =>  2021-03-16
              //you can implement different kind of Date Format here according to your requirement

              setState(() {
                dateinput.text = formattedDate; //set output date to TextField value.
              });
            }else{
              print("Date is not selected");
            }
          },
        ),
        TextFormField(decoration: InputDecoration(labelText: 'الأمراض:'),),
        TextFormField(decoration: InputDecoration(labelText: 'العمليات:'),),
        TextFormField(decoration: InputDecoration(labelText: 'الحساسية:'),),
      ],
      ) ,
    );
  }
}