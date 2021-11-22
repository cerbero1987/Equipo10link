import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void _signin() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Apellido',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Re-Contraseña',
                ),
              ),
            ),
          ),
          Center(
            child: MaterialButton(
              child: const Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _signin,
          tooltip: 'Registrar',
          child: const Icon(Icons.add)),
    );
  }
}
