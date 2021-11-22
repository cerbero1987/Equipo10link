import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _login() {
    setState(() {
      Navigator.pushNamed(context, '/home');
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
          const Text(""),
          Center(
            child: Image.network(
                'https://cdn0.iconfinder.com/data/icons/brands-flat-2/192/windows-social-network-brand-logo-128.png'),
          ),
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
                  labelText: 'Contraseña',
                ),
              ),
            ),
          ),
          Center(
            child: MaterialButton(
              child: const Text('Registrar'),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          ),
          Center(
            child: MaterialButton(
              child: const Text('Chat'),
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _login, tooltip: 'LogIn', child: const Icon(Icons.login)),
    );
  }
}
