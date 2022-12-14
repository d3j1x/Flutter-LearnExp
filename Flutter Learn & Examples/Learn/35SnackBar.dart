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
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              var snackBar = SnackBar(
                onVisible: () {
                  print("Show SnackBar");
                },
                action: SnackBarAction(
                  textColor: Colors.black,
                  label: "CLOSE",
                  onPressed: () {
                    print("close");
                  },
                ),
                //behavior: SnackBarBehavior.fixed,
                behavior: SnackBarBehavior.floating,
                content: Text("Hi I'am SnackBar"),
                duration: Duration(seconds: 5),
                backgroundColor: Colors.red,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 100),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Click to Display a SnackBar'),
          ),
        ));
  }
}

/*
class _TestState extends State<Test> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('Hi, I am a SnackBar!'),
              backgroundColor: (Colors.black12),
              action: SnackBarAction(
                label: 'dismiss',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text(
            'Click to Display a SnackBar',
          ),
        ),
      ),
    );
  }
}
*/

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

