import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("1".tr),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.snackbar("title SnackBar", "How Are You",
                        colorText: Colors.black,
                        duration: Duration(seconds: 5),
                        snackPosition: SnackPosition.TOP,
                        borderRadius: 10,
                        backgroundColor: Colors.green,
                        borderColor: Colors.amber,
                        borderWidth: 5,
                        maxWidth: 400,
                        //titleText: Text("Smrt Mrkt"),
                        //messageText: Text("Every"),
                        boxShadows: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(10, 5),
                              blurRadius: 5)
                        ]);
                  },
                  child: Text("Show Dialog"),
                ),
              ),
            ])));
  }
}
