import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smrt_mrkt/local/local.dart';
import 'package:smrt_mrkt/local/localecontroller.dart';
import 'package:smrt_mrkt/view/home.dart';

SharedPreferences? sharepref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  sharepref = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      title: 'Middelware',
      theme: ThemeData(primarySwatch: Colors.blue),
      locale: controller.initialLang,
      translations: MyLocal(),
      //initialRoute: "/",
      getPages: [GetPage(name: "/", page: () => Home())],
    );
  }
}
