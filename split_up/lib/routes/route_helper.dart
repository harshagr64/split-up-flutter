import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:split_up/home/group_page.dart';
import 'package:split_up/home/home_page.dart';
import 'package:split_up/pages/friends_page.dart';
import 'package:split_up/pages/mobile_no_page.dart';
import 'package:split_up/pages/otp_page.dart';

class RouteHelper {
  static const initial = "/";
  static const groupPage = "/group-page";
  static const friendPage = "/friend-page";
  static const mobilePage = "/mobile-page";
  static const otpPage = "/otp-page";

  static getInitial() => '$initial';
  // static getGroupPage() => '$groupPage';
  static getFriendPage() => '$friendPage';
  static getMobilePage() => '$mobilePage';
  static getotpPage() => '$otpPage';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () {
        return HomePage();
      },
    ),
    // Group Page
    GetPage(
      name: groupPage,
      page: () {
        return GroupPage();
      },
      transition: Transition.fadeIn,
    ),
    // Friend Page
    GetPage(
      name: friendPage,
      page: () {
        return FriendsPage();
      },
      transition: Transition.fadeIn,
    ),
    // Mobile Page
    GetPage(
      name: mobilePage,
      page: () {
        return MobileNoPage();
      },
      transition: Transition.fadeIn,
    ),
    // OTP Page
    GetPage(
      name: otpPage,
      page: () {
        return OtpPage();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
