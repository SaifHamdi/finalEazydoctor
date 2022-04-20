import 'package:eazyydoctor/Alarm/AlarmTab.dart';
import 'package:eazyydoctor/BMI/BmiTap.dart';
import 'package:eazyydoctor/Emergency/EmergencyTap.dart';
import 'package:eazyydoctor/News/NewsTap.dart';
import 'package:eazyydoctor/Setting/SettingTap.dart';
import 'package:eazyydoctor/themeData.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName= 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: MyThemeData.primaryColor,
            title: Text('Eazy Doctor',style: TextStyle(color: Colors.white),),
          ),
          floatingActionButton: FloatingActionButton(backgroundColor: MyThemeData.primaryColor,
            child: Icon(Icons.settings),
            onPressed: (){
            showSettingTap();
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:
          Theme( data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primaryColor),
            child: BottomAppBar(elevation: 0,
              child: BottomNavigationBar(
                onTap: (index){
                  currentPage=index;
                  setState(() {});
                },
                currentIndex: currentPage,
                selectedIconTheme: IconThemeData(color: MyThemeData.selectedColor),
                unselectedIconTheme: IconThemeData(color: MyThemeData.unselectedColor),
                items: [
                  BottomNavigationBarItem(label:'Home' ,
                      icon: Icon(Icons.home_outlined)),
                  BottomNavigationBarItem(label: 'BMI',
                      icon: Icon(Icons.self_improvement_rounded)),

                  BottomNavigationBarItem(label: 'Alarm',
                      icon: Icon(Icons.alarm)),
                  BottomNavigationBarItem(label: 'Emergency',
                      icon: Icon(Icons.dangerous)),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              shape: CircularNotchedRectangle(),
              notchMargin: 2,
            ),
          ),
          body: getCurrentPage(),
        )
      ],
    );
  }

  Widget getCurrentPage(){
    if (currentPage==0){
      return NewsTap();
    } else if (currentPage==1){
      return BmiTap();
    }else if (currentPage==2){
      return AlarmTap();
    }else if (currentPage==3){
      return EmergencyTap();
    }else
      return SettingTab();
  }
  void showSettingTap(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return SettingTab();
    });
  }
}

