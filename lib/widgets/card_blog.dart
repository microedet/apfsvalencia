import 'package:apfsvalencia/providers/articles_provider.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardBlog extends StatelessWidget {
  final List<ArticlesProvider> listadoPost;

  const CardBlog({Key? key, required this.listadoPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.50,
      child: Swiper(
        itemCount: listadoPost.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: (_, int index) {
          //esta variable es para calcular la cantidad de post en el blog
          //final post = articles[index];
          print(listadoPost);

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detailblog',
                arguments: 'detail-article'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
