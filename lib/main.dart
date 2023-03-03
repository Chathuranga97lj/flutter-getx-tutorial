import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  // This widget is the root of your application.

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("GetXController Life Cycle")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  initState: (data) => myController.increment(),
                  dispose: (_) => myController.cleanUpTask(),
                  builder: (controller) {
                    return Text(
                      "The Value is ${controller.count}",
                      style: const TextStyle(fontSize: 25),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
