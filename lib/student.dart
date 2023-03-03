import 'package:get/get.dart';

class Student {
  // individual variables reactive
  // var name = "Chathuranga".obs;
  // var age = 25.obs;

  // to make entire class observable
  var name;
  var age;
  Student({this.name, this.age});
}
