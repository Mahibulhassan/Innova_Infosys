import 'package:flutter/material.dart';
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
                                    Text("<",style: TextStyle(color: Colors.white,fontSize: 30),),
                                    SizedBox(width: 5,),
                                    Text("Back",style: TextStyle(color: Colors.white,fontSize: 14),),
                                  ],
                                ),
                                SizedBox(width: size.width*0.25,),
                                Text("Lamp",style: TextStyle(color: Colors.white,fontSize: 30),),
                              ],),
                              Text("Dining Room",style: TextStyle(color: Colors.white,fontSize: 14),),
                              Container(
                                width: size.width*0.15,
                                child: Image(
                                    image: AssetImage("assets/switch.png")),
                              ),
                              Container(
                                width: size.width*0.30,
                                child: Text("80 %",style: TextStyle(color: Colors.white,fontSize: 50),),
                              ),
                              Text("Brightness",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 5,),
                              Text("Insensity",style: TextStyle(color: Colors.white,fontSize: 15),),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: FittedBox(
                                      child: Icon(
                                          Icons.lightbulb),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: FittedBox(
                                      child: Icon(
                                          Icons.light_mode),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(color: Colors.white,),
                              MiddleOrderView(),

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
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Schdule",style: TextStyle(fontSize: 20,color: Colors.black),),
                                  SizedBox(width: 5,),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: AppColors.main_colour,
                                    child: Center(child: Text("3",style: TextStyle(fontSize: 20,color: Colors.white),)),
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
                          LowerOrderView(size, "Smart Lamp", "Dining Room || Tue Thu", "assets/switch.png", "8 PM", "8 AM")
                        ],
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
