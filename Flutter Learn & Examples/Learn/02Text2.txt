import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text("Smrt Mrkt",
          style: TextStyle(
              fontSize: 50,
              color: Color(0xFF021aee),
              letterSpacing: 10.0,
              wordSpacing: 10.0,
              decoration: TextDecoration.underline)),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Row(
        children: [
          Text("200\$",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.green[600],
                  decoration: TextDecoration.lineThrough)),
          Text(
            "100\$",
            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                decoration: TextDecoration.underline),
          )
        ],
      ),
    );
  }
}
