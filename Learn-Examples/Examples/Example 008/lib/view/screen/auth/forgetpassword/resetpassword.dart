import 'package:ecommerce_smrtapp/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce_smrtapp/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white70,
          elevation: 0.0,
          title: Text(
            "Reset Password",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.green),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: ListView(
              children: [
                const CustomTextTiltleAuth(text: "New Password"),
                const SizedBox(height: 10),
                const CustomTextBodyAuth(text: "Please Enter New Password"),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {},
                  mycontroller: controller.password,
                  hinttext: "Enter Your Password",
                  iconData: Icons.lock_outline,
                  labeltext: "Password",
                  //mycontroller: ,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {},
                  mycontroller: controller.password,
                  hinttext: "Re Enter Your Password",
                  iconData: Icons.lock_outline,
                  labeltext: "Password",
                  //mycontroller: ,
                ),
                //CustomTextFormAuth(
                //  mycontroller: controller.email,
                //  hinttext: "Enter Your Email",
                //  iconData: Icons.email_outlined,
                //  labeltext: "Email",
                //  //mycontroller: ,
                //),
                CustomButtonAuth(
                  text: "save",
                  onPressed: () {
                    controller.goToSuccessReset();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )));
  }
}
