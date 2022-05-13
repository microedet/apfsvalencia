// To parse this JSON data, do
//
//     final articlesBlogResponse = articlesBlogResponseFromMap(jsonString);

import 'dart:convert';
import 'models.dart';

class ArticleBlogResponse {
  String title;
  String content;
  String published;
  String image;
  int author;
  String status;

  ArticleBlogResponse(
      {required this.title,
      required this.content,
      required this.published,
      required this.image,
      required this.author,
      required this.status});

  factory ArticleBlogResponse.fromJson(Map<String, dynamic> json) {
    //var list = json['categories'] as List;
    //List<Categories> categorisList = list.map((i) => Categories.fromJson(i)).toList();

    return new ArticleBlogResponse(
        title: json['title'],
        content: json['content'],
        published: json['published'],
        image: json['image'],
        author: json['author'],
        status: json['status']);
  }
}




 
// To parse this JSON data, do
//
//     final articlesBlogResponse = articlesBlogResponseFromMap(jsonString);

/* import 'dart:convert';

class ArticlesBlogResponse {
    ArticlesBlogResponse({
        required this.title,
        required this.content,
        required this.published,
        required this.image,
        required this.author,
        //required this.categories,
        required this.status,
    });

    String title;
    String content;
    String published;
    String image;
    int author;
    //List<dynamic> categories;
    String status;

    //factory ArticlesBlogResponse.fromJson(String str)   => ArticlesBlogResponse.fromMap(json.decode(str));

    //String toJson() => json.encode(toMap());

    factory ArticlesBlogResponse.fromJson(Map<String, dynamic> json) => ArticlesBlogResponse(
        title: json["title"],
        content: json["content"],
        published: (json["published"]),
        image: json["image"],
        author: json["author"],
       // categories: List<dynamic>.from(json["categories"].map((x) => x)),
        //categories: json["categories"],
        status: json["status"],
    );

    Map<String, dynamic> toMap() => {
        "title": title,
        "content": content,
        //"published": published.toIso8601String(),
        "published": published,
        "image": image,
        "author": author,
        //"categories":categories,
        "status": status,
    };
}
 */