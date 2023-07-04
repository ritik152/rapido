import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rapido/screens/dashboard/dashboard_screen.dart';
import 'package:rapido/screens/otp_screen/otp_vm.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var vm = OtpVM();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    vm.countdownTimer!.cancel();
  }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColor.yellowColor, width: 2),
      color: AppColor.whiteColor,
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  _onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this.vm.otpCode = otpCode;
      if (otpCode.length == vm.otpCodeLength && isAutofill) {
        vm.enableButton = false;
        vm.isLoadingButton = true;
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardScreen()));
      } else if (otpCode.length == vm.otpCodeLength && !isAutofill) {
        vm.enableButton = true;
        vm.isLoadingButton = false;
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardScreen()));
      } else {
        vm.enableButton = false;
      }
    });
  }

  void startTimer() {
    vm.countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = vm.myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        vm.countdownTimer!.cancel();
      } else {
        vm.myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    String seconds = strDigits(vm.myDuration.inSeconds.remainder(60));

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
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
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
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/question.png",
                                height: 22,
                                width: 22,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MediumText(
                                  "Help", 12, AppColor.black, TextAlign.start)
                            ],
                          )
                        ],
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
                  margin: const EdgeInsets.only(left: 30),
                  child: BoldText("Enter the OTP", 17, AppColor.black, TextAlign.start)),
              const SizedBox(
                height: 5,
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 30),
                  child: MediumText("We have sent an otp to 1234567898", 13,
                      AppColor.black, TextAlign.start)),
              const SizedBox(
                height: 30,
              ),
              TextFieldPin(
                  textController: vm.otp,
                  autoFocus: true,
                  codeLength: vm.otpCodeLength,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 40.0,
                  margin: 5,
                  selectedBoxSize: 40.0,
                  textStyle: const TextStyle(fontSize: 16),
                  defaultDecoration: _pinPutDecoration.copyWith(border: Border.all(color: AppColor.black, width: 2)),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    _onOtpCallBack(code, false);
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText("Didn't receive the OTP ? ", 12,
                      AppColor.hintColor, TextAlign.end),
                  BoldText(
                      (seconds == "00") ? " Try again via" : " ${seconds}s",
                      12,
                      AppColor.hintColor,
                      TextAlign.start)
                ],
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  width: 110,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColor.hintColor)),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/whatsapp.png",
                        height: 15,
                        width: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      MediumText(
                          "WhatsApp", 12, AppColor.hintColor, TextAlign.start)
                    ],
                  ),
                ),
              ),
              Container(
                width: 110,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColor.hintColor)),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/sms.png",
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    MediumText("SMS", 12, AppColor.hintColor, TextAlign.start)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: MediumText(
              "By tapping on WhatsApp, you agree to receive important communications such as OTP, payment details over Whatsapp",
              10,
              AppColor.hintColor,
              TextAlign.center)),
    );
  }
}
