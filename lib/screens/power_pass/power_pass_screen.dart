import 'package:flutter/material.dart';
import 'package:rapido/utils/buttons.dart';

import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../my_rides/tabs/delivery_tab_screen/delivery_tab_screen.dart';
import '../my_rides/tabs/ride_tab_screen/ride_tab_screen.dart';

class PowerPassScreen extends StatefulWidget {
  const PowerPassScreen({Key? key}) : super(key: key);

  @override
  State<PowerPassScreen> createState() => _PowerPassScreenState();
}

class _PowerPassScreenState extends State<PowerPassScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            backgroundColor: AppColor.yellowColor,
            iconTheme: IconThemeData(color: AppColor.black),
            title: MediumText("Power Pass", 17, AppColor.black, TextAlign.start),
            bottom: TabBar(
              indicatorColor: AppColor.black,
              tabs: [
                SizedBox(
                    height: 30,
                    child: CommonText("Bike", 15, AppColor.black, TextAlign.center)),
                SizedBox(
                    height: 30,
                    child: CommonText("Auto", 15, AppColor.black, TextAlign.center)),
              ],
            ),
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              BikePass(),
              BikePass(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20),
          height: 90,
          child: RoundedButton(text: "Buy Pass", color: AppColor.black, buttonColor: AppColor.yellowColor, radios: 5, onTap: (){

          }),
        ),
      ),
    );
  }
}


class BikePass extends StatefulWidget {
  const BikePass({Key? key}) : super(key: key);

  @override
  State<BikePass> createState() => _BikePassState();
}

class _BikePassState extends State<BikePass> {

  var click = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        child: Expanded(
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){

                    setState(() {
                      click = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    margin: (click != index)?const EdgeInsets.symmetric(horizontal: 15):const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      color: AppColor.passCards,
                      shape: (click == index)?RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),
                        side:  BorderSide(color: AppColor.yellowColor, width: 4.0), ):
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    BoldText("Bike Unlimited Pass", 17, AppColor.whiteColor, TextAlign.start),
                                    GestureDetector(
                                      onTap: (){
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          builder: (context) {
                                            return Container(
                                              height: 200,
                                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                              decoration: BoxDecoration(
                                                  color: AppColor.whiteColor,
                                                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  MediumText("Terms and Conditions", 20, AppColor.black, TextAlign.start),
                                                  const SizedBox(height: 20,),
                                                  Row(
                                                    children: [
                                                      Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                      const SizedBox(width: 10,),
                                                      SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.80,
                                                          child: CommonText("The Pass is applicable for Bike only.", 13, AppColor.hintColor, TextAlign.start)),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 17,),
                                                  Row(
                                                    children: [
                                                      Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                      const SizedBox(width: 10,),
                                                      SizedBox(width: MediaQuery.of(context).size.width*0.80,
                                                          child: CommonText("The Pass is applicable Pan India.", 13, AppColor.hintColor, TextAlign.start)),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 17,),
                                                  Row(
                                                    children: [
                                                      Image.asset("assets/icons/black_dot.png",height: 8,width: 8,),
                                                      const SizedBox(width: 10,),
                                                      SizedBox(
                                                        width: MediaQuery.of(context).size.width*0.80,
                                                          child: CommonText("25% of up to Rs. 10 on all rides done with this pass.", 13, AppColor.hintColor, TextAlign.start)),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                        child: CommonText("View Details", 13, AppColor.whiteColor, TextAlign.start))
                                  ],
                                ),
                                Row(
                                  children: [
                                    CommonText("\$79", 22, AppColor.whiteColor, TextAlign.start),
                                    const SizedBox(width: 10,),
                                    Text(
                                      '\$449',
                                      style: TextStyle(decoration: TextDecoration.lineThrough,color: AppColor.fieldBackColor,fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),),
                          Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                          Padding(padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    MediumText("Discount*", 12, AppColor.fieldBackColor, TextAlign.center),
                                    MediumText("25%", 13, AppColor.whiteColor, TextAlign.center),
                                  ],
                                ),
                                Container(height: 50,width: 1.2,color: AppColor.fieldBackColor,),
                                Column(
                                  children: [
                                    MediumText("Validity", 12, AppColor.fieldBackColor, TextAlign.center),
                                    MediumText("30 Days", 13, AppColor.whiteColor, TextAlign.center),
                                  ],
                                ),
                                Container(height: 50,width: 1.2,color: AppColor.fieldBackColor,),
                                Column(
                                  children: [
                                    MediumText("Total rides", 12, AppColor.fieldBackColor, TextAlign.center),
                                    MediumText("Unlimited rides", 13, AppColor.whiteColor, TextAlign.center),
                                  ],
                                ),
                              ],
                            ),),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
