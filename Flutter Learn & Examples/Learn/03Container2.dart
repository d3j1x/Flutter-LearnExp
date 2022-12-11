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
        //color: Colors.red,
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.all(20),
        //margin: EdgeInsets.only(top:10, lef:10),
        //margin: EdgeInsets.symetric(vertical:10, horizontal:20),
        //margin: EdgeInsets.fromLTRB(10,20,30,40),
        //padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.green, width: 10),
          //border: Border(left: BorderSide(color: Colors.green, width: 10))),
          //border: Border(
          //    left: BorderSide(color: Colors.green, width: 10),
          //    right: BorderSide(color: Colors.green, width: 10)),
          borderRadius: BorderRadius.circular(20),
          //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
          //borderRadius: BorderRadius.all(Radius.circular(30)),
          //borderRadius: BorderRadius.horizontal(left:Radius.circular(40),right:Radius.circular(60)),
          ////borderRadius: BorderRadius.vertical(top:Radius.circular(40),bottom:Radius.circular(60)),
        ),
        child: Text("How are you",
            style: TextStyle(fontSize: 30, backgroundColor: Colors.blue)),
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




