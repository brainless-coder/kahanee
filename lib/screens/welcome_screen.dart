import 'package:flutter/material.dart';
import 'package:user_registration/components/rounded_button.dart';
import 'package:user_registration/screens/login_screen.dart';
import 'package:user_registration/screens/registration_screen.dart';
import 'package:user_registration/screens/user_page.dart';
import 'package:user_registration/components/google_signin.dart';
import 'package:user_registration/components/social_signin_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset('images/kahanee.jpg'),
                        height: 80.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Kahanee',
                      style: TextStyle(
                        fontSize: 55.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 45.0,
              ),
              RoundedButton(
                title: 'Log In',
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              RoundedButton(
                title: 'Register',
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
              SocialSignInButton(
                title: 'Sign in with Google',
                onPressed: () {
                  try {
                    signInWithGoogle().then((result) {
                      if (result != null) {
                        Navigator.pushNamed(context, UserPage.id);
                      }
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
