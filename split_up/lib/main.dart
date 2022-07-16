import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:split_up/home/demo.dart';
import 'package:split_up/home/group_page.dart';
import 'package:split_up/home/home_page.dart';
import 'package:split_up/pages/friends_page.dart';
import 'package:split_up/pages/mobile_no_page.dart';
import 'package:split_up/routes/route_helper.dart';

void main() {
  runApp(const SplitUp());
}

class SplitUp extends StatelessWidget {
  const SplitUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Split Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MobileNoPage(),
      // initialRoute: Demo,
      getPages: RouteHelper.routes,
    );
  }
}
