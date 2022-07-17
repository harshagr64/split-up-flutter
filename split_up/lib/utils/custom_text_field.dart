import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:split_up/controller/auth_controller.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/dimensions.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final void Function(String text) onChangedFun;
  final dynamic prefixIcon;
  final int maxLength;
  final TextInputType keyboardType;
  const CustomTextField({
    Key? key,
    required this.prefixIcon,
    required this.maxLength,
    this.keyboardType = TextInputType.text,
    required this.textEditingController,
    required this.onChangedFun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 10,
      keyboardType: keyboardType,
      cursorColor: AppColors.blueColor.withOpacity(0.5),
      style: TextStyle(
        color: AppColors.blueColor,
        fontSize: Dimensions.font16,
        fontFamily: 'Dosis',
        fontWeight: FontWeight.w500,
      ),
      cursorHeight: Dimensions.height20,
      onChanged: (text) {
        onChangedFun(text);
      },
      // showCursor: false,
      decoration: InputDecoration(
        counterText: '',
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.blueColor.withOpacity(0.5))
            : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.blueColor.withOpacity(0.5), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.blueColor.withOpacity(0.5), width: 1.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.blueColor.withOpacity(0.5), width: 1.0),
        ),
      ),
    );
  }
}
