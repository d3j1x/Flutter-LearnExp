import 'package:ecommerce_smrtapp/controller/onboarding_controller.dart';
import 'package:ecommerce_smrtapp/core/constant/color.dart';
import 'package:ecommerce_smrtapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                //const SizedBox(height: 80),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 300,
                  //height: 200,
                  //fit: BoxFit.fill,
                ),
                const SizedBox(height: 50),
                Text(
                  onBoardingList[i].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColor.black),
                ),
                const SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 2, color: AppColor.grey, fontSize: 18),
                    ))
              ],
            ));
  }
}
