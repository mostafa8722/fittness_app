
import 'package:flutter/material.dart';

import '../components/home/about_fitness.dart';
import '../components/home/blog_container.dart';
import '../components/home/class_container.dart';
import '../components/home/galler_container.dart';
import '../components/home/hero.dart';
import '../components/home/time_table_container.dart';
import '../components/home/trainer_container.dart';

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
            ClassComponent(),
            TimeComponent(),
            TrainerComponent(),
            GalleryComponent(),
            BlogComponent(),
          ],
        ),
      ),
    );
  }
}