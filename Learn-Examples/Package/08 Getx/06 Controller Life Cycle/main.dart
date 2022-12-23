import 'package:flutter/material.dart';
import 'package:smrt_mrkt/utils/mybindings.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/view/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      //initialBinding: MyBindings(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        //GetPage(name: "/", page: () => Home(), binding: MyBingdins() ),
      ],
    );
  }
}
