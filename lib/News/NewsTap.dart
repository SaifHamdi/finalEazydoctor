import 'package:eazyydoctor/News/APImanager.dart';
import 'package:eazyydoctor/News/NewsListWidget.dart';
import 'package:eazyydoctor/News/NewsResponse.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NewsTap extends StatelessWidget {
  static const String routename='news';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex:1,child:
        FutureBuilder<NewsResponse>(
          future: ApiManager.loadNews(),
          builder: (context, snapshot) {
            if(snapshot.hasError){print('errrrror ${snapshot.error.toString()}');
              return Center(child: Text(snapshot.error.toString()));
            }else if (snapshot.connectionState==ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(itemBuilder: (builContext,index){
              return Text(snapshot.data?.articles?.elementAt(index).title ?? "");
            },
            itemCount: snapshot.data?.articles?.length ?? 0,);
          },
        ) ,
        ),
      ],
    );
  }
}