import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rapido/screens/dashboard/MainDrawer.dart';
import 'package:rapido/screens/search_location/search_location_screen.dart';
import 'package:rapido/utils/color.dart';
import 'package:rapido/utils/common_widget.dart';

import '../book_ride/book_ride_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>{
  static final LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
  var showBook = false;

  late GoogleMapController mapController;

  LatLng? _currentPosition;
  bool _isLoading = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();
  }

  getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    double lat = position.latitude;
    double long = position.longitude;

    LatLng location = LatLng(lat, long);

    setState(() {
      _currentPosition = location;
      _isLoading = false;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: AppColor.black,
      key: _scaffoldKey,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: _isLoading ? Progress() :GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _currentPosition!,
                  zoom: 16.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.whiteColor),
                      child: const Icon(Icons.menu),
                    ),
                  ),
                  Expanded(
                      flex: 7,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchLocationScreen()));
                        },
                        child: Container(
                          height: 45,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColor.whiteColor),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Icon(
                                    Icons.radio_button_checked,
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: Text("Hindostan times, Phase 7",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Med",
                                          color: AppColor.black))),
                              Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    "assets/icons/heart.png",
                                    height: 22,
                                    width: 22,
                                  )),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child:Container(
          height: MediaQuery.of(context).size.height * 0.40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColor.whiteColor,),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchLocationScreen()));

                },
                child: Container(
                  height: 45,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.fieldBackColor),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.radio_button_checked,
                            color: AppColor.redColor,
                          )),
                      Expanded(
                          flex: 8,
                          child: Text("Hindostan times, Phase 7",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Med",
                                  color: AppColor.black))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: BoldText("Drop suggestions", 13,
                    AppColor.black, TextAlign.start),
              ),
              Expanded(child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const BookRideScreen()));
                      },
                      child: Container(
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
                                  color: AppColor.fieldBackColor),
                              child: const Icon(Icons.menu),
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
                      ),
                    );
                  }))
            ],
          )
              ,
        ),
      )
      ,
    );
  }

}
