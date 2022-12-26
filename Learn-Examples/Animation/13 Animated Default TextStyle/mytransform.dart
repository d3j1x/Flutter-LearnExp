import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  @override
  double fs = 20;
  Color co = Colors.red;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Center(
            child: AnimatedDefaultTextStyle(
              child: Text("Smrt Mrkt"),
              style: TextStyle(fontSize: fs, color: co),
              duration: Duration(seconds: 1),
              curve: Curves.easeInBack,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  fs = 30;
                  co = Colors.green;
                });
              },
              child: Text("Trigger Animate"))
        ]));
  }
}
