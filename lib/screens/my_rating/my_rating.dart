import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

class MyRatingScreen extends StatefulWidget {
  const MyRatingScreen({Key? key}) : super(key: key);

  @override
  State<MyRatingScreen> createState() => _MyRatingScreenState();
}

class _MyRatingScreenState extends State<MyRatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.whiteColor,
        iconTheme: IconThemeData(color: AppColor.black),
        title: Row(
          children: [
            MediumText("My Rating", 17, AppColor.black, TextAlign.start),
            const SizedBox(width: 15,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColor.fieldBackColor)
              ),
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/star.png",height: 16,width: 16,),
                  const SizedBox(width: 5,),
                  MediumText("4.89", 14, AppColor.black, TextAlign.start),
                ],
              ),
            )
          ],
        ),
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
                child: Image.asset("assets/images/rating.png",fit: BoxFit.fitWidth,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: BoldText("How is your rating calculated?", 20, AppColor.blue, TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: MediumText("Rating is calculated as an average of all your past ratings and is measured out of 5 stars. Rating are 100% anonymous,so either you or your Captain will never see rating for an individual ride.", 12, AppColor.hintColor, TextAlign.start),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: BoldText("Understanding Rating", 20, AppColor.blue, TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: MediumText("To foster mutual respect Rapido caption and customer can rate each other on an scale of 1-5, Rating on to understand how you can be a 5 star customer.", 12, AppColor.hintColor, TextAlign.start),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  children: [
                    Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                    const SizedBox(width: 10,),
                    BoldText("Know your Captain", 19, AppColor.black, TextAlign.start),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: MediumText("Knowing a little more about the things that affect a Captain's happiness can help you be a 5-star rider.", 12, AppColor.hintColor, TextAlign.start),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  children: [
                    Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                    const SizedBox(width: 10,),
                    BoldText("Timely", 19, AppColor.black, TextAlign.start),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: MediumText("Check your pick up address and make sure that it is accurate. Reach the pickup spot on time. This helps the Captain get you to your destination on time.", 12, AppColor.hintColor, TextAlign.start),
              ),

             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  children: [
                    Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                    const SizedBox(width: 10,),
                    BoldText("Safety", 19, AppColor.black, TextAlign.start),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: MediumText("Strap on your helmet and relax. Every Captain and Rider should follow the traffic rules at all times.", 12, AppColor.hintColor, TextAlign.start),
              ),

             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  children: [
                    Image.asset("assets/images/user_dummy.png",height: 40,width: 40,),
                    const SizedBox(width: 10,),
                    BoldText("Courtesy", 19, AppColor.black, TextAlign.start),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: MediumText("A smile or a \"Hello\" go a long way! Treat your Captain just how you would like to be treated", 12, AppColor.hintColor, TextAlign.start),
              ),

              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
