import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/all_controller_binding.dart';
import 'package:getxtest1/my_controller.dart';
import 'package:getxtest1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Binding")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The value is ${Get.find<MyController>().count}',
                    style: const TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  child: const Text("Increment"),
                  onPressed: () {
                    Get.find<MyController>().increment();
                  }),
              const SizedBox(height: 10),
              ElevatedButton(
                  child: const Text("Home"),
                  onPressed: () {
                    Get.to(Home());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
