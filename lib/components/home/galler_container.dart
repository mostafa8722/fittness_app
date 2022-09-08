import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GalleryComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   List<ClassTrain> list = [
      ClassTrain(title:"Yoga",name:"frank",img:"./images/g1.png",time:"8:00Am - 11:00 Am"),
     ClassTrain(title:"Karate",name:"john",img:"./images/g2.png",time:"6:00Pm - 8:00 Pm"),
     ClassTrain(title:"Exercise",name:"jenny",img:"./images/g3.png",time:"3:00Pm - 7:00 Pm"),

    ];
   List<ClassTrain> list2 = [

     ClassTrain(title:"Exercise",name:"jenny",img:"./images/g4.png",time:"3:00Pm - 7:00 Pm"),
     ClassTrain(title:"Exercise",name:"jenny",img:"./images/g5.png",time:"3:00Pm - 7:00 Pm"),
     ClassTrain(title:"Exercise",name:"jenny",img:"./images/g6.png",time:"3:00Pm - 7:00 Pm"),

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
              Text("Our Trainers",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold)),
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

             Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:list.map((e) =>

                       Container(
                         margin:  EdgeInsets.only(top:20,left: 5,right: 5),
                         width: (width-100)/3,

                         child:  Column(
                           children: [
                             Container(
                               height: 200,
                               decoration: BoxDecoration(
                                   image:DecorationImage(
                                     image: AssetImage(e.img),
                                     fit: BoxFit.cover,
                                   )
                               ),

                             ),


                           ],
                         ),
                       )

                   ).toList() ,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:list2.map((e) =>

                       Container(
                         margin:  EdgeInsets.only(top:20,left: 5,right: 5),
                         width: (width-100)/3,

                         child:  Column(
                           children: [
                             Container(
                               height: 200,
                               decoration: BoxDecoration(
                                   image:DecorationImage(
                                     image: AssetImage(e.img),
                                     fit: BoxFit.cover,
                                   )
                               ),

                             ),


                           ],
                         ),
                       )

                   ).toList() ,
                 ),
               ],
             )

                 :
             Column(
               children:[...list,...list2].map((e) =>

                   Container(
                     margin:  EdgeInsets.only(top:20),
                     width: width*0.8,

                     child:  Column(
                       children: [
                         Container(
                           height: 200,
                           decoration: BoxDecoration(
                               image:DecorationImage(
                                 image: AssetImage(e.img),
                                 fit: BoxFit.cover,
                               )
                           ),

                         ),


                       ],
                     ),
                   )

               ).toList() ,
             ),
              SizedBox(height: 20,),
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
