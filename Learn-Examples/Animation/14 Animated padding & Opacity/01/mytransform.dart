import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  double db = 10;
  double op = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Center(
              child: Container(
                  color: Colors.red,
                  child: AnimatedPadding(
                      padding: EdgeInsets.all(db),
                      duration: Duration(seconds: 1),
                      child: Text("Smrt Mrkt"),
                      curve: Curves.linear))),
          Center(
              child: AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: op,
                  child: Container(
                      color: Colors.green,
                      child: AnimatedPadding(
                          padding: EdgeInsets.all(db),
                          duration: Duration(seconds: 1),
                          child: Text("Smrt Mrkt"),
                          curve: Curves.linear)))),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  db = 30;
                  op = 0.5;
                });
              },
              child: const Text("Trigger Animate"))
        ]));
  }
}
