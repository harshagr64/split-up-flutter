import 'package:get/get_navigation/get_navigation.dart';
// import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:split_up/home/group_page.dart';
import 'package:split_up/home/home_page.dart';
import 'package:split_up/pages/friends_page.dart';

class RouteHelper {
  static const initial = "/";
  static const groupPage = "/group-page";
  static const friendPage = "/friend-page";

  static getInitial() => '$initial';
  // static getGroupPage() => '$groupPage';
  static getFriendPage() => '$friendPage';

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
    )
  ];
}
