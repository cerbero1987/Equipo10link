import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class formulario extends StatefulWidget {
  const formulario({Key? key}) : super(key: key);

  @override
  formularioEstado createState() {
    return formularioEstado();
  }
}

class formularioEstado extends State<formulario> {
  final _formkey = GlobalKey<FormState>();

  void _login() {
    setState(() {
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'usuario'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingresa datos';
                  }
                },
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Contraseña'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingresa datos';
                  }
                },
              ),
            ),
          ),
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Procesando Datos')));
                  _login; //deberia ir a login
                }
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text('Ingresar'),
              )),
        ],
      ),
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.orange[600],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(""),
          Center(
            child: Image.network('https://i.imgur.com/bBqnymK.png'),
          ),
          formulario(),
          Center(
            child: MaterialButton(
              child: const Text('¿Nuevo usuario? registrate aquí.'),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange[600],
    );
  }
}
