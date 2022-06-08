import 'package:flutter/material.dart';
import 'package:split_up/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overflow;
  FontWeight fontWeight;
  
  BigText({ 
    Key? key, 
    this.color = const Color(0xFF332d2b), 
    required this.text, 
    this.overflow = TextOverflow.ellipsis, 
    this.size = 0,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: fontWeight,
        fontFamily: 'Dosis'
      ),
    );
  }
}