import 'package:get/get.dart';
import 'package:about_getx/models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: "joni", usia: 40).obs;

  void changeUppercase() {
    orang.update((val) {
      orang.value.nama = orang.value.usia.toString().toUpperCase();
    });
  }

  void changeLowwercase() {
    orang.value.nama = orang.value.usia.toString().toLowerCase();
  }
}
