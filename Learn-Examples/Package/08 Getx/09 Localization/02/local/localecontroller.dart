import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class MyLocaleController extends GetxController {
  void changeLang(String codelang) {
    Locale locale = Locale(codelang);
    Get.updateLocale(locale);
  }
}
