import 'package:flutter/material.dart';
import 'package:rapido/utils/buttons.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

import '../profile/support/parent_support/parent_support_screen.dart';

class ReferAndEarnScreen extends StatefulWidget {
  const ReferAndEarnScreen({Key? key}) : super(key: key);

  @override
  State<ReferAndEarnScreen> createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBlue,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.lightBlue,
        centerTitle: true,
        title: MediumText(
            "Refer Friend", 17, AppColor.whiteColor, TextAlign.center),
        iconTheme: IconThemeData(color: AppColor.whiteColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ParentSupportScreen()));
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/question.png",
                    height: 20,
                    width: 20,
                    color: AppColor.whiteColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  MediumText(
                      "FAQs", 14, AppColor.whiteColor, TextAlign.start)
                ],
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
        children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "assets/images/refer_image.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/rupee_icon.png",
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CommonText("Invite Friends to app", 15, AppColor.black,
                              TextAlign.start)
                        ],
                      ),
                      CommonText(
                          "Invite", 15, AppColor.lightBlue, TextAlign.start)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText("How it work?", 14, AppColor.black,
                              TextAlign.start),
                          CommonText(
                              "T&Cs", 14, AppColor.lightBlue, TextAlign.start)
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/rupee_icon.png",
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.50,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      BoldText("Your friend complete 1 order", 14, AppColor.black, TextAlign.start),
                                      MediumText("within 7 days of registration", 11, AppColor.hintColor, TextAlign.start),
                                      MediumText("Friend earn \$25 coins", 11, AppColor.greenColor, TextAlign.start),
                                    ],
                                  ))
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.greenColor),
                              color: AppColor.fieldBackColor
                            ),
                              child: Column(
                                children: [
                                  BoldText("\$50", 13, AppColor.black, TextAlign.start),
                                  MediumText("you earn", 11, AppColor.hintColor, TextAlign.start),
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
          )),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 45,
          width: double.infinity,
          child: RoundedButton(
              text: "Refer Now",
              color: AppColor.black,
              buttonColor: AppColor.yellowColor,
              radios: 6,
              onTap: () {}),
        ),
      ),
    );
  }
}
