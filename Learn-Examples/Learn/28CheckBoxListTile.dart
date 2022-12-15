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
  bool usa = false;
  bool tn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Text("Choose Country", style: TextStyle(fontSize: 30)),
              CheckboxListTile(
                  activeColor: Colors.red,
                  contentPadding: EdgeInsets.only(top: 20),
                  title: Text("Country Usa"),
                  subtitle:
                      Text("America", style: TextStyle(color: Colors.red)),
                  secondary: Icon(Icons.flag),
                  isThreeLine: true,
                  selected: usa,
                  value: usa,
                  onChanged: (val) {
                    setState(() {
                      usa = val!;
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.blue,
                  contentPadding: EdgeInsets.only(top: 20),
                  title: Text("Country Tn"),
                  subtitle:
                      Text("Tunisia", style: TextStyle(color: Colors.red)),
                  secondary: Icon(Icons.flag),
                  isThreeLine: true,
                  selected: tn,
                  value: tn,
                  onChanged: (val) {
                    setState(() {
                      tn = val!;
                    });
                  }),
            ])));
  }}

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

