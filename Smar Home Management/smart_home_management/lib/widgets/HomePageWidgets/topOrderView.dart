import 'package:flutter/material.dart';

Widget TopOrderView(var icon ,String data, String name){
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


