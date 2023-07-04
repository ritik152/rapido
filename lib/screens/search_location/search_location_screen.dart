import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';

import '../../utils/common_widget.dart';
import '../map/map_screen.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [

                SliverAppBar(
                  backgroundColor: AppColor.offWhite,
                  elevation: 20,
                  shadowColor: AppColor.hintColor,
                  iconTheme: const IconThemeData(
                    color: Colors.black, //change your color here
                  ),
                  title: TextFormField(
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Med",
                        color: AppColor.black),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                          fontSize: 17,
                          fontFamily: "Med",
                          color: AppColor.hintColor),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      // Perform search functionality here
                    },
                  ),
                ),

                SliverList(delegate: SliverChildBuilderDelegate(
                        (context, index){
                          return Container(
                            margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: BoldText("Favorites", 15, AppColor.hintColor, TextAlign.start));
                },
                  childCount: 1
                )),

                SliverList(delegate: SliverChildBuilderDelegate(
                        (context, index){
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.only(left: 5,right: 15),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColor.redColor),
                                  child:  Icon(Icons.home,size: 20,color: AppColor.whiteColor,),
                                ),
                                Expanded(
                                    flex: 7,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 6,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Home",
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: "Med",
                                                        color: AppColor.black)),
                                                Text("Hindostan times, Phase 7fghfhgfhgfh",
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: "Med",
                                                        color: AppColor.hintColor)),
                                              ],
                                            )),
                                      /*  Expanded(
                                            flex: 2,
                                            child: Image.asset(
                                              "assets/icons/heart.png",
                                              height: 22,
                                              width: 22,
                                            )),*/
                                      ],
                                    ))
                              ],
                            ),
                          );
                },
                  childCount: 1
                )),


                SliverList(delegate: SliverChildBuilderDelegate(
                        (context, index){
                          return Container(
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: BoldText("Others", 15, AppColor.hintColor, TextAlign.start));
                },
                  childCount: 1
                )),

                SliverList(delegate: SliverChildBuilderDelegate(
                        (context, index){
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.only(left: 5,right: 15),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColor.hintColor),
                                  child: Icon(Icons.location_on,size: 20,color: AppColor.whiteColor,),
                                ),
                                Expanded(
                                    flex: 7,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 6,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Home",
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: "Med",
                                                        color: AppColor.black)),
                                                Text("Hindostan times, Phase 7fghfhgfhgfh",
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: "Med",
                                                        color: AppColor.hintColor)),
                                              ],
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Image.asset(
                                              "assets/icons/heart.png",
                                              height: 22,
                                              width: 22,
                                            )),
                                      ],
                                    ))
                              ],
                            ),
                          );
                },
                  childCount: 10
                )),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const MapScreen()));
                },
                child: Container(
                  color: AppColor.offWhite,
                  height: 45,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/location_mark.png",height: 25,width: 25,),
                      const SizedBox(width: 10,),
                      MediumText("Select from map", 15, AppColor.black, TextAlign.center)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
