
import 'package:flutter/material.dart';

import '../components/home/about_fitness.dart';
import '../components/home/hero.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitness"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroComponent(),
            AboutFitnessComponent(),
          ],
        ),
      ),
    );
  }
}