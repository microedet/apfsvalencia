import 'package:apfsvalencia/screens/screens.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Inicio'),
            onTap: () {

            },
          
          ),
          ListTile(
            leading: const Icon(Icons.login_outlined),
            title: const Text('Login'),
            onTap: () {
              Navigator.pushNamed(context,'login');


            },
          
          ),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('HOme'),
            onTap: () {

            },
          
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
