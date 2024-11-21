import 'package:app/screens/Login.dart';
import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wather App",
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
