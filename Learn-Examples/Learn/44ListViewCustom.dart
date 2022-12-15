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
    List user = ["smrt", "Mrket", "Things"];
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate(
                  childCount: user.length, (context, i) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 300,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Text("${user[i]}"),
            );
          }))),
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

