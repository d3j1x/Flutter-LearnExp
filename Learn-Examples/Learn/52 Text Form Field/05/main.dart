import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Smrt Mrket")),
        body: Column(children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              
              onChanged: (text) {
                setState(() {
                  value = text;
                });
              },
              onTap: () {
                print("Smrt Mrket");
              },
              onEditingComplete: () {
                print("..Complete");
              },
              
            ),
          ),
          Text("value: $value"),
        ]));
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

