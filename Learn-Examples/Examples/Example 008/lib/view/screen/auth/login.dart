import 'package:ecommerce_smrtapp/controller/auth/login_controller.dart';
import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:ecommerce_smrtapp/core/functions/validinput.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/logoauth.dart';
import 'package:ecommerce_smrtapp/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white70,
          elevation: 0.0,
          title: Text(
            "Sign In",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.green),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const LogoAuth(),
                  const CustomTextTiltleAuth(text: "Welcome Back"),
                  const SizedBox(height: 10),
                  const CustomTextBodyAuth(
                      text:
                          "Sign In With Email And Password OR Continue With Social Media"),
                  const SizedBox(height: 20),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 100, "email");
                    },
                    mycontroller: controller.email,
                    hinttext: "Enter Your Email",
                    iconData: Icons.email_outlined,
                    labeltext: "Email",
                    //mycontroller: ,
                  ),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    mycontroller: controller.password,
                    hinttext: "Enter Your Password",
                    iconData: Icons.lock_outline,
                    labeltext: "Password",
                    //mycontroller: ,
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: const Text(
                      "Forget Password",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  CustomButtonAuth(
                    text: "Sign In",
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextSignUpOrSignIn(
                    textone: "Don't have an account ? ",
                    texttwo: "Sign Up",
                    onTap: () {
                      controller.goToSignUp();
                    },
                  )
                ],
              ),
            )));
  }
}
