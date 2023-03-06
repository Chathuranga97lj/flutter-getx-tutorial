import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // My Controller instance will be created even if is not used >> (permanent: true)
    // tag will be used to find the instance with tag name
    // controller disposed when it is not used but if permanent is ture the instance will alive
    // permanent: true --- instance alive through the app
    // MyController myController =
    //     Get.put(MyController(), tag: 'instance1', permanent: true);

    // create instance when it is used or call
    //Get.lazyPut(() => MyController());

    //instance discarded when it not being used
    // if it is used again, crate it
    // Get.lazyPut(() => MyController(), tag: 'instance2', fenix: true);

    // when use async function use
    Get.putAsync<MyController>(() async => await MyController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Snack Bar")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text("Click Me"),
                  onPressed: () {
                    // instance crate with tag
                    // Get.find<MyController>(tag: 'instance1');
                    Get.find<MyController>();

                    Get.find<MyController>().incrementCounter();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
