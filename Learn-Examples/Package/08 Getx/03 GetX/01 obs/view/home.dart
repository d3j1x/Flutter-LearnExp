import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/controller/homecontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<HomeController>(
                  init: HomeController(),
                  builder: (controller) => Row(
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
                            child: Text("${controller.counter.value}",
                                style: TextStyle(fontSize: 20)),
                          ),
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
                      ))
            ],
          ),
        ));
  }
}
