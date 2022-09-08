import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutFitnessComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      var width = Get.width;
    return width >500?
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,

       children: [
     Expanded(
       child: Container(
        child: Center(
          child: Column(
            children: [  
              SizedBox(height:20),
              
              Text("Strong All Time",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold)),
              SizedBox(height:20),


              Container(
                child: Center(
                  child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip",
                      style: TextStyle(color: Color(0xff3A3A3A),fontSize: 14, height: 1.2),textAlign: TextAlign.left,),

                ),
                padding: EdgeInsets.only(left: 15,top: 10,right:15),
              ),
              SizedBox(height:20),
              GestureDetector(
                  onTap: (){
                    print("ok");
                  },
                  child :    Container(
                    child: Text("Read More"),
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xff1698DA),
                          width: 1,

                        )
                    ),
                  )
              )
            ],
          ),
        ),

       ),
     ),
         Expanded(
           child: Container(
             padding: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 10),
             height: 300,

              child: Center(
                child: Container(
                  child: Image.asset("assets/images/fitness.png",),
                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                )
              ),

           ),
         ),
       ],
     ):   Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height:20),

                Text("Strong All Time",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold)),
                SizedBox(height:20),


                Container(
                  child: Center(
                    child:
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip",
                      style: TextStyle(color: Color(0xff3A3A3A),fontSize: 14, height: 1.2),textAlign: TextAlign.left,),

                  ),
                  padding: EdgeInsets.only(left: 15,top: 10,right:15),
                ),
                SizedBox(height:20),
                GestureDetector(
                    onTap: (){
                      print("ok");
                    },
                    child :    Container(
                      child: Text("Read More"),
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xff1698DA),
                            width: 1,

                          )
                      ),
                    )
                )
              ],
            ),
          ),

        ),
        Container(
          padding: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 10),
          height: 300,

          margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 10),
          child: Center(
              child: Container(
                child: Image.asset("assets/images/fitness.png",),
                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              )
          ),

        ),
      ],
    );
  }

}