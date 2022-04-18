import 'package:apfsvalencia/interfaces/input_decorations.dart';
import 'package:apfsvalencia/widgets/widgest.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: SingleChildScrollView(
              child: Column(children: [
        //bloque para dejar espacio arriba de la pantalla
        const SizedBox(height: 250),
        CardContainer(
            //columna para poner widget unos debajos de otros
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Iniciar Sesión',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 30,
            ),
            const _IniciarSesionForm(),
          ],
        )),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Crea una nueva cuenta',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
         const SizedBox(
          height: 50,
        ),
      ],
      ),
      ),
      ),
    );
  }
}

class _IniciarSesionForm extends StatelessWidget {
  const _IniciarSesionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
            child: Column(
      children: [
        TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.name,
          decoration: InputDecorations.authInputDecoration(
              hintText: 'Usuario',
              labelText: 'Introducir Usuario',
              prefixIcon: Icons.people_sharp),
        ),
        SizedBox(height: 30),
        TextFormField(
          autocorrect: false,
          obscureText: true,
          keyboardType: TextInputType.name,
          decoration: InputDecorations.authInputDecoration(
              hintText: '*****',
              labelText: 'Contraseña',
              prefixIcon: Icons.lock_outline),
        ),
        SizedBox(height: 30),
        MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.green,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text('ingresar',
              style: TextStyle(color: Colors.white)),
            ),
            onPressed: () {
              //TODO:Login Form
            }
            )
      ],
    )));
  }
}
