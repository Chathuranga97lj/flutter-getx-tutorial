import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/Messages.dart';
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
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      title: 'Internationalization',
      home: Scaffold(
        appBar: AppBar(title: const Text("Internationalization")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(fontSize: 25, color: Colors.purple),
              ),
              ElevatedButton(
                  child: const Text("Sinhala"),
                  onPressed: () {
                    myController.changeLanguage('si', 'SL');
                  }),
              const SizedBox(height: 16),
              ElevatedButton(
                  child: const Text("English"),
                  onPressed: () {
                    myController.changeLanguage('en', 'US');
                  }),
              const SizedBox(height: 16),
              ElevatedButton(
                  child: const Text("Franch"),
                  onPressed: () {
                    myController.changeLanguage('fr', 'FR');
                  }),
              const SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
  }
}
