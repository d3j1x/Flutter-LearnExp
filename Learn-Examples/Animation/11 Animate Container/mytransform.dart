import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});

  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  double myheight = 200;
  double mywidth = 200;
  Color mycolor = Colors.red;
  double myradius = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceIn,
              height: myheight,
              width: mywidth,
              decoration: BoxDecoration(
                  color: mycolor,
                  borderRadius: BorderRadius.circular(myradius)),
              child: Text("Animate Container"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  mywidth = 300;
                  myheight = 300;
                  mycolor = Colors.green;
                  myradius = 300;
                });
              },
              child: Text("Trigger Animate"))
        ],
      ),
    );
  }
}
