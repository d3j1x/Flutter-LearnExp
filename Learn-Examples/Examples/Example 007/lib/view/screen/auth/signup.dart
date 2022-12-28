import 'package:ecommerce_smrtapp/controller/auth/signup_controller.dart';
import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white70,
          elevation: 0.0,
          title: Text(
            "Sign Up",
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
                const CustomTextTiltleAuth(text: "Welcome"),
                const SizedBox(height: 10),
                const CustomTextBodyAuth(
                    text:
                        "Sign Up With Email And Password OR Continue With Social Media"),
                CustomTextFormAuth(
                  mycontroller: controller.username,
                  hinttext: "Enter Your Username",
                  iconData: Icons.person_outline,
                  labeltext: "Username",
                  //mycontroller: ,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.email,
                  hinttext: "Enter Your Email",
                  iconData: Icons.email_outlined,
                  labeltext: "Email",
                  //mycontroller: ,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.phone,
                  hinttext: "Enter Your Phone",
                  iconData: Icons.phone,
                  labeltext: "Phone",
                  //mycontroller: ,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.password,
                  hinttext: "Enter Your Password",
                  iconData: Icons.lock_outline,
                  labeltext: "Password",
                  //mycontroller: ,
                ),
                CustomButtonAuth(
                  text: "Sign Up",
                  onPressed: () {
                    controller.signUp();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextSignUpOrSignIn(
                  textone: "Have an account ? ",
                  texttwo: "Sign In",
                  onTap: () {
                    controller.goToSignIn();
                  },
                ),
              ],
            )));
  }
}
