import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class EmergencyContactsVM {

  ScrollController scrollController = ScrollController();
  List<Contact>? contacts;
  List<Contact>? duplicateItems;
  var isLoading = true;
  var count = 0;


  double get horizontalTitlePadding {
    const kBasePadding = 25.0;
    const kMultiplier = 1;

    if (scrollController.hasClients) {
      if (scrollController.offset < (180 / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (scrollController.offset > (180 - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (180 / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      return (scrollController.offset - (180 / 2)) * kMultiplier +
          kBasePadding;
    }

    return kBasePadding;
  }

  Future<bool> getContacts() async {
    if (await FlutterContacts.requestPermission()) {
      duplicateItems = await FlutterContacts.getContacts(withProperties: true, withPhoto: true);
      contacts = await FlutterContacts.getContacts(withProperties: true, withPhoto: true);
      // print(duplicateItems);
      log('data:--------------- ${duplicateItems!.length}');
      log('data:--------------- ${contacts!.length}');
      isLoading = false;
      return true;

    }else {
      isLoading = false;
      return false;
    }
  }


}


class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate(this._tabBar);

  final Container _tabBar;

  @override
  double get minExtent => 140;
  @override
  double get maxExtent => 140;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return false;
  }
}