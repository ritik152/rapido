import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

class GenderDialog extends StatelessWidget {
  const GenderDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        color: AppColor.whiteColor,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText("Select your gender", 16, AppColor.hintColor, TextAlign.start),
            const SizedBox(height: 27,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Image.asset("assets/icons/male.png",height: 25,width: 25,),
                  const SizedBox(width: 20,),
                  MediumText("Male", 16, AppColor.black, TextAlign.start),

                ],
              ),
            ),
            const SizedBox(height: 27,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Image.asset("assets/icons/female.png",height: 27,width: 27,),
                  const SizedBox(width: 20,),
                  MediumText("Female", 16, AppColor.black, TextAlign.start),

                ],
              ),
            ),
            const SizedBox(height: 27,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Image.asset("assets/icons/other.png",height: 27,width: 27,),
                  const SizedBox(width: 20,),
                  MediumText("Other", 16, AppColor.black, TextAlign.start),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
