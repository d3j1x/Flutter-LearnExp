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
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Smrt Mrket"),
              bottom: TabBar(
                  indicatorColor: Colors.red,
                  indicatorWeight: 10,
                  indicatorPadding: EdgeInsets.all(5),
                  labelColor: Colors.yellow,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  isScrollable: true,
                  onTap: (index) {
                    print(index);
                  },
                  tabs: [
                    Tab(
                      child: Text("Widget1"),
                      icon: Icon(Icons.onetwothree),
                    ),
                    Tab(
                      child: Text("Widget2"),
                      icon: Icon(Icons.account_circle_rounded),
                    ),
                    Tab(
                      child: Text("Widget3"),
                      icon: Icon(Icons.add_comment),
                    ),
                  ]),
            ),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.green,
                  child: Column(children: [Text("Smrt"), Text("Mrket")]),
                ),
                Text("Smrt"),
                Text("Mrket")
              ],
            )));
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

