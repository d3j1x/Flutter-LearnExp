import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/services/settingsservices.dart';
import 'package:smrt_mrkt/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;

  await initialServices();

  runApp(MyApp());
}

Future initialServices() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Middelware',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      getPages: [GetPage(name: "/", page: () => Home())],
    );
  }
}
