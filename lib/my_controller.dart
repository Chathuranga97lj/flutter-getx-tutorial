import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  void onInit() {
    // called every time when the value of count variable changed
    ever(count, (_) => print(count));

    // called every time when the value of any variable from the list changes
    // everAll([count], (_) => print(count));

    // call only once when the variable value changed
    //once(count, (_) => print(count));

    // called every time the user stops typing for 1 second
    // debounce(
    //     count,
    //     (_) =>
    //         print("When the user stop typing for 1 sec the value of counter "),
    //     time: const Duration(seconds: 1));

    // ignore all changes within 3 seconds
    //interval(count, (_) => print("Ignore all changes"));

    super.onInit();
  }
}
