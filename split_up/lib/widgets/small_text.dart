import 'package:flutter/material.dart';
import 'package:split_up/utils/dimensions.dart';

// import '../utils/dimensions.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;
  FontWeight fontWeight;

  SmallText({
    Key? key,
    this.color = const Color(0xFFCCC7C1),
    required this.text,
    this.size = 0,
    this.height = 1.2,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font12 : size,
        fontFamily: 'Dosis',
        height: height,
        fontWeight: fontWeight,
      ),
    );
  }
}
