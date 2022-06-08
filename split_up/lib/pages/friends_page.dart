import 'package:flutter/material.dart';
import 'package:split_up/utils/colors.dart';
import 'package:split_up/utils/dimensions.dart';
import 'package:split_up/widgets/big_text.dart';
import 'package:split_up/widgets/small_text.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Icon(Icons.person_add_alt_outlined, color: AppColors.blueColor),
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
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        /* Group Image */
                        Container(
                          width: Dimensions.height20 * 3,
                          height: Dimensions.height20 * 3,
                          padding: EdgeInsets.all(Dimensions.height15),
                          decoration: BoxDecoration(
                            color: AppColors.orangeColor.withOpacity(0.15),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius5 * 6),
                          ),
                          child: Image.asset('assets/images/user.png'),
                        ),
                        SizedBox(
                          width: Dimensions.height20,
                        ),
                        /* Group Details */
                        Expanded(
                          // color: Colors.red,
                          // width: double.maxFinite,

                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(
                                text: "Nitin Tilwani",
                                color: AppColors.blueColor.withOpacity(0.9),
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                width: Dimensions.height5,
                              ),
                              Column(
                                children: [
                                  SmallText(
                                    text: "you owe",
                                    color: AppColors.lightBlueColor,
                                    size: 14,
                                    // fontWeight: FontWeight.w700,
                                  ),
                                  BigText(
                                    text: "₹ 941.10",
                                    color: AppColors.orangeColor,
                                    fontWeight: FontWeight.bold,
                                    size: Dimensions.font18,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
