import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX HomePage'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Snacker Bar',
                  'Love you sweety',
                  forwardAnimationCurve: Curves.easeInOut,
                );
              },
              child: const Text('Click'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Hello',
                  barrierDismissible: false,
                  content: const Text('Hello Love'),
                  onCancel: () {
                    Navigator.of(context).pop();
                  },
                  onConfirm: () {},
                  textCancel: 'Cancel',
                  textConfirm: 'Confirm',
                );
              },
              child: const Text('Alert'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.wb_sunny_outlined),
                        title: const Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(
                            ThemeData.light(),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_sunny_outlined),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(
                            ThemeData.dark(),
                          );
                        },
                      ),
                    ],
                  ),
                  isDismissible: false,
                  enableDrag: false,
                );
              },
              child: const Text('Bottom'),
            ),
          ],
        ),
      ),
    );
  }
}
