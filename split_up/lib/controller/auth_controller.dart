import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  bool _isMobileValid = false;
  bool get isMobileValid => _isMobileValid;

  // to validate if entered value is of length 10
  void validate(String text) {
    RegExp _numberChecker = RegExp(r'^[0-9]+$');
    if (text.length == 10 && _numberChecker.hasMatch(text)) {
      _isMobileValid = true;
    } else {
      _isMobileValid = false;
    }
    update();
  }
}
