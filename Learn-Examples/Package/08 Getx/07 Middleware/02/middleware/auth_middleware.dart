import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/main.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharepref!.getString("roule") == "admin")
      return RouteSettings(name: "/admin");
    if (sharepref!.getString("roule") == "user")
      return RouteSettings(name: "/home");
  }
}
