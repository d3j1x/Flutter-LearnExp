import 'package:first_flutter_project/home/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_project/auth/login.dart';
import 'auth/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.black,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => Signup(),
        "homepage": (context) => HomePage(),
      },
    );
  }
}

