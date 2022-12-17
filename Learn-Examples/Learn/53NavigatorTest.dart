import 'package:first_flutter_project/one.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test . dart")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() {
        Navigator.of(context).pushNamed("one");
  //  .push(MaterialPageRoute(builder: (context) {
                    //  return One();
                  }),
                  child: Text("Go To Page One . dart")),
              ElevatedButton(
                  onPressed: (() {
        Navigator.of(context).pushNamed("two");
  //  .push(MaterialPageRoute(builder: (context) {
                    //  return Two();
                  }),
                  child: Text("Go To Page Two . dart")),
            ]),
      ),
    );
  }
}

