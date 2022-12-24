import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:smrt_mrkt/main.dart';

class MyLocaleController extends GetxController {
  Locale initialLang = sharepref!.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(sharepref!.getString("lang")!);
  void changeLang(String codelang) {
    Locale locale = Locale(codelang);
    sharepref!.setString("lang", codelang);
    Get.updateLocale(locale);
  }
}
