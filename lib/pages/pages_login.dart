import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingrese'),
      ),
      body: Form(
        //TO DO: implementar key
        child: Column(
          children: <Widget>[
            TextFormField(
              //Campo de Email
              validator: (input) {
                if (input.isEmpty) {
                  return 'Por favor escriba un email valido';
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              //Campo de Contraseña
              validator: (input) {
                if (input.length < 7) {
                  return 'la contraseña debe contener al menos 7 caracteres';
                }
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }

  void Ingresar() {
    //Metodo para evento de ingreso
    final formState = _formKey.currentState;
    if (formState.validate()) {
      //TO DO: Loguear con FireBase
    }
  }
}
