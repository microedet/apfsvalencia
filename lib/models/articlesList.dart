 import 'dart:convert';

import 'package:apfsvalencia/models/models.dart';

class ArticlesList {
  final List<ArticleBlogResponse> articleBlogresponse;

  ArticlesList(this.articleBlogresponse);

  factory ArticlesList.fromJson(List<dynamic> parsedJson) {
    List<ArticleBlogResponse> articleBlogResponse = <ArticleBlogResponse>[];
    articleBlogResponse =
        parsedJson.map((i) => ArticleBlogResponse.fromJson(i)).toList();

    return ArticlesList( articleBlogResponse);
  }
}
 