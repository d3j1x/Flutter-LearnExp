import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/local/local.dart';
import 'package:smrt_mrkt/local/localecontroller.dart';
import 'package:smrt_mrkt/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyLocaleController());
    return GetMaterialApp(
      title: 'Middelware',
      theme: ThemeData(primarySwatch: Colors.blue),
      locale: Get.deviceLocale,
      translations: MyLocal(),
      //initialRoute: "/",
      getPages: [GetPage(name: "/", page: () => Home())],
    );
  }
}
