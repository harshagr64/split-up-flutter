import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:split_up/controller/mobile_controller.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/dimensions.dart';
import 'package:split_up/widgets/small_text.dart';

class CustomButton extends StatelessWidget {
  final GetxController authController;
  final String text;
  final Color bgColor;
  final Color textColor;
  const CustomButton({
    Key? key,
    required this.authController,
    required this.text,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Dimensions.height50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: authController.validate(text)
        //     ? bgColor
            // : AppColors.lightBlueColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(Dimensions.height50 * 0.5),
      ),
      child: SmallText(
        text: text,
        color: textColor,
        size: Dimensions.font18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
