import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var _valslider = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Page")),
      body: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            activeColor: Colors.red,
            inactiveColor: Colors.blueGrey,
            //value: 90.0,
            value: _valslider,
            
            onChanged: (val) {
              setState(() {
                _valslider = val;
              });
            },
          ),
        ],
      ),
    );
  }
}

