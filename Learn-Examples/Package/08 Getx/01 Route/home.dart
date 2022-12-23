import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/view/pagethree.dart';
import 'package:smrt_mrkt/view/pagetwo.dart';

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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    //Get.to(PageOne());
                    Get.toNamed("pageone");
                  },
                  child: Text("Page One"),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(PageTwo());
                    //Get.off(PageOne());
                    //Get.offAll(PageOne());
                    //Get.offNamed("pagetwo");
                  },
                  child: Text("Page Two"),
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(PageThree());
                },
                child: Text("Page Three"),
              ))
            ])));
  }
}

