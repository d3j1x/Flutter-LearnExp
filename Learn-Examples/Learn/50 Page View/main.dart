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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Smrt Mrket")),
        body: Column(
          children: [
            Container(
              height: 300,
              child: PageView(
                //reverse: true,
                scrollDirection: Axis.vertical,
                onPageChanged: (index) {
                  print(index);
                },
                children: [
                  Text("Smrt", style: TextStyle(fontSize: 40)),
                  Text("Mrket", style: TextStyle(fontSize: 40)),
                  Image.asset(
                    "images/sm.jpg",
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
          ],
        ));
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

