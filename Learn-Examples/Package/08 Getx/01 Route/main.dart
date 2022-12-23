import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/view/home.dart';
import 'package:smrt_mrkt/view/pageone.dart';
import 'package:smrt_mrkt/view/pagethree.dart';
import 'package:smrt_mrkt/view/pagetwo.dart';

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
      home: Home(),
      getPages: [
        GetPage(name: "/pageone", page: () => PageOne()),
        GetPage(name: "/pagetwo", page: () => PageTwo()),
        GetPage(name: "/pagethree", page: () => PageThree()),
      ]);
  }
}

