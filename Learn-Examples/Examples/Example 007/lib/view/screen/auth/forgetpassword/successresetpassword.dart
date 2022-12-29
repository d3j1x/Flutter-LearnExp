import 'package:ecommerce_smrtapp/controller/auth/successresetpassword_controller.dart';
import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white70,
        elevation: 0.0,
        title: Text(
          "Success Reset Password",
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
                  controller.goToPageLogin();
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
