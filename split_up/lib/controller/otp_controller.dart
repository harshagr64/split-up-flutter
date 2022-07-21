import 'package:get/state_manager.dart';

class OtpController extends GetxController {
  String _otp = "";
  String get otp => _otp;

  bool _isOtpValid = false;
  bool get isOtpValid => _isOtpValid;

  // to validate if OTP is of length 6
  void validate(String text) {
    RegExp _numberChecker = RegExp(r'^[0-9]+$');
    if (text.length == 6 && _numberChecker.hasMatch(text)) {
      _isOtpValid = true;
    } else {
      _isOtpValid = false;
    }
    update();
  }

  // void submitForm(int flag){
  //   if()
  // }
}
