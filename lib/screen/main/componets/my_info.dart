import 'package:flutter/material.dart';

class Myinfo extends StatelessWidget {
  const Myinfo({super.key});

  @override
  Widget build(BuildContext context) {
      return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: Color(0xFF242430),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/image/Cuteboy.jpeg'),
                radius: 50,
              ),
              Text('Fenish patel',style: TextStyle(color: Colors.white),),
              Text('Flutter Devloper \n Red & White Multimedia ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    height: 1.5,
                    color: Colors.grey),),
            ],
          ),
        ),
      );
  }
}
