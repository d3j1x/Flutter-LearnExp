import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/controller/homecontroller.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page One"),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: GetBuilder<HomeController>(
                    init: HomeController(),
                    builder: (controller) => Text(
                          "${controller.counter}",
                          style: TextStyle(fontSize: 40),
                        )),
              )
            ])));
  }
}
