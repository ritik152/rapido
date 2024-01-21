import 'package:flutter/material.dart';
import 'package:rapido/screens/number_verify_screen/number_verify_vm.dart';
import 'package:rapido/screens/otp_screen/otp_screen.dart';
import 'package:rapido/utils/buttons.dart';
import 'package:rapido/utils/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../utils/common_widget.dart';

class NumberVerifyScreen extends StatefulWidget {
  const NumberVerifyScreen({Key? key}) : super(key: key);

  @override
  State<NumberVerifyScreen> createState() => _NumberVerifyScreenState();
}

class _NumberVerifyScreenState extends State<NumberVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    var vm = NumberVerifyVM();

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //------------------------------------------PageView------------------------------

              Container(
                color: AppColor.whiteColor,
                height: 220,
                margin: const EdgeInsets.only(top: 10),
                child: Stack(
                  children: [
                    PageView(
                      controller: vm.pageController,
                      children: const [
                        FirstSlide(),
                        SecondSlide(),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.only(right: 20, bottom: 20),
                      child: SmoothPageIndicator(
                        controller: vm.pageController,
                        count: 2,
                        effect: ExpandingDotsEffect(
                          dotHeight: 6,
                          dotWidth: 6,
                          activeDotColor: AppColor.black,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(right: 20, top: 13),
                      child: Image.asset(
                        "assets/icons/question.png", height: 22, width: 22,),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: BoldText(
                    "Let's get started", 16, AppColor.black, TextAlign.start),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5),
                child: MediumText(
                    "Verify your account using OTP", 13, AppColor.hintColor,
                    TextAlign.start),
              ),

              //------------------------------------------Number Field----------------------------

              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.grayColor, width: 1.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: MediumText(
                          "+91", 15, AppColor.black, TextAlign.center),),
                    Expanded(
                      flex: 8,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Bold",
                            color: AppColor.black),
                        decoration: InputDecoration(
                          counterText: "",
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: const EdgeInsets.only(bottom: 11,
                                top: 9,
                                right: 15),
                            hintText: "Enter phone number",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontFamily: "Med",
                                color: AppColor.hintColor)
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColor.whiteColor,
        height: 100,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundedButton(text: "Proceed",
                color: AppColor.whiteColor,
                buttonColor: AppColor.yellowColor,
                radios: 5,
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const OtpScreen()));
                },),
            ),

            const SizedBox(height: 10,),

            RichText(text: TextSpan(
              text: 'By continuing, you agree to our',
              style: TextStyle(
                  fontSize: 11,
                  fontFamily: "Med",
                  color: AppColor.hintColor),
              children: <TextSpan>[

                TextSpan(text: ' Terms of Service', style: TextStyle(
                  fontSize: 11,
                  fontFamily: "Med",
                  color: AppColor.hintColor,
                  decoration: TextDecoration.underline,
                ),),

                TextSpan(text: ' and', style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Med",
                    color: AppColor.hintColor),),
              ],
            ),),
             Text("Privacy Policy", style: TextStyle(
              fontSize: 11,
              fontFamily: "Med",
              color: AppColor.hintColor,
              decoration: TextDecoration.underline,
            ),)
          ],
        ),
      ),
    );
  }
}


class FirstSlide extends StatelessWidget {
  const FirstSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Image.asset("assets/gifs/first_slide.gif",
              height: 200,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(
                    "Rides that are convenient", 16, AppColor.black, TextAlign.start),
                MediumText(
                    "Across 100+ cities in India", 11, AppColor.hintColor,
                    TextAlign.start)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondSlide extends StatelessWidget {
  const SecondSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Image.asset("assets/gifs/first_slide.gif",
              height: 200,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(
                    "All the way to safety", 16, AppColor.black, TextAlign.start),
                MediumText("2+ Cr+ safe riders beating the traffic", 11,
                    AppColor.hintColor, TextAlign.start)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

