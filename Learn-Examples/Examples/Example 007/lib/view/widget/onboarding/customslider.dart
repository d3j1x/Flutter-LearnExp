import 'package:ecommerce_smrtapp/controller/onboarding_controller.dart';
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
                  //width: 200,
                  //height: 200,
                  //fit: BoxFit.fill,
                ),
                const SizedBox(height: 20),
                Text(
                  onBoardingList[i].title!,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ))
              ],
            ));
  }
}
