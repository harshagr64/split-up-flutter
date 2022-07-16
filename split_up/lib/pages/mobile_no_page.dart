import 'package:flutter/material.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/dimensions.dart';
import 'package:split_up/widgets/big_text.dart';
import 'package:split_up/widgets/small_text.dart';

class MobileNoPage extends StatelessWidget {
  const MobileNoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Scaffold(
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
              // app sqname widget
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
          Column(
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
                child: TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  cursorColor: AppColors.blueColor.withOpacity(0.5),
                  style: TextStyle(
                      color: AppColors.blueColor,
                      fontSize: Dimensions.font16,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w500),
                  cursorHeight: Dimensions.height20,

                  // showCursor: false,
                  decoration: InputDecoration(
                    counterText: '',
                    prefixIcon: Icon(Icons.phone,
                        color: AppColors.blueColor.withOpacity(0.5)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.blueColor.withOpacity(0.5),
                          width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.blueColor.withOpacity(0.5),
                          width: 1.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.blueColor.withOpacity(0.5),
                          width: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              // continue button widget
              Container(
                width: double.infinity,
                height: Dimensions.height50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius:
                        BorderRadius.circular(Dimensions.height50 * 0.5)),
                child: SmallText(
                  text: 'Continue',
                  color: Colors.white,
                  size: Dimensions.font18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
