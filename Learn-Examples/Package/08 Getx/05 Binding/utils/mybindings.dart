import 'package:get/get.dart';
import 'package:smrt_mrkt/controller/homecontroller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    //Get.put(HomeController(),permanent: true);
  }
}
