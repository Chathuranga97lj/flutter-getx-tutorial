import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is Next Screen Page",
                style: TextStyle(color: Colors.blue, fontSize: 30)),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/x');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              child: const Text(
                "Unknown Route ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              child: const Text(
                "Back to Home",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "${Get.parameters['someValue']}",
              style: TextStyle(color: Colors.red, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
