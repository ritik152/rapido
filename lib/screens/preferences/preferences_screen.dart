import 'package:flutter/material.dart';
import 'package:rapido/screens/preferences/preferences_vm.dart';

import '../../dialogs/logout_dialog.dart';
import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../favorites/favorites_screen.dart';
import '../profile/profile_screen.dart';
import '../profile/support/parent_support/parent_support_screen.dart';

class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({Key? key}) : super(key: key);

  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {

  var vm = PreferencesVM();
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
                        ],
                      ),
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                        child: Image.asset("assets/icons/preferences_icon.png",height: 90,width: 90,),
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
                            MediumText("Preferences", 32, AppColor.black, TextAlign.start),
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
                      BoldText("Email", 15, AppColor.hintColor, TextAlign.start),


                      const SizedBox(height: 20,),


                      Row(
                        children: [
                          Expanded(
                            flex: 80,
                              child: Container(child:CommonText("Allow emails for promotions and others", 15, AppColor.black, TextAlign.start),)),
                          Expanded(
                            flex: 15,
                              child: Switch(
                                activeColor: AppColor.black,
                                  value: vm.emailOffer, onChanged: (value){
                                vm.emailOffer = value;
                                setState(() {

                                });
                              })),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Container(child:CommonText("Allow emails for invoice", 15, AppColor.black, TextAlign.start),)),
                          Expanded(
                              flex: 15,
                              child: Switch(
                                  activeColor: AppColor.black,
                                  value: vm.emailInvoice, onChanged: (value){
                                vm.emailInvoice = value;
                                setState(() {

                                });
                              })),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

                      const SizedBox(height: 20,),

                      BoldText("Push Notification", 15, AppColor.hintColor, TextAlign.start),

                      const SizedBox(height: 20,),

                      Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Container(child:CommonText("Allow SMS for invoice", 15, AppColor.black, TextAlign.start),)),
                          Expanded(
                              flex: 15,
                              child: Switch(
                                  activeColor: AppColor.black,
                                  value: vm.smsInvoice, onChanged: (value){
                                vm.smsInvoice = value;
                                setState(() {

                                });
                              })),
                        ],
                      ),

                      const SizedBox(height: 20,),


                      Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Container(child:CommonText("Allow promotional SMS offers", 15, AppColor.black, TextAlign.start),)),
                          Expanded(
                              flex: 15,
                              child: Switch(
                                  activeColor: AppColor.black,
                                  value: vm.smsOffer, onChanged: (value){
                                vm.smsOffer = value;
                                setState(() {

                                });
                              })),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Container(child:CommonText("Allow update to be sent on Whatsapp", 15, AppColor.black, TextAlign.start),)),
                          Expanded(
                              flex: 15,
                              child: Switch(
                                  activeColor: AppColor.black,
                                  value: vm.updateSent, onChanged: (value){
                                vm.updateSent = value;
                                setState(() {

                                });
                              })),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

                      const SizedBox(height: 20,),

                      BoldText("Picture in picture (PIP)", 15, AppColor.hintColor, TextAlign.start),
                      const SizedBox(height: 20,),

                      Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Container(child:CommonText("Allow picture in picture access", 15, AppColor.black, TextAlign.start),)),
                          Expanded(
                              flex: 15,
                              child: Switch(
                                  activeColor: AppColor.black,
                                  value: vm.pictureAccess, onChanged: (value){
                                vm.pictureAccess = value;
                                setState(() {

                                });
                              })),
                        ],
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
