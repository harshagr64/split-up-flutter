import 'package:get/get.dart';
import 'package:split_up/controller/mobile_controller.dart';
import 'package:split_up/controller/otp_controller.dart';

Future<void> init() async {
  // mobile no. controller
  Get.lazyPut(() => MobileController());

  // otp controller
  Get.lazyPut(() => OtpController());
}
