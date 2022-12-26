import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});

  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  double valrot = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child:
                  /*Transform.scale(
              scale: 2,
              child: Container(color: Colors.red, height: 100, width: 100),
            ),*/
                  /*Transform.translate(
            offset: Offset(100, 100),
            child: Container(color: Colors.red, height: 100, width: 100),
            )*/
                  Transform.rotate(
            angle: 3.14 / 4, // 3.14 > 180 Deg | 3.14/2 > 90 deg
            child: Container(color: Colors.red, height: 200, width: 100),
          )),
        ],
      ),
    );
  }
}
