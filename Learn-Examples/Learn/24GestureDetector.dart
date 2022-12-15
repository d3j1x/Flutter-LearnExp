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
      body: Center(
        child: GestureDetector(
          //hint Ctrl + Space   =>Many Functions
          child: Container(
              color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text("Add")),
          onTap: () {
            print("Smrt Mrket ..");
          },
          onTapUp: (tap) {
            print("Smrt UP ..");
          },
          onTapDown: (tap) {
            print("Smrt Down ..");
          },
          onTapCancel: () {
            print("Smrt Cancel ..");
          },
          onLongPress: () {
            print("Smrt LongPress ..");
          },
          onLongPressStart: (press) {   //OnLongPressEnd(){},
            print("Smrt LongPress Start ..");
          },
          onDoubleTap: () {
            print("Smrt DoubleTap ..");
          },
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

