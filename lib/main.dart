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
        appBar: AppBar(title: const Text("State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  //init: MyController(),
                  builder: (controller) {
                return Text(
                  //'The value is ${controller.count}',
                  'The value is ${myController.count}',
                  style: const TextStyle(fontSize: 25),
                );
              }),
              ElevatedButton(
                  child: const Text("Increase Value"),
                  onPressed: () {
                    //Get.find<MyController>().increment();
                    myController.increment();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
