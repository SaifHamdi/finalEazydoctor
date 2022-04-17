import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(child: ElevatedButton(onPressed: (){},child: Text('بياناتي'),),),
            Container(child: ElevatedButton(onPressed: (){},child: Text('احنا مين'),),),
            Container(child: ElevatedButton(onPressed: (){},child: Text('اسئلني'),),),
            Container(child: ElevatedButton(onPressed: (){},child: Text('خروج'),),),
          ],
        ),
      )
      ],
    );
  }
}