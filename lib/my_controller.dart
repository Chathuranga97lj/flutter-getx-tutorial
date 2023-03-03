import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  void increment() async {
    await Future<int>.delayed(const Duration(seconds: 5));
    count++;
    update(); // will update the count variable on UI which uses it
  }

  void cleanUpTask() {
    print("Clean up Task....!");
  }

  // @override
  // void onInit() {
  //   print('Init Called............');
  //   increment();
  //   super.onInit();
  // }
  //
  // @override
  // void onClose() {
  //   print('Closed.................');
  //   super.onClose();
  // }
}
