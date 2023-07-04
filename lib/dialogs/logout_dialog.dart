import 'package:flutter/material.dart';
import 'package:rapido/utils/buttons.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(

        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText("Logout?", 20, AppColor.black, TextAlign.start),
            const SizedBox(height: 10,),
            MediumText("Are you sure you want to logout from this app?", 15, AppColor.hintColor, TextAlign.start),
            const SizedBox(height: 27,),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: MediumText("NOT NOW", 15, AppColor.black, TextAlign.start)),
                  const SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7 ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.redColor
                      ),
                        child: MediumText("LOGOUT", 15, AppColor.whiteColor, TextAlign.start)),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
