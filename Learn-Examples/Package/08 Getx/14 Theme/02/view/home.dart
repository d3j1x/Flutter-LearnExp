import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "How Are you",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Center(
                  child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeTheme(Themes.customLightTheme);
                  } else {
                    Get.changeTheme(Themes.customDarkTheme);
                  }
                },
                child: Text("Change Theme"),
              ))
            ])));
  }
}
