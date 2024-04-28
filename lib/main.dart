import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/screen/constants.dart';
import 'package:portfolioweb/screen/home/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        secondaryHeaderColor: secondaryColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white).copyWith(
          bodyText1: TextStyle(color: bodyTextColor),
            bodyText2: TextStyle(color: bodyTextColor)
        )
      ),
      routes: {
        '/':(context)=>HomeScreen(),
      },

    );
  }
}
