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
        appBar: AppBar(title: const Text("Bottom Sheet")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  child: const Text("Show Sheet"),
                  onPressed: () {
                    Get.bottomSheet(Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text("Light Theme"),
                            onTap: () => {Get.changeTheme(ThemeData.light())},
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text("Dark Theme"),
                            onTap: () => {Get.changeTheme(ThemeData.dark())},
                          ),
                        ],
                      ),
                    ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
