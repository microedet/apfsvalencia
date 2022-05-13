import 'dart:convert';

class Categories {
  int categories;

  Categories({required this.categories});

  factory Categories.fromJson(Map<String, dynamic> json) {
    //var categoriesFromJson = json['categories'] as List;
    //List<dynamic> categoriesList = categoriesFromJson;
    //List<dynamic> categoriesList = categoriesFromJson;
    return Categories(categories: json['']);
  }
}
