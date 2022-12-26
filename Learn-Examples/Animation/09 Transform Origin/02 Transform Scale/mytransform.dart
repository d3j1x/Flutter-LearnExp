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
                child: Transform.scale(
              scale: valrot,
              origin: Offset(0, 100),
              child: Container(color: Colors.red, height: 200, width: 100),
            )),
            Center(
              child: Slider(
                value: valrot,
                onChanged: (val) {
                  setState(() {
                    valrot = val;
                  });
                },
                min: 0,
                max: 3,
              ),
            ),
            Text("${valrot}")
          ],
        ),
      )),
    );
  }
}
