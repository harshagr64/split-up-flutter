import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  // get access the device width and height
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  /*
   * First we get the height and width of the device then 
   * we can calculate the heigth and width for the view as
   * 
   * for the height ===>  screenHeight / scaling_factor;
   * eg, 
   *  let suppose want a container which having height 220, screenHeight = 844
   *  then, 844 / 220 = 3.84
   * 
   * for the width same as above.
   */

  /* font sizes */
  static double font12 = screenHeight / 70.3;
  static double font20 = screenHeight / 42.2;
  static double font16 = screenHeight / 52.7;
  static double font18 = screenHeight / 46.88;
  static double font26 = screenHeight / 32.46;

  /* height and width */
  static double height5 = screenHeight / 168.8;
  static double width5 = screenWidth / 78.4;

  static double height10 = screenHeight / 84.4;
  static double width10 = screenWidth / 39.2;

  static double height15 = screenHeight / 56.6;
  static double width15 = screenWidth / 26.13;
  
  static double height20 = screenHeight / 42.2;
  static double width20 = screenWidth / 19.6;
  
  static double height30 = screenHeight / 28.1;
  static double width30 = screenWidth / 13.06;
  
  static double height45 = screenHeight / 18.7;
  static double width45 = screenWidth / 8.71;

  /* Radius */
  static double radius5 = screenHeight / 168.8;
  static double radius15 = screenHeight / 56.6;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
}
