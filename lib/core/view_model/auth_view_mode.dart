import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  var counter = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void increment() {
    counter++;
    update();
  }
}
