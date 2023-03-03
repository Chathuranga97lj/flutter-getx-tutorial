import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "My Name is ${myController.student.value.name}",
                    style: const TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  child: const Text("Upper Case"),
                  onPressed: () {
                    myController.convertToUpperCase();
                  }),
              ElevatedButton(
                  child: const Text("Lower Case"),
                  onPressed: () {
                    myController.convertToLowerCase();
                  }),
              const SizedBox(height: 20),
              Obx(() => Text(
                    "My Age is ${myController.student.value.age}",
                    style: const TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  child: const Text("Increase Age"),
                  onPressed: () {
                    myController.increment();
                  }),
              ElevatedButton(
                  child: const Text("Decrease Age"),
                  onPressed: () {
                    myController.decrement();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
