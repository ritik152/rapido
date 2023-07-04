import 'package:flutter/material.dart';
import 'package:rapido/screens/tickets/tickets_screen.dart';
import 'package:rapido/utils/common_widget.dart';

import '../../../utils/color.dart';
import '../../profile/support/child_support/child_support_screen.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, vsync: this); // initialise it here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.yellowColor,
        iconTheme: IconThemeData(
          color: AppColor.black
        ),
        title: MediumText("Order Details", 20, AppColor.black, TextAlign.start),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const TicketsScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset("assets/icons/ticket.png",height: 25,width: 25,),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText("Service Type", 14, AppColor.black, TextAlign.start),
                  CommonText("Bike", 14, AppColor.black, TextAlign.start)
                ],
              ),

              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText("Date of Ride", 14, AppColor.black, TextAlign.start),
                  CommonText("Apr 11th 2023, 01:38 PM", 14, AppColor.black, TextAlign.start)
                ],
              ),

              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText("Ride ID", 14, AppColor.black, TextAlign.start),
                  CommonText("RD1234567890987656", 14, AppColor.black, TextAlign.start)
                ],
              ),

              const SizedBox(height: 15,),
              
              Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

              const SizedBox(height: 15,),
              
              Row(
                children: [
                  SizedBox(
                    height: 75,width: 75,
                    child: CircleAvatar(
                      child: Image.asset("assets/images/user_dummy.png",fit: BoxFit.fill,),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    height: 75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BoldText("Test Driver", 15, AppColor.black, TextAlign.start),
                        const SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonText("You rated", 13, AppColor.hintColor, TextAlign.start),
                            const SizedBox(width: 5,),
                            Image.asset("assets/icons/star.png",height: 20,width: 20,),
                            const SizedBox(width: 2,),
                            Image.asset("assets/icons/star.png",height: 20,width: 20,),
                            const SizedBox(width: 2,),
                            Image.asset("assets/icons/star.png",height: 20,width: 20,),
                            const SizedBox(width: 2,),
                            Image.asset("assets/icons/star.png",height: 20,width: 20,),
                            const SizedBox(width: 2,),
                            Image.asset("assets/icons/star.png",height: 20,width: 20,),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 15,),

              Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText("Fare", 14, AppColor.black, TextAlign.start),
                  CommonText("\$32.0", 14, AppColor.black, TextAlign.start)
                ],
              ),

              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText("Paid By", 14, AppColor.black, TextAlign.start),
                  CommonText("QR Pay", 14, AppColor.black, TextAlign.start)
                ],
              ),

              const SizedBox(height: 20,),

              Card(
                elevation: 10,
                child:Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediumText("4.19Km", 16, AppColor.black, TextAlign.center),
                          CommonText("DISTANCE", 13, AppColor.hintColor, TextAlign.center)
                        ],
                      )),
                      Container(height: 50,width: 1.5,color: AppColor.fieldBackColor,),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediumText("12.0 mins", 16, AppColor.black, TextAlign.center),
                          CommonText("DURATION", 13, AppColor.hintColor, TextAlign.center)
                        ],
                      )),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25,),
              
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset("assets/icons/3d-map_green.png",height: 20,width: 20,),
                      Container(height: 25,width: 1.5,color: AppColor.fieldBackColor,),
                      Image.asset("assets/icons/3d_map.png",height: 20,width: 20,),

                    ],
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.79,child: Text("8B, Industrial Area, Sector 74,Sahibzara Ajit Singh Nagar,Punjab 160071,India",overflow: TextOverflow.ellipsis,style: TextStyle(color: AppColor.black,fontFamily: "Med"),)),
                      const SizedBox(height: 25,width: 1.5),
                      SizedBox(width: MediaQuery.of(context).size.width*0.79,child: Text("8B, Industrial Area, Sector 74,Sahibzara Ajit Singh Nagar,Punjab 160071,India",overflow: TextOverflow.ellipsis,style: TextStyle(color: AppColor.black,fontFamily: "Med"),)),

                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25,),

              SizedBox(
                width: 200,
                child: TabBar(
                  indicatorColor: AppColor.black,
                  controller: _tabController,
                  tabs: [
                    SizedBox(
                        height: 30,
                        child: BoldText("Support", 17, AppColor.black, TextAlign.center)),
                    SizedBox(
                        height: 30,
                        child: BoldText("Invoice", 17, AppColor.black, TextAlign.center)),
                  ],
                ),
              ),

              SizedBox(
                height: 350,
                child: TabBarView(
                  controller: _tabController,
                    children: const [
                  SupportTab(),
                      InvoiceTab(),
                ]),
              )

            ],
          ),
        ),
      ),
    );
  }
}


class SupportTab extends StatelessWidget {
  const SupportTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Safety & Security")));
            },
            child: Container(padding: const EdgeInsets.only(top: 20), child: CommonText("I have been charged higher then the estimated fare", 14, AppColor.black, TextAlign.start))),
        GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Safety & Security")));
            },
            child: Container(padding: const EdgeInsets.only(top: 20), child: CommonText("Ride Safety", 14, AppColor.black, TextAlign.start))),
        GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Safety & Security")));
            },
            child: Container(padding: const EdgeInsets.only(top: 20), child: CommonText("Billing Related Issues", 14, AppColor.black, TextAlign.start))),
        GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Safety & Security")));
            },
            child: Container(padding: const EdgeInsets.only(top: 20), child: CommonText("I want to report an issue about the Captain/Ride", 14, AppColor.black, TextAlign.start))),
        GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Safety & Security")));
            },
            child: Container(padding: const EdgeInsets.only(top: 20), child: CommonText("Ride Insurance", 14, AppColor.black, TextAlign.start))),
        GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChildSupportScreen(title:"Safety & Security")));
            },
            child: Container(padding: const EdgeInsets.only(top: 20), child: CommonText("Covid-19 Safety", 14, AppColor.black, TextAlign.start))),
      ],
    );
  }
}


class InvoiceTab extends StatelessWidget {
  const InvoiceTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

        const SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText("Ride Charge", 14, AppColor.black, TextAlign.start),
            CommonText("\$30.82", 14, AppColor.black, TextAlign.start)
          ],
        ),

        const SizedBox(height: 15,),

        Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

        const SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText("Book free & Convenience Charges", 14, AppColor.black, TextAlign.start),
            CommonText("\$11.18", 14, AppColor.black, TextAlign.start)
          ],
        ),

        const SizedBox(height: 15,),

        Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

        const SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText("Discount", 14, AppColor.greenColor, TextAlign.start),
            CommonText("\$10.00", 14, AppColor.greenColor, TextAlign.start)
          ],
        ),

        const SizedBox(height: 15,),

        Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

        const SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText("Total Amount", 20, AppColor.black, TextAlign.start),
                CommonText("Inclusive of Taxes", 12, AppColor.hintColor, TextAlign.start)
              ],
            ),
            BoldText("\$32.0", 20, AppColor.black, TextAlign.start)
          ],
        ),

        const SizedBox(height: 20,),


        Align(
          alignment: Alignment.center,
          child: Container(
            width: 160,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColor.black,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail,size: 22,color: AppColor.yellowColor,),
                const SizedBox(width: 10,),
                MediumText("Main Invoice", 14, AppColor.yellowColor, TextAlign.center)
              ],
            ),
          ),
        ),


        const SizedBox(height: 15,),
      ],
    );
  }
}

