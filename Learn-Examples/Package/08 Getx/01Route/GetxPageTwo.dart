import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page Two"),
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
                    Get.back();
                  },
                  child: Text("Back"),
                ),
              ),
            ])));
  }
}

