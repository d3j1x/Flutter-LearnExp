import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  @override
  bool showfirst = true;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Center(
              child: AnimatedCrossFade(
            firstChild: Container(
              child: Text("One"),
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            secondChild: Container(
              child: Text("Two"),
              color: Colors.green,
              height: 110,
              width: 110,
            ),
            crossFadeState: showfirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 600),
            firstCurve: Curves.easeIn,
            sizeCurve: Curves.easeInQuad,
          )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  showfirst = !showfirst;
                });
              },
              child: Text("Trigger Animate"))
        ]));
  }
}
