import 'package:get/get.dart';

class MyLocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "الصفحة الرئيسية",
          "2": "عربي",
          "3": "عربي",
        },
        "en": {
          "1": "homepage",
          "2": "arabic",
          "3": "english",
        },
      };
}
