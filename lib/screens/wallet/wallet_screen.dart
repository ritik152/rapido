import 'package:flutter/material.dart';
import 'package:rapido/utils/buttons.dart';

import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../all_transaction/all_transactions_screen.dart';
import '../profile/support/parent_support/parent_support_screen.dart';
import 'add_money/add_money_screen.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: AppColor.yellowColor,
              height: 200,

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
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ParentSupportScreen()));

                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/question.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              MediumText("Support", 14, AppColor.black, TextAlign.start)
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MediumText("Total Wallet Balance", 16, AppColor.black, TextAlign.center),
                          BoldText("\$0.00", 40, AppColor.black, TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                height: 50,
                child: RoundedButton(text: "Add Money", color: AppColor.yellowColor, buttonColor: AppColor.black, radios: 5, onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddMoneyScreen()));
                }),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 160,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icons/rupee_icon.png",height: 25,width: 25,),
                              const SizedBox(width: 20,),
                              CommonText("Rapido Money", 15, AppColor.black, TextAlign.start)
                            ],
                          ),
                          CommonText("\$8.00", 15, AppColor.black, TextAlign.start)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const AllTransactionsScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/icons/documents.png",height: 25,width: 25,),
                                const SizedBox(width: 20,),
                                CommonText("View all transactions", 15, AppColor.black, TextAlign.start)
                              ],
                            ),
                            Icon(Icons.navigate_next_outlined,color: AppColor.hintColor,size: 30,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
