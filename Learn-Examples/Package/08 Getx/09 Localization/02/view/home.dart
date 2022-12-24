import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/local/localecontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controllerLang.changeLang("ar");
                },
                child: Text("2".tr),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controllerLang.changeLang("en");
                },
                child: Text("3".tr),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
