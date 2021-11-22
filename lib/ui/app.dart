import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'pages/chat.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(
              title: 'LogIn',
            ),
        '/register': (context) => const RegisterPage(
              title: 'Registro',
            ),
        '/home': (context) => const HomePage(
              title: 'Pagina de Post',
            ),
        '/chat': (context) => const ChatPage(
              title: 'Chat',
            ),
      },
    );
  }
}
