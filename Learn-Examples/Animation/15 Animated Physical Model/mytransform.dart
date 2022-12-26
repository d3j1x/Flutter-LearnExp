import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  double he = 300;
  double wi = 300;
  BoxShape sp = BoxShape.rectangle;
  double el = 0;
  Color cl = Colors.red;
  Color sh = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Center(
              child: AnimatedPhysicalModel(
                  child: Container(
                    child: Text("Smrt"),
                    height: he,
                    width: wi,
                  ),
                  shape: sp,
                  elevation: el,
                  color: cl,
                  shadowColor: sh,
                  duration: Duration(seconds: 1))),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  sp = BoxShape.circle;
                  el = 40;
                  cl = Colors.green;
                  sh = Colors.blue;
                });
              },
              child: const Text("Trigger Animate"))
        ]));
  }
}
