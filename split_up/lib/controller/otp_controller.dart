import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
// import 'package:get/state_manager.dart';
import 'package:split_up/controller/mobile_controller.dart';
import 'package:split_up/routes/route_helper.dart';

class OtpController extends GetxController {
  // mobile controller
  static MobileController mobileController = Get.find();

  // firebase auth instance
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // firebase user
  late User _user;

  String _otp = "";
  String get otp => _otp;

  bool _isOtpValid = false;
  bool get isOtpValid => _isOtpValid;

  // to validate if OTP is of length 6
  void validate(String text) {
    _otp = text;
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

  void submitOtp() async {
    // print("ver id: ${mobileController.verId}");
    final userCred = PhoneAuthProvider.credential(
        verificationId: mobileController.verId, smsCode: _otp);

    final result = await _firebaseAuth.signInWithCredential(userCred);

    _user = result.user!;

    if (_user != null) {
      Get.toNamed(RouteHelper.getInitial());
    } else {
      print("There is some error");
    }

    print(_user);
  }
}
