import 'package:flutter/material.dart';
import '../../uility/AppColors.dart';

Widget HomeTopView(var icon ,String data, String name){
  return Container(
    height: 70,
    width: 110,
    decoration: BoxDecoration(
      color: Colors.white12,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Padding(
      padding: EdgeInsets.all(6.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 2),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Icon(icon),
              ),
              Text(data,style: TextStyle(fontSize: 18),),

            ],
          ),
          Text(name,style: TextStyle(color: Colors.black),),
        ],
      ),
    ),
  );
}


Widget HomeMiddleView(var size ,String tempar,String name,String device,String image ){

  return Container(
    height: size.height*0.23,
    width: size.width*0.45,
    decoration: BoxDecoration(
      color: AppColors.shasow_colour,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 20,
            width: 40,
            child: Text(tempar,style: TextStyle(color: Colors.white),),
            color: AppColors.main_colour,
          ),
        ),
        Center(
          child: Container(
            height: 100,
            width: 100,
            child: FittedBox(
                child:Image(
                    image: AssetImage(image)) ),
          ),
        ),
        Center(child: Text(name,style: TextStyle(color: Colors.black,fontSize: 18),)),
        Center(child: Text(device,style: TextStyle(color: Colors.black),)),
      ],
    ),
  );
}


Widget HomeLowerView(var size,String name,String subname,String lname,String lsubname,String image){
  return Container(
    height: size.height*0.16,
    width: size.width*0.45,
    decoration: BoxDecoration(
      color: AppColors.shasow_chocklet,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width:70,
                child:  Image(
                    image: AssetImage(image)),
              ),
              Column(
                children: [
                  Container(
                    child: Text(name,style: TextStyle(color: Colors.white),),
                  ),
                  Text(subname,style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(lname,style: TextStyle(color: Colors.white,fontSize: 20),),
                Text(lsubname,style: TextStyle(color: Colors.white,fontSize: 14),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 40,
                width: 40,
                child: Image(
                    image: AssetImage("assets/switch.png")),
              ),
            )
          ],
        )
      ],
    ),
  );
}


