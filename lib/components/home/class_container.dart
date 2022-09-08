import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   List<ClassTrain> list = [
      ClassTrain(title:"Yoga",name:"frank",img:"./images/c3.jpg",time:"8:00Am - 11:00 Am"),
     ClassTrain(title:"Karate",name:"john",img:"./images/c2.jpg",time:"6:00Pm - 8:00 Pm"),
     ClassTrain(title:"Exercise",name:"jenny",img:"./images/c1.jpg",time:"3:00Pm - 7:00 Pm")

    ];

  var width = Get.width;

    return
      Container(
        margin: EdgeInsets.only(top:20),
        color: Color(0xfff1f1f1),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Our Classes",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold)),
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

             width>600?
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:list.map((e) =>

                   Container(
                     margin:  EdgeInsets.only(top:20,left: 5,right: 5),
                     width: (width-100)/3,
                     color: Colors.white,
                     child:  Column(
                       children: [
                         Image.asset(e.img),
                         SizedBox(height: 10,),
                         Row(children: [    SizedBox(width: 10,),Text(e.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],),
                         SizedBox(height: 10,),
                         Container(
                           height: 1,
                           color: Color(0xfff1f1f1),

                         ),
                         SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(

                               children: [
                                 SizedBox(width: 10,),
                                 Icon(Icons.account_circle,color: Color(0xff3a3a3a),size: 13,),
                                 SizedBox(width: 5,),
                                 Text(e.name,style: TextStyle(fontSize: 13),)

                               ],
                             ),
                             Row(

                               children: [
                                 SizedBox(width: 10,),
                                 Icon(Icons.timer,color: Color(0xff3a3a3a),size: 13,),
                                 SizedBox(width: 5,),
                                 Text(e.time,style: TextStyle(fontSize: 13),),
                                 SizedBox(width: 10,),

                               ],
                             )
                           ],),
                         SizedBox(height: 10,),
                       ],
                     ),
                   )

               ).toList() ,
             )
                 :
             Column(
               children:list.map((e) =>

                   Container(
                     margin:  EdgeInsets.only(top:20),
                     width: width*0.8,
                     color: Colors.white,
                     child:  Column(
                       children: [
                         Image.asset(e.img),
                         SizedBox(height: 10,),
                         Row(children: [    SizedBox(width: 10,),Text(e.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],),
                         SizedBox(height: 10,),
                         Container(
                           height: 1,
                           color: Color(0xfff1f1f1),

                         ),
                         SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(

                               children: [
                                 SizedBox(width: 10,),
                                 Icon(Icons.account_circle,color: Color(0xff3a3a3a),size: 13,),
                                 SizedBox(width: 5,),
                                 Text(e.name,style: TextStyle(fontSize: 13),)

                               ],
                             ),
                             Row(

                               children: [
                                 SizedBox(width: 10,),
                                 Icon(Icons.timer,color: Color(0xff3a3a3a),size: 13,),
                                 SizedBox(width: 5,),
                                 Text(e.time,style: TextStyle(fontSize: 13),),
                                 SizedBox(width: 10,),

                               ],
                             )
                           ],),
                         SizedBox(height: 10,),
                       ],
                     ),
                   )

               ).toList() ,
             )

            ],
          ),
        ),
      );

  }

}
class ClassTrain {
String title;
String name;
String img;
String time;

ClassTrain({
  required this.title,
  required this.name,
  required this.img,
  required this.time,
});

}
