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
                  Get.bottomSheet(
                      Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          height: 200,
                          child: Text("BottomSheet")),
                      //backgroundColor: , isDimissible: true
                      enterBottomSheetDuration: Duration(seconds: 5),
                      exitBottomSheetDuration: Duration(seconds: 2),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20)));
                },
                child: Text("Show BottomSheet"),
              ))
            ])));
  }
}
