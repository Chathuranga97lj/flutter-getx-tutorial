import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Unique ID")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  id: 'textCount',
                  builder: (controller) {
                    return Text(
                      "Has ID and The value is ${controller.count}",
                      style: const TextStyle(fontSize: 25),
                    );
                  }),
              GetBuilder<MyController>(builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: const TextStyle(fontSize: 25),
                );
              }),
              ElevatedButton(
                  child: const Text("Increment"),
                  onPressed: () => myController.increment())
            ],
          ),
        ),
      ),
    );
  }
}
