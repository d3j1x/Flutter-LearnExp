import 'package:ecommerce_smrtapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goToVerifyCodeSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goToVerifyCodeSignUp() {
    Get.offNamed(AppRoute.verifyCodeSignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
