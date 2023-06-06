import 'package:flutter/material.dart';
import 'package:smart_home_management/widgets/LampPageWidgets/AllWidgets.dart';

import '../uility/AppColors.dart';
import '../uility/BaseApp.dart';

class SmartHome extends StatefulWidget {
  const SmartHome({super.key});

  @override
  State<SmartHome> createState() => _SmartHomeState();
}

class _SmartHomeState extends State<SmartHome> {
  //Variable Section
  String _dropDownSelectItem = "Living Room";
  List _dropdownList =[
    "Living Room",
    "Bead Room",
    "kitchen Room"
  ];

  //Code Section
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: size.height/4.5,
              width: size.width,
              decoration: BoxDecoration(
                color: AppColors.shasow_bluw,
              ),
            ),
            Container(
              height: size.height/4.5,
              width: size.width,
                decoration: BoxDecoration(
                  color: AppColors.main_colour,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          showText("Power Usage", 20, Colors.white),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)),
                            ),
                            child: Icon(Icons.menu_outlined),
                          )
                        ],
                      ),
                      customDropdownMenu(),
                    ],
                  ),
                ),
              ),

            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height/ 1.49,
                decoration: BoxDecoration(
                    color: AppColors.main_colour
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height/ 1.49,
                  decoration: BoxDecoration(
                    color: AppColors.shasow_bluw,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Row(children: [
                        showText("Smart Mode", 20, Colors.black),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 30,
                          width: 30,
                          decoration:BoxDecoration(
                            color: AppColors.main_colour,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(child: showText("4", 20, Colors.white)),
                        ),
                      ],),
                      SizedBox(height: 5,),
                      LampLowerView(size, "Smart Lamp", "Dining Room || Tue Thus", "assets/switch.png","8 Pm", "8 Am"),
                      SizedBox(height: 5,),
                      LampLowerView(size, "Smart Lamp", "Dining Room || Tue Thus", "assets/switch.png","8 Pm", "8 Am"),
                      SizedBox(height: 5,),
                      LampLowerView(size, "Smart Lamp", "Dining Room || Tue Thus", "assets/switch.png","8 Pm", "8 Am"),
                      SizedBox(height: 5,),
                      LampLowerView(size, "Smart Lamp", "Dining Room || Tue Thus", "assets/switch.png","8 Pm", "8 Am"),
                    ],),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget customDropdownMenu(){
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: AppColors.shasow_bluw,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
            iconSize: 50,
            isExpanded: true,
            value: _dropDownSelectItem,
            onChanged: (value){
              setState(() {
                _dropDownSelectItem = value.toString();
              });},
            items:_dropdownList.map((val){
              return DropdownMenuItem(child: Text(val),
                value: val,);
            }).toList()
        ),
      ),
    );
  }
}
