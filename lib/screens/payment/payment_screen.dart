import 'package:flutter/material.dart';
import 'package:rapido/screens/profile/support/parent_support/parent_support_screen.dart';
import 'package:rapido/screens/wallet/wallet_screen.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

import '../passbook/passbook_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  var selectApp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                                MediumText(
                                    "Support", 14, AppColor.black, TextAlign.start)
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
                        child: Image.asset("assets/icons/wallet_icon.png",height: 90,width: 90,),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.symmetric(vertical:  15,horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MediumText("Payment", 32, AppColor.black, TextAlign.start),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText("Personal Wallet", 15, AppColor.hintColor, TextAlign.start),

                      const SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const WalletScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/wallet.png",height: 40,width: 40,),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MediumText("Rapido Wallet", 16, AppColor.black, TextAlign.start),
                                            Row(
                                              children: [
                                                MediumText("\$0.0", 15, AppColor.black, TextAlign.start),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(color: AppColor.fieldBackColor,width: 1)
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/images/paytm.png",height: 40,width: 40,)),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MediumText("Paytm", 16, AppColor.black, TextAlign.start),
                                            Row(
                                              children: [
                                                Image.asset("assets/images/link.png",height: 15,width: 15,color: AppColor.lightBlue,),
                                                const SizedBox(width: 5,),
                                                MediumText("Link", 15, AppColor.lightBlue, TextAlign.start),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration: BoxDecoration(
                                    color: AppColor.orangeColor,
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: AppColor.fieldBackColor,width: 1)
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/images/amazon_pay.png",height: 40,width: 40,)),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MediumText("AmazonPay", 16, AppColor.black, TextAlign.start),
                                            Row(
                                              children: [
                                                Image.asset("assets/images/link.png",height: 15,width: 15,color: AppColor.lightBlue,),
                                                const SizedBox(width: 5,),
                                                MediumText("Link", 15, AppColor.lightBlue, TextAlign.start),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectApp = !selectApp;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: AppColor.fieldBackColor,width: 1)
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/images/upi_image.png",height: 40,width: 40,)),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MediumText("UPI", 16, AppColor.black, TextAlign.start),
                                            Row(
                                              children: [
                                                MediumText("Select App", 14, AppColor.lightBlue, TextAlign.start),
                                                const SizedBox(width: 5,),
                                                Image.asset((selectApp == true)?"assets/icons/up_icon.png":"assets/icons/down_icon.png",height: 15,width: 15,color: AppColor.lightBlue,),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      if(selectApp == true)const SizedBox(height: 25,),
                      if(selectApp == true)Row(
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/images/google_pay.png",height: 40,width: 40,),
                              const SizedBox(height: 5,),
                              CommonText("GPay", 12, AppColor.black, TextAlign.center)
                            ],
                          ),
                          const SizedBox(width: 15,),
                          Column(
                            children: [
                              Image.asset("assets/images/phone_pay.png",height: 40,width: 40,),
                              const SizedBox(height: 5,),
                              CommonText("PhonePe", 12, AppColor.black, TextAlign.center)
                            ],
                          ),
                          const SizedBox(width: 15,),
                          Column(
                            children: [
                              Container(
                                  height: 40,width: 40,
                                  decoration: BoxDecoration(
                                      color: AppColor.whiteColor,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: AppColor.fieldBackColor,width: 1)
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset("assets/images/icic.png",height: 40,width: 40,)),
                              const SizedBox(height: 5,),
                              CommonText("iMobilePay", 12, AppColor.black, TextAlign.center)
                            ],
                          ),
                          const SizedBox(width: 15,),
                          Column(
                            children: [
                              Container(
                                  height: 40,width: 40,
                                  decoration: BoxDecoration(
                                      color: AppColor.whiteColor,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: AppColor.fieldBackColor,width: 1)
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset("assets/images/paytm.png",height: 40,width: 40,)),
                              const SizedBox(height: 5,),
                              CommonText("Paytm", 12, AppColor.black, TextAlign.center)
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 25,),
                      BoldText("Pay Later", 15, AppColor.hintColor, TextAlign.start),
                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/wallet.png",height: 40,width: 40,),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MediumText("Lazypay", 16, AppColor.black, TextAlign.start),
                                            Row(
                                              children: [
                                                Image.asset("assets/images/link.png",height: 15,width: 15,color: AppColor.lightBlue,),
                                                const SizedBox(width: 5,),
                                                MediumText("Link", 15, AppColor.lightBlue, TextAlign.start),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/wallet.png",height: 40,width: 40,),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MediumText("Simpl", 16, AppColor.black, TextAlign.start),
                                            Row(
                                              children: [
                                                Image.asset("assets/images/link.png",height: 15,width: 15,color: AppColor.lightBlue,),
                                                const SizedBox(width: 5,),
                                                MediumText("Link", 15, AppColor.lightBlue, TextAlign.start),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/qr_code.png",height: 40,width: 40,),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            MediumText("Pay at Drop", 15, AppColor.black, TextAlign.start),
                                            MediumText("Go cashless,after ride pay by scanning QR code", 10, AppColor.hintColor, TextAlign.start),
                                          ],
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 25,),

                      BoldText("Other", 15, AppColor.hintColor, TextAlign.start),

                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/rupee.png",height: 40,width: 40,),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: MediumText("Cash", 16, AppColor.black, TextAlign.start)),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 25,),
                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                      const SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const PassbookScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/bank_img.png",height: 40,width: 40,),
                            const SizedBox(width: 15,),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: MediumText("SHOW PASSBOOK", 16, AppColor.black, TextAlign.start)),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      const SizedBox(height: 25,),
                      Container(height: 1,width: double.infinity,color: AppColor.hintColor,),

                      const SizedBox(height: 25,),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
