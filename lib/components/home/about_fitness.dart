import 'package:flutter/material.dart';

class AboutFitnessComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,

       children: [
     Expanded(
       child: Container(
         padding: EdgeInsets.only(top: 50,left: 50),
         height: 300,
         color: Colors.yellow,

       ),
     ),
         Expanded(
           child: Container(
             padding: EdgeInsets.only(top: 50,left: 50),
             height: 300,
             color: Colors.blue,

           ),
         ),
       ],
     );
  }

}