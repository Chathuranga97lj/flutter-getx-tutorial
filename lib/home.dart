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
              onPressed: () {
                // after calling screen name, need assign value
                Get.toNamed("/nextScreen/123");
              },
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
                Get.toNamed('/');
              },
              child: const Text(
                "Back to Main",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Text(
              "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
              style: const TextStyle(color: Colors.red, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
