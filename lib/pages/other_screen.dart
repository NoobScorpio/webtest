import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/controllers/counter_controller.dart';

class OtherScreen extends StatelessWidget {
  final CounterController counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("CLICKED : ${counterController.counter.value} TIMERS"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("go back"))
        ],
      ),
    );
  }
}
