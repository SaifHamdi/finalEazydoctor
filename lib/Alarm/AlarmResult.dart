import 'package:eazyydoctor/Alarm/AlarmTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
class AlarmResult extends StatefulWidget {
  static const String routeName= 'Done';

  @override
  _AlarmState createState() => _AlarmState();
}
class _AlarmState extends State<AlarmResult> {
  TextEditingController hourController = TextEditingController();
  TextEditingController minuteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'assets/images/x1.0/back1.png'),
              ),
            ),
            child:  Center(
                child: SizedBox(
                  width: 350.0,
                  height: 490.0,
                  child: Card(
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 25, 30),
                      child: Column(
                        children: [
                          Center(
                            child: Column(children: <Widget>[
                              SizedBox(height: 30),
                              Column(
                                children: [
                                  Text('Add Medicine',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.blue
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(11)),
                                    child: Center(
                                      child: TextField(
                                        controller: hourController,
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(11)),
                                    child: Center(
                                      child: TextField(
                                        controller: minuteController,
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 5, 2, 5),
                                      child: TextButton(
                                        child: const Text(
                                          'Add Time',
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                        onPressed: () {
                                          int hour;
                                          int minutes;
                                          hour = int.parse(hourController.text);
                                          minutes =
                                              int.parse(minuteController.text);

                                          // creating alarm after converting hour
                                          // and minute into integer
                                          FlutterAlarmClock.createAlarm(
                                              hour, minutes);
                                        },
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        // show alarm
                                        FlutterAlarmClock.showAlarms();
                                      },
                                      child: const Text(
                                        'Show Time',
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),
                                  ]
                              ),

                              Container(
                                  margin: const EdgeInsets.all(1)
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Name Medicine:',
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15)
                                    )

                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Dose:',
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15)
                                    )
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 8, 10),
                                    child:
                                    Container(
                                      child: IconButton(
                                        icon: new Icon(
                                          Icons.medication_outlined,
                                          size: 25,
                                        ),
                                        onPressed: () {
                                          // add functionality here
                                        },
                                      ),
                                      width: 50,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 10),
                                    child:
                                    Container(
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.medical_services_outlined,
                                          size: 25,
                                        ),
                                        onPressed: () {
                                          // add functionality here
                                        },
                                      ),
                                      width: 50,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                      ),
                                    ),

                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 10),
                                    child:
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset(
                                          'assets/images/x1.0/x-ray.jpg',
                                          height: 30, width: 30,),
                                        onPressed: () {
                                          // add functionality here
                                        },
                                      ),
                                      width: 50,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                      ),
                                    ),

                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 10),
                                    child:
                                    Container(
                                      child: IconButton(
                                        icon: Image.asset(
                                          'assets/images/x1.0/7ona.jpg', height: 30,
                                          width: 30,),
                                        onPressed: () {
                                          // add functionality here
                                        },
                                      ),
                                      width: 50,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 5, 0, 6),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }, child: Text('Done'),
                                ),
                              )
                            ],
                            ),
                          )
                        ],
                      ),
                    ), //Text
                  ),
                )
            )
          //Center
        )//Card//SizedBox,
    );
  }
}