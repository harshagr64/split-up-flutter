import 'package:get/state_manager.dart';

class MobileController extends GetxController {
  String _mobileNo = "";
  String get mobileNo => _mobileNo;

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

  // void submitForm(int flag){
  //   if()
  // }
}
