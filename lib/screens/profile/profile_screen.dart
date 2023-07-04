import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:rapido/dialogs/gender_dialog.dart';
import 'package:rapido/screens/profile/support/parent_support/parent_support_screen.dart';
import '../../dialogs/logout_dialog.dart';
import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../emergency_contacts/emergency_contacts_screen.dart';
import 'edit_email/edit_email_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                        child: Image.asset("assets/icons/user.png",height: 90,width: 90,),
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
                            MediumText("Test", 32, AppColor.black, TextAlign.start),
                            MediumText("+919876543212", 15, AppColor.hintColor, TextAlign.start)
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
                      BoldText("Profile", 15, AppColor.hintColor, TextAlign.start),

                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditEmailScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/mail.png",height: 40,width: 40,),
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
                                            CommonText("Email", 15, AppColor.hintColor, TextAlign.start),
                                            MediumText("test@yopmail.com", 15, AppColor.black, TextAlign.start),
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
                          showDialog(context: context, builder: (context)=> const GenderDialog());
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
                                            CommonText("Gender", 15, AppColor.hintColor, TextAlign.start),
                                            MediumText("Male", 15, AppColor.black, TextAlign.start),
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

                          var datePicked = await DatePicker.showSimpleDatePicker(
                            context,
                            initialDate: DateTime(2012),
                            firstDate: DateTime(1960),
                            lastDate: DateTime(2012),
                            dateFormat: "dd-MMMM-yyyy",
                            locale: DateTimePickerLocale.en_us,
                            looping: false,
                            backgroundColor: AppColor.whiteColor
                          );

                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/calendar.png",height: 40,width: 40,),
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
                                            CommonText("Date of birth", 15, AppColor.redColor, TextAlign.start),
                                            MediumText("Required", 15, AppColor.black, TextAlign.start),
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
                                          CommonText("Member since", 15, AppColor.hintColor, TextAlign.start),
                                          MediumText("May 2022", 15, AppColor.black, TextAlign.start),
                                        ],
                                      )),
                                ],
                              ))
                        ],
                      ),


                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const EmergencyContactsScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/siren.png",height: 40,width: 40,),
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
                                            CommonText("Emergency contacts", 15, AppColor.hintColor, TextAlign.start),
                                            MediumText("Share ride details with trusted contacts", 15, AppColor.black, TextAlign.start),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 20,),

                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

                      const SizedBox(height: 20,),

                      BoldText("Others", 15, AppColor.hintColor, TextAlign.start),

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
                                            CommonText("Logout", 15, AppColor.hintColor, TextAlign.start),
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
