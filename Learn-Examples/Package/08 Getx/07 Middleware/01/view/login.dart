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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 200, horizontal: 100),
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            sharepref!.setString("id", "1");
            Get.offNamed("home");
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
