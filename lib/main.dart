import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterC = Get.put(CounterController());
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final ckecil = Get.find<CounterController>();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            "Angka ${ckecil.counter}",
            style: const TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => counterC.increment(),
        onPressed: () => ckecil.changeTheme(),
      ),
    );
  }
}
