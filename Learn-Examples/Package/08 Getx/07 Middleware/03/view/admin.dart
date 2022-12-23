import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/main.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 200, horizontal: 100),
        child: MaterialButton(
          color: Colors.black,
          textColor: Colors.red,
          onPressed: () async {
            sharepref!.clear();
            Get.offAllNamed("/");
          },
          child: Text("Sign Out"),
        ),
      ),
    );
  }
}
