import 'package:apfsvalencia/widgets/widgest.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
   
  const BlogScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [

         Card_Blog()
        ],
         
      ),
    );
  }
}