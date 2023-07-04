import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rapido/screens/payment/payment_screen.dart';
import 'package:rapido/utils/buttons.dart';
import 'package:rapido/utils/common_widget.dart';

import '../../utils/color.dart';
import '../offers/offers_screen.dart';
import '../search_location/search_location_screen.dart';

class BookRideScreen extends StatefulWidget {
  const BookRideScreen({Key? key}) : super(key: key);

  @override
  State<BookRideScreen> createState() => _BookRideScreenState();
}

class _BookRideScreenState extends State<BookRideScreen> {
  static final LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColor.black,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: GoogleMap(
                initialCameraPosition: _kInitialPosition,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  width: 45,
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.whiteColor),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: AppColor.transparentYellowColor,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/motorbike_icon.png",height: 30,width: 30,),
                          const SizedBox(width: 20,),
                          Text("Bike",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "Med",
                                  color: AppColor.black)),

                        ],
                      ),
                      Row(
                        children: [
                          MediumText("\$41", 17,AppColor.black, TextAlign.start),
                          const SizedBox(width: 10,),
                          Icon(Icons.info_outlined,size: 17,color: AppColor.hintColor,)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: AppColor.whiteColor,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/car.png",height: 30,width: 30,),
                          const SizedBox(width: 20,),
                          Text("Auto",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Med",
                                  color: AppColor.black)),
                          const SizedBox(width: 10,),
                          MediumText("3 mins", 13, AppColor.hintColor, TextAlign.start)
                        ],
                      ),
                      Row(
                        children: [
                          MediumText("\$64", 17,AppColor.black, TextAlign.start),
                          const SizedBox(width: 10,),
                          Icon(Icons.info_outlined,size: 17,color: AppColor.hintColor,)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(height: 2,width: double.infinity,color: AppColor.fieldBackColor,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const OffersScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    color: AppColor.whiteColor,
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/tag.png",height: 30,width: 30,),
                            const SizedBox(width: 20,),
                            Text("1 Coupon available",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Med",
                                    color: AppColor.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.navigate_next,size: 27,color: AppColor.black,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(height: 2,width: double.infinity,color: AppColor.fieldBackColor,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    color: AppColor.whiteColor,
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/rupee.png",height: 30,width: 30,),
                            const SizedBox(width: 20,),
                            Text("Cash",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Med",
                                    color: AppColor.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.navigate_next,size: 27,color: AppColor.black,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: AppColor.whiteColor,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundedButton(text: "Book Ride", color: AppColor.black, buttonColor: AppColor.yellowColor, radios: 10, onTap: (){

                  }),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          )
          ,
        ),
      )
      ,
    );
  }

}
