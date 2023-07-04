import 'package:flutter/material.dart';
import 'package:rapido/utils/buttons.dart';

import '../../../utils/color.dart';
import '../../../utils/common_widget.dart';
import '../support/parent_support/parent_support_screen.dart';

class EditEmailScreen extends StatefulWidget {
  const EditEmailScreen({Key? key}) : super(key: key);

  @override
  State<EditEmailScreen> createState() => _EditEmailScreenState();
}

class _EditEmailScreenState extends State<EditEmailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
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
                      child: Image.asset("assets/icons/edit_user.png",height: 90,width: 90,),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: MediumText("Edit Email", 32, AppColor.black, TextAlign.start),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Med",
                    color: AppColor.black),
                decoration: InputDecoration(
                  label: const Text("Email"),
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
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: RoundedButton(text: "Save", color: AppColor.whiteColor, buttonColor: AppColor.black,radios: 40, onTap: (){

        }),
      ),
    );
  }

}
