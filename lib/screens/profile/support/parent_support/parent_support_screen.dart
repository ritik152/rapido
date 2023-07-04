import 'package:flutter/material.dart';

import '../../../../utils/color.dart';
import '../../../../utils/common_widget.dart';
import '../../../tickets/tickets_screen.dart';
import '../child_support/child_support_screen.dart';

class ParentSupportScreen extends StatefulWidget {
  const ParentSupportScreen({Key? key}) : super(key: key);

  @override
  State<ParentSupportScreen> createState() => _ParentSupportScreenState();
}

class _ParentSupportScreenState extends State<ParentSupportScreen> {

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
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Safety & Security")));
                      },
                        child: SizedBox(height:50, child: MediumText("Safety & Security", 15, AppColor.black, TextAlign.start))),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Billing/Ride Related Issues")));
                        },
                        child: SizedBox(height:50, child: MediumText("Billing/Ride Related Issues", 15, AppColor.black, TextAlign.start))),
                    GestureDetector(
                        onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Account & App")));
                    },
                        child: SizedBox(height:50, child: MediumText("Account & App", 15, AppColor.black, TextAlign.start))),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Referrals")));
                        },
                        child: SizedBox(height:50, child: MediumText("Referrals", 15, AppColor.black, TextAlign.start))),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Payment & Wallets")));
                        },
                        child: SizedBox(height:50, child: MediumText("Payment & Wallets", 15, AppColor.black, TextAlign.start))),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Power Pass")));
                        },
                        child: SizedBox(height:50, child: MediumText("Power pass", 15, AppColor.black, TextAlign.start))),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Other Issues")));
                        },
                        child: SizedBox(height:50, child: MediumText("Other Issues", 15, AppColor.black, TextAlign.start))),
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
