import 'package:ecommerce_smrtapp/core/constant/routes.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/checkemail.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/login.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/signup.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/successsignup.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_smrtapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccesSignUp(),
  AppRoute.checkEmail: (context) => const CheckEmail(),
  // OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
