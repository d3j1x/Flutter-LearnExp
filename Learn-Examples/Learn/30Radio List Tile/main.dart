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
  String country = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Text("Choose Country", style: TextStyle(fontSize: 30)),
              RadioListTile(
                  title: Text("Country USA"),
                  subtitle: Text('America'),
                  value: "usa",
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val!;
                    });
                  }),
              RadioListTile(
                  activeColor: Colors.red,
                  controlAffinity: ListTileControlAffinity.trailing,
                  selected: country == "uae" ? true : false,
                  secondary: Icon(Icons.flag),
                  title: Text("Country UAE"),
                  subtitle: Text('Emarate'),
                  value: "uae",
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val!;
                    });
                  })
            ])));
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

