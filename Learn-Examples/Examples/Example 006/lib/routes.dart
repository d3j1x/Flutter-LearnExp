import 'package:ecommerce_smrtapp/core/constant/routes.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/login.dart';
import 'package:ecommerce_smrtapp/view/screen/auth/signup.dart';
import 'package:ecommerce_smrtapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
