import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest1/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // in student class, for only observable variables
  //var student = Student();

  // in entire class is observable
  final student = Student(name: "chathuranga", age: 25).obs;

  void increment() {
    student.value.age++;
  }

  void decrement() {
    student.value.age--;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    // "My name is ${student.name.value}",
                    "My name is ${student.value.name}",
                    style: const TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  child: const Text("Upper Case"),
                  onPressed: () {
                    // student.name.value = student.name.value.toUpperCase();

                    student.update((value) {
                      student.value.name = student.value.name.toUpperCase();
                    });
                  }),
              ElevatedButton(
                  child: const Text("Lower Case"),
                  onPressed: () {
                    // student.name.value = student.name.value.toLowerCase();

                    student.update((value) {
                      student.value.name = student.value.name.toLowerCase();
                    });
                  }),
              const SizedBox(height: 20),
              Obx(() => Text(
                    "My age is ${student.value.age}",
                    style: const TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  child: const Text("Increase Age"),
                  onPressed: () {
                    // student.name.value = student.name.value.toUpperCase();

                    student.update((value) {
                      increment();
                    });
                  }),
              ElevatedButton(
                  child: const Text("Decrease Age"),
                  onPressed: () {
                    // student.name.value = student.name.value.toLowerCase();

                    student.update((value) {
                      decrement();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
