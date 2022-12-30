import 'package:ecommerce_smrtapp/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white70,
          elevation: 0.0,
          title: Text(
            "Forget Password",
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
                const CustomTextTiltleAuth(text: "Check Email"),
                const SizedBox(height: 10),
                const CustomTextBodyAuth(
                    text:
                        "Please Enter Your Email Adress To Recive A verification code"),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {},
                  mycontroller: controller.email,
                  hinttext: "Enter Your Email",
                  iconData: Icons.email_outlined,
                  labeltext: "Email",
                  //mycontroller: ,
                ),
                CustomButtonAuth(
                  text: "Check",
                  onPressed: () {
                    controller.goToVerifyCode();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )));
  }
}
