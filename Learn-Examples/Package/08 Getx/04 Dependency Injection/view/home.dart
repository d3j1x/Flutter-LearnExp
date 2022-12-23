import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/controller/homecontroller.dart';
import 'package:smrt_mrkt/view/pageone.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final HomeController controller = Get.put(HomeController(), permanent: true);

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
              IconButton(
                  onPressed: () {
                    Get.to(() => PageOne());
                  },
                  icon: Icon(
                    Icons.home_filled,
                    size: 30,
                  ))
            ])));
  }
}
