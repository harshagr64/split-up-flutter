import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';
import 'package:split_up/controller/mobile_controller.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/custom_button.dart';
import 'package:split_up/utils/custom_text_field.dart';
import 'package:split_up/utils/dimensions.dart';
import 'package:split_up/widgets/big_text.dart';
import 'package:split_up/widgets/small_text.dart';

class MobileNoPage extends StatelessWidget {
  const MobileNoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // controller for mobile field
    final TextEditingController mobileFieldControlller =
        TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(Dimensions.height20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // placeholder sizedbox
            SizedBox(),
            // Image & name column
            Column(
              children: [
                Center(
                  // Image Container
                  child: Container(
                    width: Dimensions.width50 * 5,
                    height: Dimensions.height50 * 5,
                    // color: Colors.red,
                    child: Image.asset(
                      "assets/images/sign-in-screen.png",
                    ),
                  ),
                ),
                // app name widget
                Text(
                  "Split Up",
                  style: TextStyle(
                    fontFamily: 'Dosis',
                    fontWeight: FontWeight.w700,
                    fontSize: Dimensions.font12 * 2,
                    color: AppColors.blueColor,
                  ),
                ),
              ],
            ),

            // mobile no. widget
            GetBuilder<MobileController>(
              builder: (mobileController) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Get started with Split Up",
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SmallText(
                      text: 'Enter your mobile number',
                      color: AppColors.blueColor.withOpacity(0.7),
                      size: Dimensions.font16,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),

                    // mobile number input field widget
                    Container(
                      height: Dimensions.height45,
                      child: CustomTextField(
                        textEditingController: mobileFieldControlller,
                        keyboardType: TextInputType.number,
                        prefixIcon: Icons.phone,
                        maxLength: 10,
                        onChangedFun: (text) {
                          print("$text");
                          mobileController.validate(text);
                        },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    // continue button widget
                    GestureDetector(
                      onTap: mobileController.isMobileValid
                          ? () {
                              mobileController.submitForm();
                            }
                          : () {
                              print("Invalid Mobile No.");
                            },
                      child: Container(
                        width: double.infinity,
                        height: Dimensions.height50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: mobileController.isMobileValid
                              ? AppColors.orangeColor
                              : AppColors.lightBlueColor.withOpacity(0.3),
                          borderRadius:
                              BorderRadius.circular(Dimensions.height50 * 0.5),
                        ),
                        child: SmallText(
                          text: "Continue",
                          color: AppColors.greyColor,
                          size: Dimensions.font18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
