import 'package:flutter/material.dart';
import 'package:kaahani_new/FollowersPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Kahanee",
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
        ),
        home: KaahaniLayout());
  }
}
