import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _counter = 0.obs;
    void increement() {
      _counter++;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text('Value Count $_counter'),
          ),
          ElevatedButton(
            onPressed: () {
              increement();
            },
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
