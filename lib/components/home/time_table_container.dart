import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


   List<String> title = [
     "Time",
     "Monday",
     "Tuesday",
     "Wednesday",
     "Thursday",
     "Friday",
     "Saturday",
     "Sunday",
   ];

   List<ClassSchecule>  schecule1 = [
     ClassSchecule(title:"8:00 Am",name:"",time:""),
     ClassSchecule(title:"Excercise",name:"jenny",time:"8:00 Am - 11:00 Am"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Excercise",name:"jenny",time:"8:00 Am - 11:00 Am"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Excercise",name:"jenny",time:"8:00 Am - 11:00 Am"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Excercise",name:"jenny",time:"8:00 Am - 11:00 Am"),
   ];
   List<ClassSchecule>  schecule2 = [
     ClassSchecule(title:"12:00 Pm",name:"",time:""),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Karate",name:"frank",time:"12:00 Pm - 03:00 Pm"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Karate",name:"frank",time:"12:00 Pm - 03:00 Pm"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Karate",name:"frank",time:"12:00 Pm - 03:00 Pm"),
     ClassSchecule(title:"",name:"",time:""),

   ];

   List<ClassSchecule>  schecule3 = [
     ClassSchecule(title:"4:00 Pm",name:"",time:""),
     ClassSchecule(title:"Yoga",name:"jane",time:"4:00 Pm - 7:00 Pm"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Yoga",name:"jane",time:"4:00 Pm - 7:00 Pm"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Yoga",name:"jane",time:"4:00 Pm - 7:00 Pm"),
     ClassSchecule(title:"",name:"",time:""),
     ClassSchecule(title:"Yoga",name:"jane",time:"4:00 Pm - 7:00 Pm"),


   ];




   var width = Get.width;

    return
      Container(
        margin: EdgeInsets.only(top:20),
        color: Color(0xffffffff),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Class Timetable",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: 70,
                    color: Color(0xff3a3a3a),
                  ),SizedBox(width: 5,),
                  Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff1698DA),
                      )
                  ),SizedBox(width: 5,),
                  Container(
                    height: 2,
                    width: 70,
                    color: Color(0xff3a3a3a),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child:
                  Container(
                    width: width*0.8,
                    child:    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip",
                      style: TextStyle(color: Color(0xff3A3A3A),fontSize: 14, height: 1.2),textAlign: TextAlign.left,),

                  )
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: width*0.8,
                height: 40,
                decoration: BoxDecoration(
                  border:Border.all(color: Color(0xffeeeeee),width:0.5)
                ),
                child:
                Row(
                  children: title.map((e) => Expanded(child: Center(child: Text(e,style: TextStyle(color:Color(0xff3a3a3a),fontWeight: FontWeight.bold),),),)).toList(),
                )
                ,
              ),
              Container(
                width: width*0.8,
                height: 100,
                decoration: BoxDecoration(
                    border:Border.all(color: Color(0xffeeeeee),width:0.5)
                ),
                child:
                Row(
                  children: schecule1.map((e) => Expanded(child:
                  Container(

                    color: e.name==""?Color(0xfff1f1f1):Color(0xff8C9EDB),
                    child: Center(child:

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(e.title,style: TextStyle(color: e.name==""?Color(0xff3a3a3a):Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w100),),
                      Text(e.name,style: TextStyle(color: e.name==""?Color(0xff3a3a3a):Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w100),)
                    ],
                    ),
                  )
                    ,)
                    ,)).toList(),
                )
                ,
              ),
              Container(
                width: width*0.8,
                height: 100,
                decoration: BoxDecoration(
                    border:Border.all(color: Color(0xffeeeeee),width:0.5)
                ),
                child:
                Row(
                  children: schecule2.map((e) => Expanded(child:
                  Container(

                    color: e.name==""?Color(0xfff1f1f1):Color(0xffF76C73),
                    child: Center(child:

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(e.title,style: TextStyle(color: e.name==""?Color(0xff3a3a3a):Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w100),),
                        Text(e.name,style: TextStyle(color: e.name==""?Color(0xff3a3a3a):Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w100),)
                      ],
                    ),
                    )
                    ,)
                    ,)).toList(),
                )
                ,
              ),
              Container(
                width: width*0.8,
                height: 100,
                decoration: BoxDecoration(
                    border:Border.all(color: Color(0xffeeeeee),width:0.5)
                ),
                child:
                Row(
                  children: schecule3.map((e) => Expanded(child:
                  Container(

                    color: e.name==""?Color(0xfff1f1f1):Color(0xffDBAADD),
                    child: Center(child:

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(e.title,style: TextStyle(color: e.name==""?Color(0xff3a3a3a):Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w100),),
                        Text(e.name,style: TextStyle(color: e.name==""?Color(0xff3a3a3a):Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w100),)
                      ],
                    ),
                    )
                    ,)
                    ,)).toList(),
                )
                ,
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      );

  }

}
class ClassSchecule {
String title;
String name;

String time;

ClassSchecule({
  required this.title,
  required this.name,

  required this.time,
});

}
