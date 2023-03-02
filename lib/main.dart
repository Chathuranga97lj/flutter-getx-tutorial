import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Dialog")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  child: const Text("Show Dialog"),
                  onPressed: () {
                    //Get.defaultDialog();
                    Get.defaultDialog(
                        title: "Dialog Title",
                        middleText: "This is middle text",
                        titleStyle: const TextStyle(fontSize: 25),
                        // backgroundColor: Colors.purple,
                        // radius: 80
                        textCancel: "Cancel",
                        cancelTextColor: Colors.red,
                        buttonColor: Colors.yellow,
                        onCancel: () {},
                        textConfirm: "Confirm",
                        confirmTextColor: Colors.white,
                        onConfirm: () {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
