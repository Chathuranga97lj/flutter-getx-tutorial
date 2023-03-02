import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Route Un named")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text("Go to home"),
                  onPressed: () {
                    Get.to(() => const Home(),
                        arguments: "Data From Home",
                        transition: Transition.cupertino);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
