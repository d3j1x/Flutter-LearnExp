import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/main.dart';

class SuperMiddleware extends GetMiddleware {
  @override
  int? get pripority => 1;

  bool myvar = true;
  @override
  RouteSettings? redirect(String? route) {
    if (myvar == true) return RouteSettings(name: "super");
  }
}
