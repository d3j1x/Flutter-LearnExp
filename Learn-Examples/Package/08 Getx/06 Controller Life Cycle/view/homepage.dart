import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/utils/mybindings.dart';
import 'package:smrt_mrkt/view/screenone.dart';
import 'package:smrt_mrkt/view/screentwo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //Get.to(() => ScreenOne());
                      Get.to(() => ScreenOne(), binding: MyBindings());
                    },
                    child: Text("Go To Screen One"),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                      onPressed: () {
                        //Get.to(() => ScreenTwo());
                        Get.to(() => ScreenTwo(), binding: MyBindings());
                      },
                      child: Text("Go To Screen Two"))
                ])));
  }
}
