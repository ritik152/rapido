import 'package:flutter/material.dart';
import 'package:rapido/screens/my_rides/my_ride_vm.dart';
import 'package:rapido/screens/my_rides/tabs/delivery_tab_screen/delivery_tab_screen.dart';
import 'package:rapido/screens/my_rides/tabs/ride_tab_screen/ride_tab_screen.dart';
import 'package:rapido/utils/buttons.dart';

import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../profile/support/parent_support/parent_support_screen.dart';

class MyRidesScreen extends StatefulWidget {
  const MyRidesScreen({Key? key}) : super(key: key);

  @override
  State<MyRidesScreen> createState() => _MyRidesScreenState();
}

class _MyRidesScreenState extends State<MyRidesScreen> {

  var vm = MyRideVM();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: AppBar(
            backgroundColor: AppColor.yellowColor,
            iconTheme: IconThemeData(color: AppColor.black),
            bottom: TabBar(
              indicatorColor: AppColor.black,
              tabs: [
                SizedBox(
                  height: 30,
                    child: CommonText("Rides", 15, AppColor.black, TextAlign.center)),
                SizedBox(
                    height: 30,
                    child: CommonText("Delivery", 15, AppColor.black, TextAlign.center)),
              ],
            ),
            flexibleSpace: Container(
              margin: const EdgeInsets.only(left: 30,top: 60),
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: MediumText("Orders", 32, AppColor.black, TextAlign.start),
            ),
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              RideTabScreen(),
              DeliveryTabScreen(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          color: AppColor.whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText("For orders more then 90 days", 12, AppColor.black, TextAlign.start),
              GestureDetector(
                onTap: (){

                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Container(
                        height: 480,
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           MediumText("Request Ride History", 20, AppColor.black, TextAlign.start),
                           const SizedBox(height: 20,),
                           CommonText("Select date range (upto 30 days)", 15, AppColor.hintColor, TextAlign.start),
                            const SizedBox(height: 17,),
                            TextField(
                              readOnly: true,
                              controller: vm.startDate,
                              onTap: () async {
                                var data = await vm.selectStartDate(context);

                                if(data == true){
                                  setState(() {

                                  });
                                }
                              },
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Med",
                                  color: AppColor.black),
                              decoration: InputDecoration(
                                label: const Text("Select Start Date"),
                                filled: true,
                                fillColor: AppColor.offWhite,
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Med",
                                    color: AppColor.black),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.black,width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.black,width: 2),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            TextField(
                              readOnly: true,
                              controller: vm.endDate,
                              onTap: () async {
                                var data = await vm.selectEndDate(context);

                                if(data == true){
                                  setState(() {

                                  });
                                }
                              },
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Med",
                                  color: AppColor.black),
                              decoration: InputDecoration(
                                label: const Text("Select End Date"),
                                filled: true,
                                fillColor: AppColor.offWhite,
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Med",
                                    color: AppColor.black),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.black,width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.black,width: 2),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            CommonText("Your email Id", 15, AppColor.hintColor, TextAlign.start),
                            const SizedBox(height: 20,),
                            TextField(
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Med",
                                  color: AppColor.black),
                              decoration: InputDecoration(
                                label: const Text("Your email Id"),
                                filled: true,
                                fillColor: AppColor.offWhite,
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Med",
                                    color: AppColor.black),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.black,width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.black,width: 2),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RoundedButton(text: "Submit", color: AppColor.whiteColor, buttonColor: AppColor.yellowColor, radios: 30, onTap: (){

                              }),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  color: AppColor.yellowColor,
                  padding: const EdgeInsets.all(5),
                  child: CommonText("Request ride history", 12, AppColor.black, TextAlign.center),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



}



