import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                  child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("pagetwo");
                },
                child: Text("Go To Page Two"),
              ))
            ])));
  }
}
