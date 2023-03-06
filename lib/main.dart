import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/service.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('Starting services');
  await Get.putAsync<Service>(() async => await Service());
  print('All services started');
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("GetX Service")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text("Increment"),
                  onPressed: () {
                    Get.find<Service>().incrementCounter();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
