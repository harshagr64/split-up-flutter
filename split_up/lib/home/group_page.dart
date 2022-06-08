// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/dimensions.dart';
import 'package:split_up/widgets/big_text.dart';
import 'package:split_up/widgets/small_text.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    print(Dimensions.screenWidth);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
        title: Text(
          "Split Up",
          style: TextStyle(
              color: AppColors.orangeColor,
              fontFamily: 'Dosis',
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Icon(Icons.group_add_outlined, color: AppColors.blueColor),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: Dimensions.height20,
          left: Dimensions.height15,
          right: Dimensions.height15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Overall Owe Text */
            BigText(
              text: "Overall, you owe ₹ 941.10",
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            /* All the Group List */
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: Dimensions.height20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /* Group Image */
                        Container(
                          width: Dimensions.height20 * 5,
                          height: Dimensions.height20 * 5,
                          padding: EdgeInsets.all(Dimensions.height5 * 5),
                          decoration: BoxDecoration(
                            color: AppColors.orangeColor.withOpacity(0.15),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius5 * 5),
                          ),
                          child: Image.asset('assets/images/user-group.png'),
                        ),
                        SizedBox(
                          width: Dimensions.height20,
                        ),
                        /* Group Details */
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Garden Viw PG Homes",
                              color: AppColors.blueColor.withOpacity(0.9),
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              height: Dimensions.height5,
                            ),
                            BigText(
                              text: "settled up",
                              color: AppColors.lightBlueColor,
                              // fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
