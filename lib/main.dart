import 'package:flutter/material.dart';
// import 'package:get/state_manager.dart';
import 'package:get/get.dart';
// import './controller/counter_controller.dart';
// import './controller/orang_controller.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
// class MyApp extends StatelessWidget {
//   // final orangController = Get.put(OrangController());

//   // final counterController = Get.put(CounterController());

//   MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           // child: GetX<CounterController>(
//           child: GetBuilder<CounterController>(
//             init: CounterController(),
//             builder: (controller) => Text(
//               // "Angka ${controller.counter.value}",
//               "Angka ${controller.counter}",
//               style: const TextStyle(fontSize: 35),
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             // orangController.changeUppercase();
//             // counterController.increment();
//             Get.find<CounterController>().increment();
//           },
//         ),
//       ),
//     );
//   }
// }

//YOUTUBE: GETX UNIQUE ID
class MyApp extends StatelessWidget {
  // final countC = Get.put(CountController());
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: GetX<CountController>(
          init: CountController(),
          builder: (c) {
            return Text(
              "Angka ${c.count}",
              style: const TextStyle(
                fontSize: 35,
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          // onPressed: () => countC.add(),
          onPressed: () => Get.find<CountController>().add(),
        ),
      ),
    );
  }
}

class CountController extends GetxController {
  var count = 0.obs;

  void add() {
    count++;
  }
}
