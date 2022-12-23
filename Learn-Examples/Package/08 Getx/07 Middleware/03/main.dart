import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smrt_mrkt/middleware/auth_middleware.dart';
import 'package:smrt_mrkt/middleware/super_middleware.dart';
import 'package:smrt_mrkt/view/admin.dart';
import 'package:smrt_mrkt/view/home.dart';
import 'package:smrt_mrkt/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smrt_mrkt/view/super.dart';

SharedPreferences? sharepref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  sharepref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Middelware',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => Login(),
          middlewares: [
            AuthMiddleware(),
            SuperMiddleware(),
          ],
        ),
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/admin", page: () => Admin()),
        GetPage(name: "/super", page: () => Super()),
      ],
    );
  }
}
