import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void _login() {
    setState(() {
      Navigator.pushNamed(context, '/login');
    });
  }

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
          const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sean bienvenidos a la comunidad Link Videogame, el lugar perfecto para expresar tu opinión sobre los últimos títulos y enterarte de todas las novedades del mundo del gaming.',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
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
            onPressed: _login,
            child: const Text('Ingresar'),
          ),
          const Center(
            child: Padding(
                padding: EdgeInsets.all(20.0), child: Icon(Icons.facebook)),
          ),
        ],
      ),
      backgroundColor: Colors.orange[600],
    );
  }
}
