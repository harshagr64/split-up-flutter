import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/custom_text_field.dart';
import 'package:split_up/utils/dimensions.dart';
import 'package:split_up/widgets/big_text.dart';
import 'package:split_up/widgets/small_text.dart';

import '../controller/mobile_controller.dart';

class NewUserPage extends StatelessWidget {
  const NewUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: Dimensions.height20,
            right: Dimensions.height20,
            top: Dimensions.height20 * 2,
            bottom: Dimensions.height10),
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
                      "assets/images/new-user-screen.png",
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

            // name text field widget
            GetBuilder<MobileController>(
              builder: (mobileController) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Create Account",
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SmallText(
                      text: 'Enter your Name',
                      color: AppColors.blueColor.withOpacity(0.7),
                      size: Dimensions.font16,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),

                    // name input field widget
                    Container(
                      height: Dimensions.height45,
                      child: CustomTextField(
                        textEditingController: textEditingController,
                        keyboardType: TextInputType.text,
                        prefixIcon: null,
                        maxLength: 200,
                        onChangedFun: (text) {
                          print("$text");
                          mobileController.validate(text);
                        },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    // sign up button widget
                    GestureDetector(
                      onTap: () {
                        // mobileController.submitForm(1);
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
                          text: "Sign Up",
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
    // return Scaffold(
    //   body: Container(
    //     padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 10),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         // Create account text widget
    //         Text(
    //           "Create \nAccount",
    //           style: TextStyle(
    //             fontSize: 34,
    //             fontFamily: 'Dosis',
    //             fontWeight: FontWeight.bold,
    //             color: AppColors.blueColor,
    //           ),
    //         ),
    //         SizedBox(
    //           height: Dimensions.height30,
    //         ),
    //         SmallText(
    //           text: 'Your Name',
    //           size: 16,
    //           color: AppColors.blueColor,
    //           fontWeight: FontWeight.w500,
    //         ),
    //         SizedBox(
    //           height: Dimensions.height10,
    //         ),
    //         CustomTextField(
    //           prefixIcon: null,
    //           maxLength: 200,
    //           textEditingController: textEditingController,
    //           onChangedFun: (text) {},
    //           hinText: "Enter  name",
    //           keyboardType: TextInputType.text,
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
