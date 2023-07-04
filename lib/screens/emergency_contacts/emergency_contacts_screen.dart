import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:rapido/screens/emergency_contacts/emergency_contacts_vm.dart';
import 'package:rapido/utils/buttons.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common.dart';

import '../../utils/common_widget.dart';
import '../profile/support/parent_support/parent_support_screen.dart';

class EmergencyContactsScreen extends StatefulWidget {
  const EmergencyContactsScreen({Key? key}) : super(key: key);

  @override
  State<EmergencyContactsScreen> createState() =>
      _EmergencyContactsScreenState();
}

class _EmergencyContactsScreenState extends State<EmergencyContactsScreen> {
  var vm = EmergencyContactsVM();

  @override
  void initState() {
    super.initState();
    vm.scrollController = ScrollController()
      ..addListener(() => setState(() {}));

    init();
  }

  @override
  Widget build(BuildContext context) {
    void search(String query) {
      List<Contact> dummySearchList = [];
      dummySearchList.addAll(vm.duplicateItems!);
      if (query.isNotEmpty) {
        List<Contact> dummyListData = [];
        dummySearchList.forEach((item) {
          if (item.displayName.contains(query) ||
              item.displayName.toLowerCase().contains(query)) {
            dummyListData.add(item);
          }
        });
        setState(() {
          vm.contacts!.clear();
          vm.contacts!.addAll(dummyListData);
        });
        return;
      } else {
        setState(() {
          vm.contacts!.clear();
          vm.contacts!.addAll(vm.duplicateItems!);
        });
      }
    }

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
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
                  centerTitle: false,
                  iconTheme: const IconThemeData(
                    color: Colors.black, //change your color here
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(
                        left: vm.horizontalTitlePadding, bottom: 12),
                    title: Text(
                      'Emergency Contacts',
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
                          "assets/icons/customer_service.png",
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
                /*SliverAppBar(
                expandedHeight: 140,
                flexibleSpace: FlexibleSpaceBar(
                    background:Container(
                      color: AppColor.whiteColor,
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Column(
                        children: [
                          if(vm.count == 0)MediumText("You can add upto 4 contacts only", 15, AppColor.black, TextAlign.center),
                          if(vm.count != 0)SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ListView.builder(
                                itemCount: vm.contacts!.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return (vm.contacts![index].isStarred == true)?GestureDetector(
                                    onTap: (){
                                      vm.contacts![index].isStarred = !vm.contacts![index].isStarred;
                                      vm.duplicateItems![index].isStarred = !vm.duplicateItems![index].isStarred;
                                      vm.count -= 1;
                                      setState(() {

                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: AppColor.fieldBackColor
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      margin: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Row(children: [
                                        MediumText(vm.contacts![index].displayName.toString(), 15, AppColor.black, TextAlign.center),
                                        const SizedBox(width: 5,),
                                        Image.asset(
                                          "assets/icons/remove.png",
                                          height: 20,
                                          width: 20,
                                        )
                                      ],),
                                    ),
                                  ):const SizedBox();
                                }),
                          ),

                          const SizedBox(height: 15,),
                          TextFormField(
                            onChanged: (value){
                              search(value);
                            },
                            decoration: InputDecoration(
                                prefixIconColor: Colors.black,
                                contentPadding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                                prefixIcon: const Icon(Icons.search_rounded),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 2, color: Colors.black), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 2, color: Colors.black), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 2, color: Colors.black), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(50.0),
                                )
                            ),
                          )
                        ],
                      ),
                    )
                ),
              )*/
              ];
            },
            body: Column(
              children: [
                Container(
                  color: AppColor.whiteColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      if (vm.count == 0)
                        MediumText("You can add upto 4 contacts only", 15,
                            AppColor.black, TextAlign.center),
                      if (vm.count != 0)
                        SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: vm.contacts!.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return (vm.contacts![index].isStarred == true)
                                    ? GestureDetector(
                                        onTap: () {
                                          vm.contacts![index].isStarred =
                                              !vm.contacts![index].isStarred;
                                          vm.duplicateItems![index].isStarred =
                                              !vm.duplicateItems![index]
                                                  .isStarred;
                                          vm.count -= 1;
                                          setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColor.fieldBackColor),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            children: [
                                              MediumText(
                                                  vm.contacts![index]
                                                      .displayName
                                                      .toString(),
                                                  15,
                                                  AppColor.black,
                                                  TextAlign.center),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Image.asset(
                                                "assets/icons/remove.png",
                                                height: 20,
                                                width: 20,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    : const SizedBox();
                              }),
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          search(value);
                        },
                        decoration: InputDecoration(
                            prefixIconColor: Colors.black,
                            contentPadding: const EdgeInsets.fromLTRB(
                                25.0, 10.0, 25.0, 10.0),
                            prefixIcon: const Icon(Icons.search_rounded),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black),
                              //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            )),
                      )
                    ],
                  ),
                ),
                (vm.isLoading == false)
                    ? (vm.contacts == null || vm.contacts!.isEmpty)
                        ? Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: NoData("No Contacts",
                                "assets/images/communication.png", context))
                        : Expanded(
                            child:
                                ListView.builder(
                                  itemCount: vm.contacts!.length,
                                    itemBuilder: (context, index) {
                              String num = (vm
                                      .contacts![index].phones.isNotEmpty)
                                  ? (vm.contacts![index].phones.first.number)
                                  : "--";
                              return (num == "--")
                                  ? const SizedBox()
                                  : Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            margin: const EdgeInsets.only(
                                                left: 5, right: 15),
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: AppColor.redColor),
                                            child: Icon(
                                              Icons.home,
                                              size: 20,
                                              color: AppColor.whiteColor,
                                            ),
                                          ),
                                          Expanded(
                                              flex: 7,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 6,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              vm
                                                                  .contacts![
                                                                      index]
                                                                  .displayName
                                                                  .toString(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontFamily:
                                                                      "Med",
                                                                  color: AppColor
                                                                      .black)),
                                                          Text(num,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      "Med",
                                                                  color: AppColor
                                                                      .hintColor)),
                                                        ],
                                                      )),
                                                  Expanded(
                                                      flex: 2,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          if (vm
                                                              .contacts![index]
                                                              .isStarred) {
                                                            vm.contacts![index]
                                                                    .isStarred =
                                                                !vm
                                                                    .contacts![
                                                                        index]
                                                                    .isStarred;
                                                            vm
                                                                    .duplicateItems![
                                                                        index]
                                                                    .isStarred =
                                                                !vm
                                                                    .duplicateItems![
                                                                        index]
                                                                    .isStarred;
                                                            vm.count -= 1;
                                                          } else {
                                                            if (vm.count == 4) {
                                                              ScaffoldMessenger
                                                                      .of(
                                                                          context)
                                                                  .showSnackBar(
                                                                      SnackBar(
                                                                content:
                                                                    const Text(
                                                                  "You can add upto 4 contacts only",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                duration:
                                                                    const Duration(
                                                                        seconds:
                                                                            1),
                                                                backgroundColor:
                                                                    AppColor
                                                                        .redColor,
                                                                behavior:
                                                                    SnackBarBehavior
                                                                        .floating,
                                                              ));
                                                            } else {
                                                              vm
                                                                      .contacts![
                                                                          index]
                                                                      .isStarred =
                                                                  !vm
                                                                      .contacts![
                                                                          index]
                                                                      .isStarred;
                                                              vm
                                                                      .duplicateItems![
                                                                          index]
                                                                      .isStarred =
                                                                  !vm
                                                                      .duplicateItems![
                                                                          index]
                                                                      .isStarred;

                                                              vm.count += 1;
                                                            }
                                                          }
                                                          setState(() {});
                                                        },
                                                        child: Image.asset(
                                                          (vm.contacts![index]
                                                                      .isStarred ==
                                                                  true)
                                                              ? "assets/icons/checkbox.png"
                                                              : "assets/icons/unchecked.png",
                                                          height: 25,
                                                          width: 25,
                                                        ),
                                                      )),
                                                ],
                                              ))
                                        ],
                                      ),
                                    );
                            }),
                          )
                    : Progress(),
              ],
            )
            ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        width: double.infinity,
        child: RoundedButton(
            text: "Add (${vm.count.toString()})",
            color: AppColor.yellowColor,
            buttonColor: AppColor.black,
            radios: 0,
            onTap: () {}),
      ),
    );
  }

  Future<void> init() async {
    var data = await vm.getContacts();
    setState(() {});
  }
}
