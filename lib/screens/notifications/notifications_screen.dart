import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/common_widget.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
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
                        PopupMenuButton(
                          // add icon, by default "3 dot" icon
                          // icon: Icon(Icons.book)
                            itemBuilder: (context){
                              return [
                                const PopupMenuItem<int>(
                                  value: 0,
                                  child: Text("Clear                    "),
                                ),
                              ];
                            },
                            onSelected:(value){

                            }
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: Image.asset("assets/icons/notification.png",height: 90,width: 90,),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: MediumText("Notifications", 32, AppColor.black, TextAlign.start),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 10,
                          color: AppColor.whiteColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                                child: SizedBox(
                                  height: 180,
                                  width: double.infinity,
                                  child: Image.asset(
                                    "assets/images/refer_image.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5), child: MediumText("Let your friends know that you care!", 16, AppColor.black, TextAlign.start)),
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: CommonText("Refer them now and win 50 Rapido coins.", 13, AppColor.black, TextAlign.start)),
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5), child: CommonText("41 hours ago", 10, AppColor.hintColor, TextAlign.start)),

                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            // NoData("No Notification", "assets/images/no_notification.png",context)
          ],
        ),
      ),
    );
  }
}
