import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class formularioRegistro extends StatefulWidget {
  const formularioRegistro({Key? key}) : super(key: key);

  @override
  formularioRegistroEstado createState() {
    return formularioRegistroEstado();
  }
}

class formularioRegistroEstado extends State<formularioRegistro> {
  final _formkey = GlobalKey<FormState>();
  bool _checkBoxValue = false;
  void _signin() {
    setState(() {
      Navigator.pop(context);
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
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombres y Apellidos'),
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
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Correo electronico'),
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
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Repetir Contraseña'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingresa datos';
                  }
                },
              ),
            ),
          ),
          Center(
              child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text(
                'Acepto los términos de uso y políticas de privacidad. Autorizo el tratamiento de mis datos personales'),
            value: _checkBoxValue,
            onChanged: (value) {
              setState(() {
                _checkBoxValue = value!;
              });
            },
          )),
          Center(
            child: Container(
              margin: EdgeInsets.all(5.0),
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
                  _signin;
                }
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text('Guardar'),
              )),
        ],
      ),
    );
  }
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.orange[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 650.0,
              alignment: Alignment.center,
              child: formularioRegistro(),
            ),
            Container(
              height: 5.0,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
      backgroundColor: Colors.orange[600],
    );
  }
}
