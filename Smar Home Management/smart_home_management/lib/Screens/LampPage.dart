import 'package:flutter/material.dart';
import 'package:smart_home_management/uility/BaseApp.dart';
import 'package:smart_home_management/widgets/LampPageWidgets/AllWidgets.dart';

import '../uility/AppColors.dart';

class LampPage extends StatefulWidget {
  @override
  State<LampPage> createState() => _LampPageState();
}

class _LampPageState extends State<LampPage> {
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
                  height: size.height/1.9,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: AppColors.shasow_bluw,
                  ),
                ),
                Container(
                    height: size.height / 1.9,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColors.main_colour,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                    ),
                    child: SafeArea(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Row(
                                  children: [
                                    showText("<", 30, Colors.white),
                                    SizedBox(width: 5,),
                                    showText("Back", 14, Colors.white),
                                  ],
                                ),
                                SizedBox(width: size.width*0.25,),
                                showText("Lamp", 30, Colors.white),
                              ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    showText("Dining Room", 14, Colors.white),
                                    Container(
                                      width: size.width*0.15,
                                      child: Image(
                                          image: AssetImage("assets/switch.png")),
                                    ),
                                    Container(
                                      width: size.width*0.30,
                                      child: showText("80 %", 50, Colors.white),
                                    ),
                                    showText("Brightness", 20, Colors.white),
                                    SizedBox(height: 5,),
                                    showText("Insensity", 15, Colors.white),
                                  ],
                                ),
                                  Container(
                                    height: size.height*0.15,
                                    width: size.width*0.40,
                                    child: Image(image: AssetImage("assets/lamp.png"),),
                                    margin: EdgeInsets.only(right: 40),
                                  )
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: FittedBox(
                                      child: Icon(
                                          Icons.lightbulb,color: Colors.black,),
                                    ),
                                  ),
                                  Container(
                                    height: size.height*0.05,
                                    width: size.width*0.70,
                                    child: Slider(value: 0.7,onChanged: (value){},thumbColor: Colors.purple,
                                    activeColor: Colors.white,
                                    inactiveColor: Colors.white,),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: FittedBox(
                                      child: Icon(
                                          Icons.light_mode,color: Colors.white70,),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(color: Colors.white,),
                              LampMiddleView(),

                            ],
                          ),
                        )
                    )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size.width,
                    height: size.height/ 2.7,
                    decoration: BoxDecoration(
                        color: AppColors.main_colour
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size.width,
                    height: size.height/ 2.7,
                    decoration: BoxDecoration(
                      color: AppColors.shasow_bluw,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    showText("Schdule", 20, Colors.black),
                                    SizedBox(width: 5,),
                                    Container(
                                      height: 30,
                                      width: 30,
                                     decoration: BoxDecoration(
                                       color: AppColors.main_colour,
                                       borderRadius: BorderRadius.all(Radius.circular(10)),
                                     ),
                                      child: Center(child:showText("3", 20, Colors.white)),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Center(child: Text("+",style: TextStyle(fontSize: 30,),)),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            LampLowerView(size, "Smart Lamp", "Dining Room || Tue Thu", "assets/switch.png", "8 PM", "8 AM"),
                            SizedBox(height: 5,),
                            LampLowerView(size, "Smart Lamp", "Dining Room || Tue Thu", "assets/switch.png", "8 PM", "8 AM"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
