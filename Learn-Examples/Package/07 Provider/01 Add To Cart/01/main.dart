import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smrt_mrkt/model/cart.dart';
import 'package:smrt_mrkt/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return Cart();
        },
        child: MaterialApp(
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          title: "Smrt Mrkt",
          home: Home(),
        ));
  }
}
