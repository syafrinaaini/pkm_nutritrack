import 'package:flutter/material.dart';
import 'package:pkm_nutritrack/view/loginScreen.dart';
import 'package:pkm_nutritrack/view/signUpScreen.dart';
import 'package:pkm_nutritrack/view/start.dart';
import 'package:pkm_nutritrack/view/autoslide.dart';
import 'package:pkm_nutritrack/view/halaman1.dart';
import 'package:pkm_nutritrack/view/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutritrack',
      debugShowCheckedModeBanner: false,
      home: signUpScreen(),
      routes: {
        '/logincreen': (context) => signInScreen(),
        '/signUpScreen': (context) => signUpScreen(),
        '/autoslide_screen': (context) => AutoSlideScreen(),
        '/halaman1': (context) => Halaman1(),
        '/home.dart': (context) => HomePage(),
        '/start.dart': (context) => StartScreen(),
      },
    );
  }
}
