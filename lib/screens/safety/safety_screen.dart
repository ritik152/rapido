import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';

import '../../utils/common_widget.dart';

class SafetyScreen extends StatefulWidget {
  const SafetyScreen({Key? key}) : super(key: key);

  @override
  State<SafetyScreen> createState() => _SafetyScreenState();
}

class _SafetyScreenState extends State<SafetyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.whiteColor,
        iconTheme: IconThemeData(color: AppColor.black),
        title: MediumText("Safety", 17, AppColor.black, TextAlign.start),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.asset("assets/images/safety.png",fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: BoldText("Safety all the way", 20, AppColor.blue, TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: MediumText("At Rapido, your safety comes first. Here are some measures and provisions to ensure your safety, every time.", 12, AppColor.hintColor, TextAlign.start),
              ),


              Container(
                decoration: BoxDecoration(
                  color: AppColor.transparentYellowColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: BoldText("What we offer?", 20, AppColor.blue, TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("24X7 Proactive Safety Checks", 17, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("We send notifications and follow up calls in case of: \n- Drop at different location \n- Unplanned stops / Vehicle not moving \n- Route deviations during the ride", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          BoldText("24X7 Call masking", 17, AppColor.black, TextAlign.start),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("We keep the identity and contact number of women customers confidential from Captains.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          BoldText("SOS button", 17, AppColor.black, TextAlign.start),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("A button that calls our Central Emergency Response Team who then guide you to onground help.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Late night ride completion check", 17, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("We call you post ride completion for feedback, each time you ride between 10pm - 5am", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          BoldText("Trip insurance", 19, AppColor.black, TextAlign.start),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("From start to finish, all trips are insured by leading insurance players.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                  ],
                ),
              ),



              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: BoldText("Please note, all these safety features only work in case of an online ride through our app. Do not accept offline rides.", 17, AppColor.blue, TextAlign.start),
              ),

              const SizedBox(height: 10,),

              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: BoldText("THINGS YOU CAN DO", 20, AppColor.blue, TextAlign.start),
                    ),

                    const SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Helmet always", 19, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("While riding a Bike-Taxi, always ask for a helmet. In case you don't receive one, inform us via feedback.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Live location sharing", 19, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("For friends & family to track the live status of your ride.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Your ride. Your rules", 19, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("You have every right to ask the Captain to drive as per your comfort, within traffic rules.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Add trusted contacts", 19, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("Make sure to add contacts of your loved ones as trusted contacts. This will help you reach out to them easily", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Don't share personal information", 19, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("• Do not share your contact details with the Captain.- Do not share location via Whatsapp or any third party app. \n• Use communication methods available on the app only.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Always share feedback", 19, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("After every ride, help us know about your experiences so we can make our service safer and more pleasant.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                    const SizedBox(height: 10,),
                    Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: BoldText("Always share feedback", 19, AppColor.black, TextAlign.start)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: MediumText("After every ride, help us know about your experiences so we can make our service safer and more pleasant.", 12, AppColor.hintColor, TextAlign.start),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
