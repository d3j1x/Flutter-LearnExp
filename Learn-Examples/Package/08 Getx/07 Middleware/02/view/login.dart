import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(100),
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  sharepref!.setString("role", "user");
                  Get.offNamed("home");
                },
                child: Text("Login User"),
              )),
          Container(
            margin: EdgeInsets.all(100),
            child: MaterialButton(
              color: Colors.green,
              onPressed: () {
                sharepref!.setString("role", "admin");
                Get.offNamed("admin");
              },
              child: Text("Login Admin"),
            ),
          )
        ]));
  }
}
