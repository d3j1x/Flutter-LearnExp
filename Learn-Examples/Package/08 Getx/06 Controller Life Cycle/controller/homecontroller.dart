import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  @override
  void onInit() {
    print("Init HomeController");
    super.onInit();
  }

  @override
  void onReady() {
    print("Ready HomeController");
    super.onReady();
  }

  @override
  void onClose() {
    print("Close HomeController");
    super.onClose();
  }
}
