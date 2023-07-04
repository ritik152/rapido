import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rapido/utils/buttons.dart';
import 'package:rapido/utils/common_widget.dart';

import '../../utils/color.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  static final LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.58,
                child: GoogleMap(
                  initialCameraPosition: _kInitialPosition,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppColor.whiteColor
                ),
                child: Image.asset("assets/icons/back.png",height: 30,width: 30,),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColor.whiteColor,
        height: MediaQuery.of(context).size.height*0.30,
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 10,),
                BoldText("Select your location", 17, AppColor.black, TextAlign.center),
                const SizedBox(height: 10,),
                Container(height: 1,width: double.infinity,color: AppColor.hintColor,),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      flex: 85,
                      child: Container(
                        height: 67,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CommonText("Mohali sdgdfgdsfhdf bdfgsdfgdf dfgbdfgdfg dfgdafgdfgdfg dbdfgffgfgMohali sdgdfgdsfhdf bdfgsdfgdf dfgbdfgdfg dfgdafgdfgdfg dbdfgffgfg", 15, AppColor.black, TextAlign.start)),
                    ),
                    Expanded(
                      flex: 18,
                      child: Container(
                        height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: AppColor.hintColor
                          ),
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.search_rounded,size: 25,color: AppColor.whiteColor,)
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: RoundedButton(text: "Confirm Location", color: AppColor.black, buttonColor: AppColor.yellowColor,radios: 10, onTap: (){}, ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
