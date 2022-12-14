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
      body: ListView(
          //scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(20),
          //physics: NeverScrollableScrollPhysics(),
          reverse: true,
          children: [
            Text("Smrt Mrket", style: TextStyle(fontSize: 50)),
            Container(
                child: Text("Container One", style: TextStyle(fontSize: 50)),
                color: Colors.blue,
                height: 400),
            Container(
                child: Text("Container Two", style: TextStyle(fontSize: 50)),
                color: Colors.red,
                height: 400),
            Container(
                child: Text("Container Three", style: TextStyle(fontSize: 50)),
                color: Colors.green,
                height: 300),
          ]),
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

