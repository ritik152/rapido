import 'package:flutter/material.dart';
import 'package:rapido/screens/passbook/passbook_vm.dart';
import 'package:rapido/utils/color.dart';

import '../../utils/buttons.dart';
import '../../utils/common_widget.dart';
import '../profile/support/parent_support/parent_support_screen.dart';

class PassbookScreen extends StatefulWidget {
  const PassbookScreen({Key? key}) : super(key: key);

  @override
  State<PassbookScreen> createState() => _PassbookScreenState();
}

class _PassbookScreenState extends State<PassbookScreen> {

  var vm = PassbookVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColorBack,
      body: SafeArea(
        child: NestedScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: vm.scrollController,
            headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: AppColor.yellowColor,
                  expandedHeight: 180,
                  elevation: 20,
                  pinned: true,
                  centerTitle: false,
                  iconTheme: const IconThemeData(
                    color: Colors.black, //change your color here
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(left: horizontalTitlePadding, bottom: 12),
                    title: Text(
                      'Passbook',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Med",
                          fontSize: 18,
                          color: AppColor.black),
                    ),
                    background: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 90,
                        width: 90,
                        child: Image.asset(
                          "assets/icons/bank_building.png",
                          height: 90,
                          width: 90,
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ParentSupportScreen()));
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
                    ),
                  ],
                ),

              ];
            },
            body: Expanded(
              child:
              ListView.builder(
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 85,
                                width: 4,
                                decoration: BoxDecoration(
                                  color: index.isOdd ?AppColor.redColor:AppColor.greenColor,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                  flex: 7,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                            children: [
                                              Text(
                                                  index.isOdd ?"DEBIT":"CREDIT",
                                                  overflow:
                                                  TextOverflow
                                                      .ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily:
                                                      "Med",
                                                      color: AppColor
                                                          .black)),
                                              Text("QRPAY",
                                                  maxLines: 2,
                                                  overflow:
                                                  TextOverflow
                                                      .ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily:
                                                      "Med",
                                                      color: AppColor
                                                          .hintColor)),
                                            ],
                                          )),
                                      Expanded(
                                          flex: 5,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                  "11 Apr 2023,01:53 PM",
                                                  overflow:
                                                  TextOverflow
                                                      .ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily:
                                                      "Med",
                                                      color: AppColor
                                                          .hintColor)),
                                              Text(index.isOdd ?"- \$32":"+ \$32",
                                                  maxLines: 2,
                                                  overflow:
                                                  TextOverflow
                                                      .ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily:
                                                      "Bold",
                                                      color: AppColor
                                                          .black)),
                                            ],
                                          )),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
        ),
      ),
    );
  }

  double get horizontalTitlePadding {
    const kBasePadding = 25.0;
    const kMultiplier = 1;

    if (vm.scrollController.hasClients) {
      if (vm.scrollController.offset < (180 / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (vm.scrollController.offset > (180 - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (180 / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      return (vm.scrollController.offset - (180 / 2)) * kMultiplier +
          kBasePadding;
    }

    return kBasePadding;
  }
}
