import 'package:ecommerce_smrtapp/controller/auth/signup_controller.dart';
import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:ecommerce_smrtapp/core/functions/alertexitapp.dart';
import 'package:ecommerce_smrtapp/core/functions/validinput.dart';
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
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      const CustomTextTiltleAuth(text: "Welcome"),
                      const SizedBox(height: 10),
                      const CustomTextBodyAuth(
                          text:
                              "Sign Up With Email And Password OR Continue With Social Media"),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 20, "username");
                        },
                        mycontroller: controller.username,
                        hinttext: "Enter Your Username",
                        iconData: Icons.person_outline,
                        labeltext: "Username",
                        //mycontroller: ,
                      ),
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
                        isNumber: true,
                        valid: (val) {
                          return validInput(val!, 6, 50, "phone");
                        },
                        mycontroller: controller.phone,
                        hinttext: "Enter Your Phone",
                        iconData: Icons.phone,
                        labeltext: "Phone",
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
                  ),
                ))));
  }
}
