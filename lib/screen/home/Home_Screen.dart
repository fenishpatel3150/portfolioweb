import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioweb/screen/home/componets/Home_banner.dart';
import 'package:portfolioweb/screen/home/componets/highlights.dart';
import 'package:portfolioweb/screen/home/componets/my_project.dart';
import 'package:portfolioweb/screen/home/componets/recommendation.dart';
import 'package:portfolioweb/screen/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Main_Screen(children: [
      HomeBanner(),
      HighLightInfo(),
      my_project(),
      Recommendations(),
    ]
    );
  }
}



