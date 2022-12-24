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
                      //middleText: "Content a middle text",
                      content: Text("Text Widget"),
                      titleStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      //middleTextStyle: TextStyle(fontSize: 20),
                      //textCancel: "Canceel",
                      cancel: InkWell(
                          onTap: () {
                            print("cancel");
                          },
                          child: Text("Cancel Text Widget")),
                      textConfirm: "Okke",
                      onConfirm: () => print("Nice"),
                      //onCancel: () => print("cancel"),
                    );
                  },
                  child: Text("Show Dialog"),
                ),
              ),
            ])));
  }
}
