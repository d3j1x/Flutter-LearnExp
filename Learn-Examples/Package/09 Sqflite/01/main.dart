import 'package:flutter/material.dart';
import 'package:smrt_mrkt/view/home.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sqflite',
      home: Home(),
    );
  }
}
