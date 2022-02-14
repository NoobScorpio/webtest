import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/controllers/counter_controller.dart';
import 'package:webapp/pages/other_screen.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Counter : ${counterController.counter.value}"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(OtherScreen());
                  },
                  child: const Text("open other screen"))
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
      ),
    );
  }
}
