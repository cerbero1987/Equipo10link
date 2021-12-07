import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import 'package:red_social/domain/controller/authentication_controller.dart';
import 'package:red_social/domain/controller/chat_controller.dart';
import 'package:red_social/domain/controller/chats_controller.dart';
import 'package:red_social/domain/controller/firestore_controller.dart';

import 'firebase_central.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'pages/chat.dart';
import 'pages/intro.dart';

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Demo - MisionTIC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            logError("error ${snapshot.error}");
            return const Wrong();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Get.put(FirebaseController());
            Get.put(AuthenticationController());
            Get.put(ChatController());
            Get.put(ChatsController());
            return const FirebaseCentral();
          }
          return const Loading();
        },
      )),
    );
  }
}

class Wrong extends StatelessWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(
              title: 'Bienvenida',
            ),
        '/login': (context) => const LoginPage(
              title: 'Login',
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

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(
              title: 'Bienvenida',
            ),
        '/login': (context) => const LoginPage(
              title: 'Login',
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
}*/
