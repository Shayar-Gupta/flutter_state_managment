import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/CounterController.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // Register the controller (ideally done once in your app)
    final CounterController counterController = Get.put(CounterController());

    print("rebuild");

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              '${counterController.getCount}', // Convert int to String
              style: TextStyle(fontSize: 24),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
