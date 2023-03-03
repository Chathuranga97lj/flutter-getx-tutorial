import 'package:get/get.dart';
import 'package:getxtest1/student.dart';

class MyController extends GetxController {
  // for observe variables -----------------------------
  //var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }
  //
  // void convertToLowerCase() {
  //   student.name.value = student.name.value.toLowerCase();
  // }
  // -----------------------------------------------------

  // for observe entire class ---------------------------

  var student = Student(name: 'chathuranga', age: 25).obs;

  void convertToUpperCase() {
    student.update((val) {
      student.value.name = student.value.name.toString().toUpperCase();
    });
  }

  void convertToLowerCase() {
    student.update((val) {
      student.value.name = student.value.name.toLowerCase();
    });
  }

  void increment() {
    student.update((val) {
      student.value.age++;
    });
  }

  void decrement() {
    student.update((val) {
      student.value.age--;
    });
  }

  // ----------------------------------------------------
}
