import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Teko",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    headline2: TextStyle(height: 2, color: AppColor.black, fontSize: 17),
    bodyText1: TextStyle(height: 2, color: AppColor.grey, fontSize: 17),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    headline2: TextStyle(height: 2, color: AppColor.black, fontSize: 17),
    bodyText1: TextStyle(height: 2, color: AppColor.grey, fontSize: 17),
  ),
  primarySwatch: Colors.blue,
);
