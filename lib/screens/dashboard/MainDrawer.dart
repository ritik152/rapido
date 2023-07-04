
import 'package:flutter/material.dart';
import 'package:rapido/screens/payment/payment_screen.dart';
import 'package:rapido/screens/refer_and_earn/refer_and_earn_screen.dart';
import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../../utils/strings.dart';
import '../earn_money/earn_money.dart';
import '../my_rating/my_rating.dart';
import '../my_rides/my_rides_screen.dart';
import '../notifications/notifications_screen.dart';
import '../power_pass/power_pass_screen.dart';
import '../profile/profile_screen.dart';
import '../profile/support/parent_support/parent_support_screen.dart';
import '../safety/safety_screen.dart';
import '../settings/settings_screen.dart';

class MainDrawer extends StatelessWidget {

  MainDrawer({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Stack(
        children: [
          Container(

            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(bottom: 75),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
            ),

            child: ListView(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));

                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        Image.asset("assets/images/man.png",height: 55,width: 55,),
                        const SizedBox(width: 15,),
                        Expanded(
                            flex: 7,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Test",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "Bold",
                                                color: AppColor.black)),
                                        Text("+919875644566",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Med",
                                                color: AppColor.hintColor)),
                                      ],
                                    )),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),

                Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyRatingScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/star.png",height: 16,width: 16,),
                            const SizedBox(width: 5,),
                            MediumText("4.89", 14, AppColor.black, TextAlign.start),
                            const SizedBox(width: 8,),
                            CommonText("My Rating", 14, AppColor.hintColor, TextAlign.start),
                          ],
                        ),
                        Image.asset("assets/icons/next.png",height: 25,width: 25,)
                      ],
                    ),
                  ),
                ),

                Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

                const SizedBox(
                  height: 10,
                ),
                _customListTile(
                    context: context,
                    title: "My Rides",
                    icon: 'assets/images/history.png',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyRidesScreen()));

                    }),
                _customListTile(
                    context: context,
                    title: "Payment",
                    icon: 'assets/images/credit_card.png',
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentScreen()));

                    }),
                _customListTile(
                    context: context,
                    title: "Power Pass",
                    icon: 'assets/images/member_card.png',
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const PowerPassScreen()));

                    }),
                _customListTile(
                    context: context,
                    title: "Notifications",
                    icon: 'assets/images/notification.png',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationsScreen()));
                    }),
                _customListTile(
                    context: context,
                    title: "Safety",
                    icon: 'assets/images/shield.png',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SafetyScreen()));
                    }),
                _customListTile(
                    context: context,
                    title: "Refer and Earn",
                    icon: 'assets/icons/gift_box_icon.png',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReferAndEarnScreen()));
                    }),
                _customListTile(
                    context: context,
                    title: "Settings",
                    icon: 'assets/images/setting.png',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingsScreen()));

                    }),
                _customListTile(
                    context: context,
                    title: "Support",
                    icon: 'assets/images/support.png',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ParentSupportScreen()));
                    }),


              ],
            ),

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const EarnMoneyScreen()));
              },
              child: Container(
                color: AppColor.whiteColor,
                margin: const EdgeInsets.only(right: 85),
                height: 70,
                child: Column(
                  children: [
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediumText("Make more money!", 15, AppColor.black, TextAlign.start),
                                CommonText("Became a Captain", 14, AppColor.hintColor, TextAlign.start),
                              ],
                            ),
                            Image.asset("assets/icons/next.png",height: 25,width: 25,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _customListTile({required BuildContext context, required String title,
    String? icon, Widget? leading, required VoidCallback onPressed,
    bool selected = false,}) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 10, 0),
        height: 55,
        child: Row(children: [
          Image.asset(
            icon!,
            height: 33,
            width: 33,
          ),
          const SizedBox(
            width: 20,
          ),
          MediumText(title, 14, AppColor.hintColor,TextAlign.start),
        ]),
      ),
    );
  }

}
