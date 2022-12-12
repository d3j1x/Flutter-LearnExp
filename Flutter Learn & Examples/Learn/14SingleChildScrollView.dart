import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,   // scrollDirection: Axis.horizontal,
        child: Column(       // child: Row(            
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 200,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              width: 100,
              height: 200,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.green,
              width: 100,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text("\$mrt Mrk\€t",
          style: TextStyle(
              fontSize: 50,
              color: Color(0xFF021aee),
              letterSpacing: 10.0,
              wordSpacing: 10.0,
              decoration: TextDecoration.underline,
              backgroundColor: Colors.lightGreen,
              shadows: [
                Shadow(
                    color: Colors.red,
                    blurRadius: 1.0,
                    offset: Offset(50.0, 50.0)),
              ])),
    );
  }
}

