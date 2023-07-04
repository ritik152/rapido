import 'package:flutter/material.dart';
import 'package:rapido/screens/favorites/favorites_screen.dart';
import 'package:rapido/screens/preferences/preferences_screen.dart';
import 'package:rapido/screens/profile/profile_screen.dart';
import 'package:rapido/screens/wallet/wallet_screen.dart';

import '../../dialogs/logout_dialog.dart';
import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../profile/support/parent_support/parent_support_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: AppColor.yellowColor,
                height: 180,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: (() {
                                Navigator.pop(context);
                              }),
                              child: Image.asset(
                                "assets/icons/back.png",
                                height: 25,
                                width: 25,
                              )),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ParentSupportScreen()));
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/question.png",
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                MediumText(
                                    "Support", 14, AppColor.black, TextAlign.start)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                        child: Image.asset("assets/icons/settings.png",height: 90,width: 90,),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MediumText("Settings", 32, AppColor.black, TextAlign.start),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText("General", 15, AppColor.hintColor, TextAlign.start),

                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/gander.png",height: 40,width: 40,),
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
                                            MediumText("Profile", 15, AppColor.black, TextAlign.start),
                                            MediumText("+917898767898", 15, AppColor.hintColor, TextAlign.start),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const FavoritesScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/like_red.png",height: 40,width: 40,),
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
                                            MediumText("Favorites", 15, AppColor.black, TextAlign.start),
                                            MediumText("manage favorite locations", 15, AppColor.hintColor, TextAlign.start),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const PreferencesScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/preferences.png",height: 40,width: 40,),
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
                                            MediumText("Preferences", 15, AppColor.black, TextAlign.start),
                                            MediumText("Manage Preferences", 15, AppColor.hintColor, TextAlign.start),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Image.asset("assets/icons/contact_book.png",height: 40,width: 40,),
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
                                          MediumText("App shortcuts", 15, AppColor.black, TextAlign.start),
                                          MediumText("Create shortcuts on home launcher", 15, AppColor.hintColor, TextAlign.start),
                                        ],
                                      )),
                                ],
                              ))
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

                      const SizedBox(height: 20,),

                      BoldText("Others", 15, AppColor.hintColor, TextAlign.start),

                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () async {
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/about.png",height: 40,width: 40,),
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
                                            MediumText("About", 15, AppColor.black, TextAlign.start),
                                            MediumText("1.0.0", 15, AppColor.hintColor, TextAlign.start),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          showDialog(context: context, builder: (context)=>const LogoutDialog());
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/logout.png",height: 40,width: 40,),
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
                                            MediumText("Logout", 15, AppColor.black, TextAlign.start),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  )),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
