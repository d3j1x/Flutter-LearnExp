import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State<Test> createState() => _TestState();
}




class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                child: Text("Container One"),
                color: Colors.red,
              ),
              Container(
                child: Text("Container Two"),
                color: Colors.blue,
              ),
              Container(
                child: Text("Container Three"),
                color: Colors.white,
              ),
              Container(
                child: Text("Container Four"),
                color: Colors.green,
              ),
              Container(
                child: Text("Container Five"),
                color: Colors.grey,
              ),
            ],
          )),
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

