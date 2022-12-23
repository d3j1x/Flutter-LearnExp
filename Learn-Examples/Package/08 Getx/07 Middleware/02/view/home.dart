import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 200, horizontal: 100),
        child: MaterialButton(
          color: Colors.red,
          onPressed: () async {
            sharepref!.clear();
            Get.offAllNamed("/");
          },
          child: Text("Sign Out"),
        ),
      ),
    );
  }
}
