import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      theme: ThemeData(),
      home: const HomePage(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const Home1(),
        ),
        GetPage(
          name: '/home',
          page: () => const Home2(),
        ),
        GetPage(
          name: '/nextScreen',
          page: () => const NextScreen(),
        ),
      ],
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
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.blue,
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
                  onConfirm: () {
                    Navigator.of(context).pop();
                  },
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
            ElevatedButton(
              onPressed: () {
                // Get.to(
                //   () => const Home1(),
                //   fullscreenDialog: true,
                //   curve: Curves.fastLinearToSlowEaseIn,
                // );
                Get.toNamed('/home');
              },
              child: const Text('Home 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const Home2(),
                  fullscreenDialog: true,
                );
              },
              child: const Text('Home 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home 1'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Home 1'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(' Back To Home 2'),
          ),
        ],
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home 2'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Home 2'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Home 2'),
          ),
        ],
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
