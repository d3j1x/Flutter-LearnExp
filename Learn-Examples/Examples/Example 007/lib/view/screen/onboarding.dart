import 'package:ecommerce_smrtapp/controller/onboarding_controller.dart';
import 'package:ecommerce_smrtapp/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_smrtapp/view/widget/onboarding/dotcontroller.dart';
import 'package:ecommerce_smrtapp/view/widget/onboarding/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
            children: [
              const Expanded(
                flex: 5,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      CustomDotControllerOnBoarding(),
                      Spacer(flex: 2),
                      CustomButtonOnBoarding()
                    ],
                  ))
            ],
          ),
        ));
  }
}
