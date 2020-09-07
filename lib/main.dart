import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_registration/screens/login_screen.dart';
import 'package:user_registration/screens/registration_screen.dart';
import 'package:user_registration/screens/user_page.dart';
import 'package:user_registration/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        UserPage.id: (context) => UserPage(),
      },
    );
  }
}
