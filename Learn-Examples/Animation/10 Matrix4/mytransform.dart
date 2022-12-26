import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});

  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  double valrot = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Transform(
              transform: Matrix4.rotationZ(3.14 / 4)
                ..scale(2.0)
                ..translate(50.0),
              child: Container(color: Colors.red, height: 200, width: 100),
            )),
          ],
        ),
      )),
    );
  }
}
