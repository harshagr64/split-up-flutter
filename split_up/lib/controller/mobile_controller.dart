import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:split_up/routes/route_helper.dart';

class MobileController extends GetxController {
  // this instance will be available everywhere in our app
  static MobileController instance = Get.find();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // late User _user;

  String _mobileNo = "";
  String get mobileNo => _mobileNo;

  String _verId = "";
  String get verId => _verId;

  bool _isMobileValid = false;
  bool get isMobileValid => _isMobileValid;

  // to validate if entered value is of length 10
  void validate(String text) {
    _mobileNo = text;
    RegExp _numberChecker = RegExp(r'^[0-9]+$');
    if (text.length == 10 && _numberChecker.hasMatch(text)) {
      _isMobileValid = true;
    } else {
      _isMobileValid = false;
    }
    update();
  }

  // submitting mobile number
  void submitForm() async {
    print("mobile number is: $_mobileNo");

    await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: "+91$_mobileNo",
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential authCredential) {
          print("completed");
          phoneVerificationCompleted(authCredential);
        },
        verificationFailed: (FirebaseAuthException error) {
          print("failed");
          phoneVerificationFailed(error);
        },
        codeSent: (String id, [int? token]) {
          print("code send");
          phoneCodeSent(id, token);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print("timeout");
          phoneCodeAutoRetrievalTimeout(verificationId);
        });
    // print(result);
  }

  void phoneVerificationCompleted(PhoneAuthCredential authCredential) {
    print("verification is successful");
  }

  void phoneVerificationFailed(FirebaseAuthException authException) {
    print(authException.message);
    print("Failed");
  }

  void phoneCodeSent(String verId, int? token) {
    _verId = verId;
    print("codesend ver Id: $verId");
    Get.toNamed(RouteHelper.getotpPage());
  }

  void phoneCodeAutoRetrievalTimeout(String verId) {
    _verId = verId;
    print("verification id is: $_verId");
    print("Timeout occurs");
  }
}
