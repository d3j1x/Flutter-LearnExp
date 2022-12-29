import 'package:ecommerce_smrtapp/core/localization/changelocal.dart';
import 'package:ecommerce_smrtapp/core/localization/translation.dart';
import 'package:ecommerce_smrtapp/core/services/services.dart';
import 'package:ecommerce_smrtapp/routes.dart';
//import 'package:ecommerce_smrtapp/test.dart';
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
      theme: controller.appTheme,
      home: const Language(),
      //home: const Test(),
      routes: routes,
    );
  }
}
