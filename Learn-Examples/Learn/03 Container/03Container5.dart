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
        width: double.infinity,
        //width: 200,
        height: 100,
        margin: EdgeInsets.all(20),
        //margin: EdgeInsets.only(top: 100),
        //alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.red, boxShadow: [
          BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(-10, 10)),
        ]),
        child: Text("Smrt Mrket",
            textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
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


