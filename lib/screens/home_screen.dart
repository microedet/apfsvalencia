import 'package:apfsvalencia/providers/articles_provider.dart';
import 'package:apfsvalencia/widgets/widgest.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articlesProvider = Provider.of<ArticlesProvider>(context);
    print( articlesProvider.articleList.length);
    // int total = articlesProvider.getOnDisplayArticles();
    // print("el total es " + (total).toString());
    // for (var i = 0; i < total; i++) {
    // print("hola" + articlesProvider.ge[i].title);
    // }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(34, 80, 53, 1),
          centerTitle: true,
          title: const Text('APFS VALENCIA'),
        ),
        drawer: const SideMenu(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardBlog(
                listadoPost: [],
              )
            ],
          ),
        ));
  }
}
