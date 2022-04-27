import 'package:apfsvalencia/widgets/widgest.dart';
import 'package:flutter/material.dart';

class DetailBlogScreen extends StatelessWidget {
  const DetailBlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Cambiar por una instacion de noticia
    final String article =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-article';

    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Color.fromRGBO(34, 80, 53, 1),
        centerTitle: true,
        title: const Text(''),
      ), */
      body: CustomScrollView(
        slivers: [_CustomAppBar()],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromRGBO(34, 80, 53, 1),
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: EdgeInsets.all(0),
          title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Colors.black12,
            child: Text(
              'Titulo noticia',
              style: TextStyle(fontSize: 16),
            ),
          ),
          background: FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://via.placeholder.com/500x300'),
            fit: BoxFit.cover,
          )),
    );
  }
}
