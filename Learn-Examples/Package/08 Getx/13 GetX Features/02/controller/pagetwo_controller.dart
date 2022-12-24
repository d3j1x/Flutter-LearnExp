import 'package:get/get.dart';

class PageTwoController extends GetxController {
  String? prevRoute;
  String? currentRoute;

  @override
  void onInit() {
    prevRoute = Get.previousRoute;
    currentRoute = Get.routing.current;
    super.onInit();
  }
}
