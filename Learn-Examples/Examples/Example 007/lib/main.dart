import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:ecommerce_smrtapp/core/localization/changelocal.dart';
import 'package:ecommerce_smrtapp/core/localization/translation.dart';
import 'package:ecommerce_smrtapp/core/services/services.dart';
import 'package:ecommerce_smrtapp/routes.dart';
import 'package:ecommerce_smrtapp/test.dart';
import 'package:ecommerce_smrtapp/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Ecomerce SmrtMrkt',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "Teko",
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
          headline2: TextStyle(height: 2, color: AppColor.black, fontSize: 17),
          bodyText1: TextStyle(height: 2, color: AppColor.grey, fontSize: 17),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      //home: const Test(),
      routes: routes,
    );
  }
}
