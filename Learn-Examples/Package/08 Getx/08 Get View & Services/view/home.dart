import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/services/settingsservices.dart';

//class Home extends StatelessWidget {
class Home extends GetView<SettingsServices> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // SettingsServices c = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingsServices>(
                builder: (c) => Center(
                      child: Text("${c.counter}"),
                    )),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controller.increase();
                },
                child: Text("counter ++"),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controller.sharedPrefs.clear();
                },
                child: Text("Clear shared Preferences"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
