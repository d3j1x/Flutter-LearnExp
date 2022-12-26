import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  double lf1 = 10;
  double hi1 = 300;
  double pt1 = 100;
  double fs = 16;
  Color c1 = Colors.red;
  Color cf1 = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Stack(
            children: <Widget>[
              Container(width: double.infinity, height: 500),
              AnimatedPositioned(
                  left: lf1,
                  bottom: 0,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    color: c1,
                    height: hi1,
                    width: 75,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.only(top: pt1),
                      child: Container(
                        color: Colors.black12,
                        child: Column(
                          children: <Widget>[
                            AnimatedDefaultTextStyle(
                                child: Text("PHP"),
                                style: TextStyle(fontSize: fs, color: cf1),
                                duration: Duration(seconds: 1))
                          ],
                        ),
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 1))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      lf1 = 100;
                      hi1 = 250;
                      pt1 = 100;
                      fs = 30;
                      c1 = Colors.blue;
                      cf1 = Colors.yellow;
                    });
                  },
                  child: Text("Start")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      lf1 = 10;
                      hi1 = 300;
                      pt1 = 100;
                      fs = 16;
                      c1 = Colors.red;
                      cf1 = Colors.blue;
                    });
                  },
                  child: Text("End"))
            ],
          )
        ]));
  }
}
