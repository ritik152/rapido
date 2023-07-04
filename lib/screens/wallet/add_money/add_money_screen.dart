import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/buttons.dart';
import '../../../utils/color.dart';
import '../../../utils/common_widget.dart';
import 'add_money_vm.dart';

class AddMoneyScreen extends StatefulWidget {
  const AddMoneyScreen({Key? key}) : super(key: key);

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {

  var vm = AddMoneyVM();
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
                      child: GestureDetector(
                          onTap: (() {
                            Navigator.pop(context);
                          }),
                          child: Image.asset(
                            "assets/icons/back.png",
                            height: 25,
                            width: 25,
                          )),
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
                            MediumText("Add Money", 32, AppColor.black, TextAlign.start),
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
                color: AppColor.fieldBackColor,
                height: 100,
                child:  Center(
                  child: IntrinsicWidth(
                    child: TextField(
                      controller: vm.amount,
                      maxLength: 4,
                        keyboardType: TextInputType.number,
                        textAlignVertical: TextAlignVertical.center,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: "Med",
                            color: AppColor.black),
                        decoration: InputDecoration(

                          counterText: "",
                          prefixIcon: Icon(Icons.currency_rupee,color: AppColor.black,),
                          focusColor: AppColor.black,
                          hintText: '0',
                          hintStyle: TextStyle(
                              fontSize: 50,
                              fontFamily: "Med",
                              color: AppColor.black),
                          border: InputBorder.none,
                        ),
                    ),
                  ),
                )
              ),

              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      vm.amount.text = "100";
                      setState(() {

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.transparentBlue
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      child: CommonText("100", 17, AppColor.lightBlue, TextAlign.center),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      vm.amount.text = "200";
                      setState(() {

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.transparentBlue
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      child: CommonText("200", 17, AppColor.lightBlue, TextAlign.center),
                    ),
                  ),
                  GestureDetector(

                      onTap: (){
                        vm.amount.text = "300";
                        setState(() {

                        });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.transparentBlue
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      child: CommonText("300", 17, AppColor.lightBlue, TextAlign.center),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        height: 50,
        child: RoundedButton(text: "Add", color: AppColor.yellowColor, buttonColor: AppColor.black, radios: 5, onTap: (){
         
        }),
      ),
    );
  }

}
