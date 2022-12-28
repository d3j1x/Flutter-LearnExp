import 'package:ecommerce_smrtapp/core/constant/imageasset.dart';
import 'package:ecommerce_smrtapp/data/model/onboardingmodel.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product",
      body:
          "We Have a 100k Product, Choose \n Your Product From Our \n E-commerce Shop",
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "Easy And Safe Payment",
      body:
          "Credit Card Companies \n Make Use Of The Latest \n Online Security Features,",
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "Track Your Order",
      body:
          "Order Tracking Allows You \n To Monitor All Of Your Online Orders \n And Shipments And To Communicate..",
      image: AppImageAsset.onBoardingImageThree),
  OnBoardingModel(
      title: "Fast Delevery",
      body:
          "Fast Delivery Is An Option \n That Attracts New Customers, \n Builds Loyalty And Reduces Cart Abandonment.",
      image: AppImageAsset.onBoardingImageFour),
];
