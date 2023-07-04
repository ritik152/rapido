import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.yellowColor,
        iconTheme: IconThemeData(color: AppColor.black),
        title: MediumText("Offers", 17, AppColor.black, TextAlign.start),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MediumText("Rapido Coin Balance", 18, AppColor.black, TextAlign.start),
                        CommonText("You don't have anu coins currently.", 11, AppColor.black, TextAlign.start)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BoldText("0", 25, AppColor.black, TextAlign.start),
                        const SizedBox(width: 5,),
                        Image.asset("assets/icons/coin.png",height: 25,width: 25,)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/coin_s.png",height: 70,width: 70,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: MediumText("Now Save more on ride using Rapido Coins !", 16, AppColor.black,
                              TextAlign.start),
                        ),
                        Icon(Icons.navigate_next,size: 25,color: AppColor.black,)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                MediumText("Available Coupons", 18, AppColor.black, TextAlign.start),
                const SizedBox(height: 20,),
                TextField(
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Med",
                      color: AppColor.black),
                  decoration: InputDecoration(
                    label: const Text("Enter Coupon Code"),
                    filled: true,
                    fillColor: AppColor.offWhite,
                    labelStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: "Med",
                        color: AppColor.hintColor),
                    suffix: MediumText("Check", 17, AppColor.lightBlue, TextAlign.start),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.black,width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.black,width: 2),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.cardTop,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset("assets/icons/documents.png",height: 25,width: 25,),
                            const SizedBox(width: 15,),
                            CommonText("AUTO OFFER", 15, AppColor.whiteColor, TextAlign.start)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.40,
                                  child: MediumText("AUTO15", 16, AppColor.black,
                                      TextAlign.start),
                                ),
                                MediumText("Select", 17, AppColor.lightBlue, TextAlign.start)
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                            const SizedBox(height: 15,),
                            CommonText("Get 15% OFF", 13, AppColor.black, TextAlign.start),
                            const SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.40,
                                  child: MediumText("Save \$12 on this", 12, AppColor.greenColor,
                                      TextAlign.start),
                                ),
                                GestureDetector(
                                    onTap: (){
                                      showModalBottomSheet(
                                        context: context,
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) {
                                          return Container(
                                            height: 220,
                                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                            decoration: BoxDecoration(
                                                color: AppColor.whiteColor,
                                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                MediumText("Terms and Conditions", 16, AppColor.black, TextAlign.start),
                                                const SizedBox(height: 20,),
                                                Row(
                                                  children: [
                                                    Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                    const SizedBox(width: 10,),
                                                    SizedBox(
                                                        width: MediaQuery.of(context).size.width*0.80,
                                                        child: CommonText("Offer applicable on Auto rides only.", 13, AppColor.hintColor, TextAlign.start)),
                                                  ],
                                                ),
                                                const SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                    const SizedBox(width: 10,),
                                                    SizedBox(width: MediaQuery.of(context).size.width*0.80,
                                                        child: CommonText("Max Discount upto Rs 14.", 13, AppColor.hintColor, TextAlign.start)),
                                                  ],
                                                ),
                                                const SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                    const SizedBox(width: 10,),
                                                    SizedBox(
                                                        width: MediaQuery.of(context).size.width*0.80,
                                                        child: CommonText("Offer valid till 8:00 PM.", 13, AppColor.hintColor, TextAlign.start)),
                                                  ],
                                                ),
                                                const SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                    const SizedBox(width: 10,),
                                                    SizedBox(
                                                        width: MediaQuery.of(context).size.width*0.80,
                                                        child: CommonText("Expires on 31 July, 2023", 13, AppColor.hintColor, TextAlign.start)),
                                                  ],
                                                ),
                                                const SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                    const SizedBox(width: 10,),
                                                    SizedBox(
                                                        width: MediaQuery.of(context).size.width*0.80,
                                                        child: CommonText("Rapido reserves the right to modify or terminate the offer at any time.", 13, AppColor.hintColor, TextAlign.start)),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: MediumText("View Details", 13, AppColor.lightBlue, TextAlign.start))
                              ],
                            ),
                            const SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
