import 'dart:convert';
import 'package:http/http.dart';
import 'package:newsdemo/models/newsmodel.dart';

class News {
  List<ArticleModel> datatobesavedin = [];

  Future<void> getNews() async {
    var response = await get(Uri.parse('https://api.first.org/data/v1/news'));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['id'] != null) {
          ArticleModel articleModel = ArticleModel(
            id: element['id'],
            title: element['title'],
            summary: element['summary'],
            link: element['link'],
            published: element['published'],
          );
          datatobesavedin.add(articleModel);
        }
      });
    }
  }
}
