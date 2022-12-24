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
  PageController pc = PageController();

  @override
  void initState() {
    pc = new PageController(initialPage: 1, viewportFraction: 0.7);
    super.initState();
  }

  List images = [
    {"url": "images/1.png"},
    {"url": "images/2.jpg"},
    {"url": "images/3.jpg"},
    {"url": "images/4.jpg"}
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Smrt Mrket")),
        body: Column(
          children: [
            Container(
              height: 300,
              child: PageView.builder(
                controller: pc,
                itemCount: images.length,
                itemBuilder: ((context, i) {
                  return Image.asset(
                    images[i]['url'],
                    fit: BoxFit.fill,
                  );
                }),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  pc.animateToPage(2,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                },
                child: Text("Go To Page N 3"))
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

