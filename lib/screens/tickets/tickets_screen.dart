import 'package:flutter/material.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.offWhite,
        iconTheme: IconThemeData(
          color: AppColor.black
        ),
        title: MediumText("Tickets", 17, AppColor.black, TextAlign.center),
        centerTitle: true,
      ),
    );
  }
}
