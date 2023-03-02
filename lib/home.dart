import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is Home Screen",
                style: TextStyle(color: Colors.blue, fontSize: 30)),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                "Next Screen",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Back to Main",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              Get.arguments,
              style: const TextStyle(color: Colors.red, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
