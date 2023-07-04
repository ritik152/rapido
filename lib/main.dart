import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapido/screens/number_verify_screen/number_verify_screen.dart';
import 'package:rapido/utils/color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: AppColor.yellowColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NumberVerifyScreen(),
    );
  }
}

