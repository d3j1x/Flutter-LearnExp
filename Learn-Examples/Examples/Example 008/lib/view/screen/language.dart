import 'package:ecommerce_smrtapp/core/constant/routes.dart';
import 'package:ecommerce_smrtapp/core/localization/changelocal.dart';
import 'package:ecommerce_smrtapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1".tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 40),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changelang("ar");
                    Get.offNamed(AppRoute.onBoarding);
                  }),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changelang("en");
                    Get.offNamed(AppRoute.onBoarding);
                  }),
            ],
          )),
    );
  }
}
