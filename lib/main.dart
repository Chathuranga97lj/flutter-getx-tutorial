import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  var count = 0.obs;

  void increment() {
    count++;
  }

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
                    "Count value is $count",
                    style: const TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  child: const Text("Increment"),
                  onPressed: () {
                    increment();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
