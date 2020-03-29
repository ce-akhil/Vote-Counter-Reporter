import 'package:flutter/material.dart';
import 'package:vcr/login.dart';
import 'package:vcr/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vote Counter and Reporter',
      theme: themeData,
      home: LoginPage()
    );
  }
}
