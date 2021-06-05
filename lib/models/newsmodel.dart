import 'package:flutter/cupertino.dart';

class ArticleModel extends StatelessWidget {
  const ArticleModel({required Key key}): super(key: key);
  int id;
  String title;
  String summary;
  String link;
  String published;

  ArticleModel({this.id, this.title, this.summary, this.link, this.published});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
