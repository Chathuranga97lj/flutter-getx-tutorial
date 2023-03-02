import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/home.dart';
import 'package:getxtest1/next_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/main', page: () => const MyApp()),
        GetPage(name: '/', page: () => const Home()),
        GetPage(
            // declare some variable and when rout call in main page give value to variable
            name: '/nextScreen/:someValue',
            page: () => const NextScreen(),
            transition: Transition.leftToRight),
      ],
      unknownRoute: GetPage(
          name: '/notfound',
          page: () => Scaffold(
                appBar: AppBar(title: const Text('Page Not Found')),
                body: const Center(
                  child: Icon(Icons.error),
                ),
              )),
      home: Scaffold(
        appBar: AppBar(title: const Text("Named Route")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text("Main Page"),
                  onPressed: () {
                    // Get.toNamed("/home");
                    Get.toNamed(
                      '/home?channel=${'Chathuranga'}&content=Flutter GetX',
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
