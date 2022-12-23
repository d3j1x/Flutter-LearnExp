import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/controller/homecontroller.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: IconButton(
                        onPressed: () {
                          controller.increment();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30,
                        )),
                  ),
                  Center(
                      child: GetBuilder<HomeController>(
                    builder: (controller) => Text("${controller.counter}",
                        style: TextStyle(fontSize: 20)),
                  )),
                  Container(
                    child: IconButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 30,
                        )),
                  )
                ],
              ),
            ])));
  }
}
