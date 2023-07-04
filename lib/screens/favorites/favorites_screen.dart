import 'package:flutter/material.dart';
import 'package:rapido/screens/profile/support/parent_support/parent_support_screen.dart';

import '../../utils/color.dart';
import '../../utils/common_widget.dart';
import '../tickets/tickets_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {

  ScrollController _scrollController = ScrollController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController()..addListener(() => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
          slivers: [

            SliverAppBar(
              backgroundColor: AppColor.yellowColor,
              expandedHeight: 180,
              elevation: 20,
              centerTitle: false,
              floating: false,
              pinned: true,
              iconTheme: const IconThemeData(
                color: Colors.black, //change your color here
              ),
              flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: _horizontalTitlePadding,bottom: 12),
                title: Text('Favorite',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Med",
                    fontSize: 20,
                    color: AppColor.black),),
                background: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 90,width: 90,
                    child: Image.asset("assets/icons/customer_service.png",height: 90,width: 90,),
                  ),
                ),
              ),
              actions: [
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ParentSupportScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
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
                  ),
                )
              ],
            ),
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
                                  Expanded(
                                        flex: 2,
                                        child: Image.asset(
                                          "assets/icons/delete.png",
                                          height: 22,
                                          width: 22,
                                        )),
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
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 1,width: double.infinity,color: AppColor.hintColor,);
                },
                childCount: 1
            )),

            SliverList(delegate: SliverChildBuilderDelegate(
                    (context, index){
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/add_favorite.png",height: 40, width: 40,),
                        const SizedBox(width: 10,),
                        Text("Add More",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Med",
                                color: AppColor.black))
                      ],
                    ),
                  );
                },
                childCount: 1
            )),
          ],
        ),
      ),
    );
  }

  double get _horizontalTitlePadding {
    const kBasePadding = 25.0;
    const kMultiplier = 1;

    if (_scrollController.hasClients) {
      if (_scrollController.offset < (180 / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (_scrollController.offset > (180 - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (180 / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      return (_scrollController.offset - (180 / 2)) * kMultiplier +
          kBasePadding;
    }

    return kBasePadding;
  }
}
