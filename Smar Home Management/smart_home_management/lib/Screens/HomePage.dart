import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_management/uility/AppColors.dart';
import 'package:smart_home_management/uility/BaseApp.dart';
import '../widgets/HomePageWidgets/Allwidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height/2.5,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: size.height /2.52,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.main_colour,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  showText("Good Morning,", 30, Colors.white),
                                  Text("Kimberly Masterangelo",),
                                ],
                              ),
                              Container(
                                height: size.width *0.1,
                                width: size.width *0.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                  child: Icon(Icons.notification_add)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Container(
                            height: size.height * 0.23,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),

                            //Top Order View Implemented Here.....
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        child: Image(
                                            image: AssetImage("assets/weather.png")),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("May 16,2023 10:5 am"),
                                          showText("Cloudy", 20, Colors.black),
                                          Text("Jakarta, Indonesia")
                                        ],
                                      ),
                                      Container(
                                        height: 70,
                                        width: 70,
                                        child: Text("19 C",style: TextStyle(fontSize: 30),),
                                      ),
                                    ],
                                  ),
                                  Divider(color: Colors.black54,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      HomeTopView(Icons.water_drop,"97 %","Humadit"),
                                      HomeTopView(Icons.remove_red_eye,"7 Km","Visibility"),
                                      HomeTopView(Icons.wind_power_outlined,"3 km/h","NE Wind")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size.width,
                    height: size.height/ 2,
                    decoration: BoxDecoration(
                      color: AppColors.main_colour
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size.width,
                    height: size.height/ 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            showText("Rooms", 20, Colors.black),
                            showText("See All", 20, Colors.blueAccent),
                          ],),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              HomeMiddleView(size,"19 C","Living Room","5 Device","assets/sufa.png"),
                              HomeMiddleView(size,"12 C","BedRoom","8 Device","assets/sufa.png")
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  showText("Active", 20, Colors.black),
                                  SizedBox(width: 5,),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: AppColors.main_colour,
                                    child: Center(child: Text("6",style: TextStyle(color: Colors.white),)),
                                  )
                                ],
                              ),
                              showText("See All", 20, Colors.blueAccent)
                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              HomeLowerView(size,"Temparature","19 C","Ac","Living Room","assets/ac.png"),
                              HomeLowerView(size,"Colour","White","Lamp","Dining Room","assets/ac.png"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



}
