import 'package:apfsvalencia/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'APFS VALENCIA',
        initialRoute: 'home',
        routes: {
          'login': (_) => LoginScreen(),
          'home': (_) => HomeScreen(),
          'detailblog': (_) => DetailBlogScreen(),
        },
        //cambiar colores
        theme: ThemeData.light()
            .copyWith(scaffoldBackgroundColor: Colors.grey[300],
             
            ));
        
  }
}
