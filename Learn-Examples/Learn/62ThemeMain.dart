import 'package:first_flutter_project/home/life.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Life(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.black,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
          headline4: TextStyle(
            fontSize: 30,
            color: Colors.green,
            backgroundColor: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

