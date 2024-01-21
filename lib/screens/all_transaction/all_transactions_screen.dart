import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

class AllTransactionsScreen extends StatefulWidget {

  const AllTransactionsScreen({Key? key}) : super(key: key);

  @override
  State<AllTransactionsScreen> createState() => _AllTransactionsScreenState();

}

class _AllTransactionsScreenState extends State<AllTransactionsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.yellowColor,
        title: MediumText("Wallet Transactions", 17, AppColor.black, TextAlign.start),
        iconTheme: IconThemeData(
          color: AppColor.black
        ),
      ),
      body: SizedBox(
        child: ListView.builder(itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
              child: Row(
                children: [
                  Image.asset("assets/icons/transactions_icons.png",height: 40,width: 40,),
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
                                  CommonText("Ride completed", 13, AppColor.black, TextAlign.start),
                                  MediumText("Full ride fare: \$10.00", 13, AppColor.hintColor, TextAlign.start),
                                ],
                              )
                          ),
                          MediumText("-\$10.00", 13, AppColor.redColor, TextAlign.start)
                        ],
                      )
                  )
                ],
              ),
            ),
          );
        }),),
    );
  }

}
