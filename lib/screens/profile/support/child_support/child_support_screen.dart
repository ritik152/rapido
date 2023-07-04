import 'package:flutter/material.dart';
import 'package:rapido/screens/tickets/tickets_screen.dart';

import '../../../../utils/color.dart';
import '../../../../utils/common_widget.dart';

class ChildSupportScreen extends StatefulWidget {
  String title;
  ChildSupportScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<ChildSupportScreen> createState() => _ChildSupportScreenState();
}

class _ChildSupportScreenState extends State<ChildSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const TicketsScreen()));
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/ticket.png",
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                MediumText(
                                    "Tickets", 14, AppColor.black, TextAlign.start)
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
                        child: Image.asset("assets/icons/customer_service.png",height: 90,width: 90,),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                        child: MediumText("Support", 32, AppColor.black, TextAlign.start),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:50, child: BoldText(widget.title, 15, AppColor.black, TextAlign.start)),
                    SizedBox(height:50, child: MediumText("Covid-19 Safety", 15, AppColor.black, TextAlign.start)),
                    SizedBox(height:50, child: MediumText("Ride Insurance", 15, AppColor.black, TextAlign.start)),
                    SizedBox(height:50, child: MediumText("Ride Safety", 15, AppColor.black, TextAlign.start)),
                  ],
                ),
              ),
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
