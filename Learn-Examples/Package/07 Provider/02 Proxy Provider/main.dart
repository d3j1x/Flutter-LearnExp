import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smrt_mrkt/model/model.dart';
import 'package:smrt_mrkt/view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(create: (context) {
          return MyModel();
        }),
        ProxyProvider<MyModel, AnothorModel>(
          update: (context, mymodel, anothermodel) {
            return AnothorModel(mymodel);
          },
        )
      ],
      child: MaterialApp(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        title: "Smrt Mrkt",
        home: Home(),
      ),
    );
  }
}
