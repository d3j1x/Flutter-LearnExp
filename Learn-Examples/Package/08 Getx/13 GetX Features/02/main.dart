import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/view/home.dart';
import 'package:smrt_mrkt/view/pagetwo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'GetX Features',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: "/home",
        getPages: [
          GetPage(name: "/home", page: () => Home()),
          GetPage(name: "/pagetwo", page: () => PageTwo())
        ]);
  }
}
