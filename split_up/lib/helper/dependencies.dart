import 'package:get/get.dart';
import 'package:split_up/controller/auth_controller.dart';

Future<void> init() async {
  // auth controller
  Get.lazyPut(() => AuthController());
}
