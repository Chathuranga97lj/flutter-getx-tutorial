import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // if used not GetX<Type of controller> crate instance inside the class
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("GetX Controller Type")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<MyController>(
                //init: MyController(), // if instance crate inside the class no need to do this
                builder: (controller) {
                  return Text(
                    // "The value is ${controller.count}",
                    "The value is ${myController.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
              ElevatedButton(
                  child: const Text("Increase Value"),
                  onPressed: () {
                    // when instance is only builder method
                    //Get.find<MyController>().increment();

                    // when instance is create in the class
                    myController.increment();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
