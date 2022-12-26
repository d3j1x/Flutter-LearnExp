import 'package:flutter/material.dart';
import 'package:first_flutter_project/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "login": (context) => Login(),
      },
    );
  }
}




