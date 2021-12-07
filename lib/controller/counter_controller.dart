import 'package:get/get.dart';

class CounterController extends GetxController {
  //Menggunakan obs/obx (reactive)
  // var counter = 0.obs;
  //Menggunakan getbuilder (simple)
  var counter = 0;

  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;

  // void increment() => counter + 1;
  void increment() {
    counter++;
    update();
  }

  void decrement() => counter - 1;
}
