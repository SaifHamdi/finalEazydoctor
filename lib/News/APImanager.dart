import 'dart:convert';

import 'package:eazyydoctor/News/NewsResponse.dart';
import 'package:http/http.dart' as http;

class ApiManager{
  static const String apiKey= '898c95d1850b4bb9b36afb6f16ab94e4';

  static Future<NewsResponse> loadNews() async{
    var params = {
      'apiKey':apiKey,
      'articles': Articles
    };
    var uri= Uri.parse('newsapi.org/v2/top-headlines?country=eg&category=health&apiKey=${apiKey}');

    var response = await http.get(uri);
    var data= jsonDecode(response.body);
    if(response.statusCode==200){
      return data;
    }else{
      throw Exception('Can not get the article');
    }
  }
}