import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/controller/pagetwo_controller.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    PageTwoController controller = Get.put(PageTwoController());
    return Scaffold(
      appBar: AppBar(title: const Text("Page Two")),
      body: Column(
        children: [
          Text("${controller.name}"),
          Text("${controller.age}"),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Get.toNamed("home");
              },
              child: Text("Go To Home"),
            ),
          )
        ],
      ),
    );
  }
}
