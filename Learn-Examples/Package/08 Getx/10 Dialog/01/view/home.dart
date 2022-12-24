import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("1".tr),
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
                    Get.defaultDialog(
                      title: "Success",
                      middleText: "Content a middle text",
                      titleStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      middleTextStyle: TextStyle(fontSize: 20),
                      textCancel: "Canceel",
                      textConfirm: "Okke",
                      onConfirm: () => print("Nice"),
                      onCancel: () => print("cancel"),
                    );
                  },
                  child: Text("Show Dialog"),
                ),
              ),
            ])));
  }
}
