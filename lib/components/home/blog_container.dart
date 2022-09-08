import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   List<ClassBlog> list = [
      ClassBlog(title:"Curabitur Ante Justo, Vitae.",name:"frank",body:"Lorem Ipsum is simply dummy text of the printing",img:"./images/b1.png",time:"24 March, 2022"),
      ClassBlog(title:"Curabitur Ante Justo, Vitae.",name:"frank",body:"Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing",img:"./images/b2.png",time:"24 March, 2022"),

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
              Text("Our Blog",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold)),
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
                     width: (width-100)/2,

                     child:  Row(
                       children: [
                         Container(
                           height: 300,
                           width: 200,
                           decoration: BoxDecoration(
                               image:DecorationImage(
                                 image: AssetImage(e.img),
                                 fit: BoxFit.cover,
                               )
                           ),

                         ),
                         Container(
                           color: Colors.white,
                           height: 260,
                           margin:  EdgeInsets.only(top:20,bottom: 20),
                           child: Column(
                             children: [

                               SizedBox(height: 50,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [    SizedBox(width: 10,),Text(e.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],),

                               SizedBox(height: 20,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [    SizedBox(width: 10,),Text(e.time,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w100),),],),
                               SizedBox(height: 40,),

                               Container(
                                 width: 200,
                                 child:

                                   Text(e.body,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w100),  maxLines: 2,overflow: TextOverflow.ellipsis,),

                               ),
                               SizedBox(height: 20,),

                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [    SizedBox(width: 10,),
                                 GestureDetector(
                                  child: Text("Read More",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  onTap: (){
                                    print("ok");
                                  },
                                )],),



                             ],
                           ),
                         )
                       ],
                     )

                   )

               ).toList() ,
             )
                 :
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children:list.map((e) =>

                   Container(
                       margin:  EdgeInsets.only(top:20,left: 5,right: 5),
                       width: width*0.8,

                       child:  Row(
                         children: [
                           Container(
                             height: 300,
                             width: 200,
                             decoration: BoxDecoration(
                                 image:DecorationImage(
                                   image: AssetImage(e.img),
                                   fit: BoxFit.cover,
                                 )
                             ),

                           ),
                           Container(
                             color: Colors.white,
                             height: 260,
                             margin:  EdgeInsets.only(top:20,bottom: 20),
                             child: Column(
                               children: [

                                 SizedBox(height: 50,),
                                 Container(
                                   width: width*0.8 -250 ,
                                   margin:  EdgeInsets.only(top:10,bottom: 10,left: 10,right: 10),
                                   child: Text(e.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,)
                                   ,
                                 ),

                                 SizedBox(height: 20,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [    SizedBox(width: 10,),Text(e.time,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w100),),],),

                                 SizedBox(height: 40,),

                                 Container(
                                   width: width*0.8 -250 ,
                                   child:

                                   Text(e.body,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w100),  maxLines: 2,overflow: TextOverflow.ellipsis,),

                                 ),
                                 SizedBox(height: 20,),

                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [    SizedBox(width: 10,),
                                     GestureDetector(
                                       child: Text("Read More",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                       onTap: (){
                                         print("ok");
                                       },
                                     )],),



                               ],
                             ),
                           )
                         ],
                       )

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
class ClassBlog {
String title;
String name;
String img;
String time;
String body;

ClassBlog({
  required this.title,
  required this.name,
  required this.img,
  required this.time,
  required this.body,
});

}
