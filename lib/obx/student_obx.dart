import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Student {
//   var name = 'liman'.obs;
//   var age = 25.obs;
  var name;
  var age;

  Student({
    required this.name,
    required this.age,
  });
}

class SudentHomePage extends StatelessWidget {
  const SudentHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var student = Student(name: 'ahmad', age: 24);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Obx(
            () => Text('student name {$student.name.value}'),
          ),
          ElevatedButton(
            onPressed: () {
              student.name.value = student.name.value.toUpperCase();
              // student.update(
              //      student.name.value = student.name.value.toUpperCase();
              // );
            },
            child: const Text('Upper'),
          ),
        ],
      ),
    );
  }
}
