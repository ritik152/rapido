import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

import '../../order_detail_screen/order_detail_screen.dart';

class DeliveryTabScreen extends StatefulWidget {
  const DeliveryTabScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryTabScreen> createState() => _DeliveryTabScreenState();
}

class _DeliveryTabScreenState extends State<DeliveryTabScreen> {
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const OrderDetailScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonText("Bike : 2 months ago", 12, AppColor.hintColor, TextAlign.start),
                              CommonText("\$32.0", 12, AppColor.hintColor, TextAlign.start)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonText("Dropped", 12, AppColor.greenColor, TextAlign.start),
                              CommonText("QR Pay", 12, AppColor.black, TextAlign.start)
                            ],
                          ),
                        ],
                      ),),
                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                      Padding(padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 1,child: Image.asset("assets/icons/black_dot.png",height: 15,width: 15,color: AppColor.greenColor,)),
                                const SizedBox(width: 10,),
                                Expanded(
                                    flex: 9,child: CommonText("8B, Industrial Area, Sector 74,Sahibzara Ajit Singh Nagar,Punjab 160071,India", 12, AppColor.black, TextAlign.start)),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Row(
                              children: [
                                Expanded(
                                    flex: 1,child: Image.asset("assets/icons/black_dot.png",height: 15,width: 15,color: AppColor.redColor,)),
                                const SizedBox(width: 10,),
                                Expanded(
                                    flex: 9,child: CommonText("8B, Industrial Area, Sector 74,Sahibzara Ajit Singh Nagar,Punjab 160071,India", 12, AppColor.black, TextAlign.start)),
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
