import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanagment/obx/student_obx.dart';

class MyController extends GetxController {
  final student = Student(
    name: 'Ahmad',
    age: '23',
  );

  void icreementCounter() {
    student.name.value = student.name.value.toUpperCase();
  }
}

class GetxControllerPage extends StatelessWidget {
  const GetxControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController myController = Get.put(
      MyController(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Obx(
            () => Text('Name is ${myController.student.name}'),
          ),
          ElevatedButton(
            onPressed: () {
              myController.icreementCounter();
            },
            child: const Text('upper'),
          ),
        ],
      ),
    );
  }
}
