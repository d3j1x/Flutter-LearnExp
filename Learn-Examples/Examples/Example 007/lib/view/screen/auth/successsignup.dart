import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:ecommerce_smrtapp/core/constant/routes.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccesSignUp extends StatelessWidget {
  const SuccesSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white70,
        elevation: 0.0,
        title: Text(
          "Success SignUp",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: Colors.green),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.blue,
            )),
            const Text("... ... ...."),
            const Text("... ... ...."),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "Sign In",
                onPressed: () {
                  Get.offNamed(AppRoute.login);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
