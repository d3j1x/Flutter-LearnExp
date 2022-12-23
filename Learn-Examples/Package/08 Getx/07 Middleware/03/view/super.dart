import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/main.dart';

class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Super Page"),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 200, horizontal: 100),
          child: Text("Super")),
    );
  }
}
