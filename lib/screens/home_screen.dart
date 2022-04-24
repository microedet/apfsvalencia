import 'package:apfsvalencia/widgets/widgest.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('APFS VALENCIA'),
      ),
      drawer: SideMenu(),
      body: const Center(
         child: Text  ('HomeScreen'),
      ),
    );
  }
}