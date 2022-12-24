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
        title: 'GetX Features',
        //theme: ThemeData.light(),
        theme: Themes.customLightTheme,
        initialRoute: "/home",
        getPages: [
          GetPage(name: "/home", page: () => Home()),
        ]);
  }
}

class Themes {
  static ThemeData customDarkTheme =
      ThemeData.dark().copyWith(appBarTheme: AppBarTheme(color: Colors.green));
  static ThemeData customLightTheme =
      ThemeData.light().copyWith(appBarTheme: AppBarTheme(color: Colors.green));
}
