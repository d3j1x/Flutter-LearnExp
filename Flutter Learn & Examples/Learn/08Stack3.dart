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
      body: Container(
        width: 400,
        height: 400,
        color: Colors.black,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              width: 200,
              height: 200,
              top: 300,
              left: 10,
              //right: 10,
              //bottom: 100,
              child: Container(
                color: Colors.red,
                child: Text("Position One"),
              ),
            ),
            Positioned(
              width: 200,
              height: 200,
              top: 50,
              left: 10,
              //right: 10,
              //bottom: 100,
              child: Container(
                color: Colors.green,
                child: Text("Position Two"),
              ),
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

