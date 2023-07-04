import 'package:flutter/material.dart';
import 'package:rapido/utils/buttons.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../profile/support/parent_support/parent_support_screen.dart';
import 'earn_money_vm.dart';

class EarnMoneyScreen extends StatefulWidget {
  const EarnMoneyScreen({Key? key}) : super(key: key);

  @override
  State<EarnMoneyScreen> createState() => _EarnMoneyScreenState();
}

class _EarnMoneyScreenState extends State<EarnMoneyScreen> {

  var vm = EarnMoneyVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.yellowColor,
        iconTheme: IconThemeData(color: AppColor.black),
        title: MediumText("Earn Money", 17, AppColor.black, TextAlign.start),
        actions: [
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ParentSupportScreen()));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
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
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColor.transparentYellowColor,
              padding: const EdgeInsets.all(20),
              child: Column(
              children: [
                BoldText("Become a captain to drive and earn money on Rapido.", 19, AppColor.black, TextAlign.start),

                const SizedBox(height: 10,),

                Container(
                  height: 100,
                  margin: const EdgeInsets.only(top: 10),
                  child: PageView(
                    controller: vm.pageController,
                    children: [
                      Card(
                        color: AppColor.whiteColor,
                        elevation: 7,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MediumText("Zero pressure rides", 17, AppColor.black, TextAlign.start),
                                      const SizedBox(height: 5,),
                                      CommonText("Take order when ever you are comfortable.", 12, AppColor.hintColor, TextAlign.start),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset("assets/images/relax.png",height: 70,width: 70,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: AppColor.whiteColor,
                        elevation: 7,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MediumText("Redeemable earning", 17, AppColor.black, TextAlign.start),
                                      const SizedBox(height: 5,),
                                      CommonText("You can easily withdraw earnings for every complete orders", 12, AppColor.hintColor, TextAlign.start),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset("assets/images/relax.png",height: 70,width: 70,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: AppColor.whiteColor,
                        elevation: 7,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MediumText("Insured rides", 17, AppColor.black, TextAlign.start),
                                      const SizedBox(height: 5,),
                                      CommonText("Up to Rs 5 Lakh insurance coverage for Captain & family", 12, AppColor.hintColor, TextAlign.start),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset("assets/images/relax.png",height: 70,width: 70,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 20,top: 10),
                  child: SmoothPageIndicator(
                    controller: vm.pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotHeight: 6,
                      dotWidth: 6,
                      activeDotColor: AppColor.black,
                    ),
                  ),
                ),
              ],
            ),),

            Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText("What do you need?", 19, AppColor.black, TextAlign.start),

                const SizedBox(height: 15,),
                Row(
                  children: [
                    Image.asset("assets/images/check.png",height: 20,width: 20,),
                    const SizedBox(width: 10,),
                    CommonText("Driving Licence", 15, AppColor.black, TextAlign.start)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Image.asset("assets/images/check.png",height: 20,width: 20,),
                    const SizedBox(width: 10,),
                    CommonText("Vehicle Registration Certificate", 15, AppColor.black, TextAlign.start)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 7,child: Image.asset("assets/images/check.png",height: 20,width: 20,)),
                    const SizedBox(width: 10,),
                    Expanded(flex: 95,child: CommonText("Bike model shouldn't be older then 2010", 15, AppColor.black, TextAlign.start))
                  ],
                ),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: AppColor.blue,width: 2)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call,color: AppColor.blue,),
                              const SizedBox(width: 10,),
                              MediumText("Call us", 15, AppColor.blue, TextAlign.center)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: AppColor.greenColor,width: 2)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Image.asset(
                            "assets/images/whatsapp.png",
                            height: 17,
                            width: 17,
                          ),
                              const SizedBox(width: 10,),
                              MediumText("Call us", 15, AppColor.greenColor, TextAlign.center)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),)

          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: 50,
        width: double.infinity,
        child: RoundedButton(text: "START EARNING", color: AppColor.black, buttonColor: AppColor.yellowColor, radios: 5, onTap: (){

        }),
      ),
    );
  }
}
