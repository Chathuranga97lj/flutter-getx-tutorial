import 'package:get/get.dart';
import 'package:getxtest1/home_controller.dart';
import 'package:getxtest1/my_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
