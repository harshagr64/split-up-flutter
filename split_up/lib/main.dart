import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:split_up/home/demo.dart';
import 'package:split_up/home/group_page.dart';
import 'package:split_up/home/home_page.dart';
import 'package:split_up/pages/friends_page.dart';
import 'package:split_up/pages/mobile_no_page.dart';
import 'package:split_up/pages/new_user_page.dart';
import 'package:split_up/pages/otp_page.dart';
// import 'package:split_up/pages/svg_home.dart';
import 'package:split_up/routes/route_helper.dart';
import 'package:split_up/helper/dependencies.dart' as dependencies;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // before we can use firebase, we need to initialize it 
  await Firebase.initializeApp();
  // we also need to initialize controllers as these are dependency for our app
  await dependencies.init();
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
      // home: const MobileNoPage(),
      initialRoute: RouteHelper.mobilePage,
      getPages: RouteHelper.routes,
    );
  }
}
