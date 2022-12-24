import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialog',
      theme: ThemeData(primarySwatch: Colors.blue),
      //initialRoute: "/",
      getPages: [GetPage(name: "/", page: () => Home())],
    );
  }
}
