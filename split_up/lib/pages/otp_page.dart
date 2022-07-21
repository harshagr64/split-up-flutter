import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:split_up/controller/mobile_controller.dart';
import 'package:split_up/controller/otp_controller.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/custom_button.dart';
import 'package:split_up/utils/custom_text_field.dart';
import 'package:split_up/utils/dimensions.dart';
import 'package:split_up/widgets/big_text.dart';
import 'package:split_up/widgets/small_text.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobileNo = Get.find<MobileController>().mobileNo;
    final TextEditingController textEditingController = TextEditingController();
    final MobileController authController = MobileController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // back button widget
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColors.blueColor,
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
      ),
      body: GetBuilder<OtpController>(
        builder: (otpController) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // mobile number text widget
                    BigText(
                      text: 'Verify mobile number',
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.w700,
                      size: 22,
                    ),
                    SizedBox(
                      height: Dimensions.height5,
                    ),
                    SmallText(
                      text: 'Enter the OTP sent to +91$mobileNo',
                      size: 14,
                      color: AppColors.blueColor.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: Dimensions.height20 * 2,
                    ),
                    // otp text field widget
                    CustomTextField(
                      keyboardType: TextInputType.number,
                      prefixIcon: null,
                      maxLength: 6,
                      textEditingController: textEditingController,
                      hinText: "Enter OTP",
                      onChangedFun: (text) {
                        print(text);
                        otpController.validate(text);
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: Dimensions.height10),
                        // submit button widget
                        child: Container(
                          width: double.infinity,
                          height: Dimensions.height50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: otpController.isOtpValid
                                ? AppColors.orangeColor
                                : AppColors.lightBlueColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(
                                Dimensions.height50 * 0.5),
                          ),
                          child: SmallText(
                            text: "Verify and Continue",
                            color: AppColors.greyColor,
                            size: Dimensions.font18,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
