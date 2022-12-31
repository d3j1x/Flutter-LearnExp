import 'package:ecommerce_smrtapp/core/constant/routes.dart';
import 'package:ecommerce_smrtapp/core/middleware/mymiddleware.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/login.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/signup.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/successsignup.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_smrtapp/view/screen/language.dart';
import 'package:ecommerce_smrtapp/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccesSignUp()),
  GetPage(
      name: AppRoute.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
];




//Map<String, Widget Function(BuildContext)> routess = {
  // Auth
//  AppRoute.login: (context) => const Login(),
//  AppRoute.signUp: (context) => const SignUp(),
//  AppRoute.forgetPassword: (context) => const ForgetPassword(),
//  AppRoute.verifyCode: (context) => const VerifyCode(),
//  AppRoute.resetPassword: (context) => const ResetPassword(),
//  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
//  AppRoute.successSignUp: (context) => const SuccesSignUp(),
//  AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),
  // OnBoarding
//  AppRoute.onBoarding: (context) => const OnBoarding(),
//};
