
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(milliseconds: 1000), () {

// Here you can write your code


      Get.off(HomeScreen());

    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fitness App")
          ],
        ),
      ),
    );
  }
}