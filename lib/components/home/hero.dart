import 'package:flutter/material.dart';

class HeroComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    padding: EdgeInsets.only(top: 50,left: 50),
      height: 300,
        decoration: BoxDecoration(

        image: DecorationImage(
        image: AssetImage("assets/images/bg_top.png"),
    fit: BoxFit.cover,
    ),
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Welcome to Workout Fitness",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 18),),
          SizedBox(height:10),
          Row(children: [
            Text("Keep",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(width:4),
            Text("Fit & Stay",style: TextStyle(color: Color(0xff1698DA),fontSize: 24,fontWeight: FontWeight.bold)),
            SizedBox(width:4),
            Text("Strong All Time",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 24,fontWeight: FontWeight.bold)),
          ],),
          SizedBox(height:10),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: TextStyle(color: Color(0xff3A3A3A),fontSize: 14)),
          SizedBox(height:20),
          Container(
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
        ],
      ),
    );
  }

}