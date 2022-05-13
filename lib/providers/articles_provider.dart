import 'package:apfsvalencia/models/articlesList.dart';
import 'package:apfsvalencia/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ArticlesProvider extends ChangeNotifier {
  String _baseUrl = 'apsvalencia.pythonanywhere.com';

  List<ArticlesList> articleList = [];

  ArticlesProvider() {
    print('ArticlesProvider Inicializado');

    this.getOnDisplayArticles();
  }

  getOnDisplayArticles() async {
    var url = Uri.https(_baseUrl, '/api/blog', {});
    final response = await http.get(
      url,
    );

    //if (response.statusCode == 200) {
    final article = ArticlesList.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    print(article.articleBlogresponse[0].author);
    //final articlesResponse =
    //    ArticlesList.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    //print(articlesResponse.articleBlogresponse);
    //return articlesResponse.articleBlogresponse;

    notifyListeners();
    //} else {
    //  throw Exception('No es posible cargar el blog');
    //}
  }
}
