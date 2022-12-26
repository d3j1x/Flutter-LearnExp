import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  double t = 0;
  double r = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
            child: Stack(children: <Widget>[
              AnimatedPositioned(
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                  child: Text("Smrt"),
                ),
                duration: Duration(seconds: 1),
                top: t,
                right: r,
              )
            ]),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  t = 100;
                  r = 300;
                });
              },
              child: const Text("Trigger Animate"))
        ]));
  }
}
