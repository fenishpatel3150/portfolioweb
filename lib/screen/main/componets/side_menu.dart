import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioweb/screen/constants.dart';
import 'package:portfolioweb/screen/main/componets/Icons.dart';
import 'package:portfolioweb/screen/main/componets/Knowledge.dart';
import 'package:portfolioweb/screen/main/componets/area_info_text.dart';
import 'package:portfolioweb/screen/main/componets/coding.dart';
import 'package:portfolioweb/screen/main/componets/my_info.dart';
import 'package:portfolioweb/screen/main/componets/skils.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF242430),
      child: SafeArea(
        child: Column(
          children: [
            Myinfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaIntoText(
                      title: 'Residence',
                      text: 'Gujarat',
                    ),
                    AreaIntoText(
                      title: 'City',
                      text: 'Surat',
                    ),
                    AreaIntoText(
                      title: 'Age',
                      text: '19',
                    ),
                    Skils(context),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("DOWNLOAD CV",style: Theme.of(context).textTheme.bodyLarge),
                        SizedBox(width: defaultPadding/2,),
                        SvgPicture.asset('assets/icons/download.svg')
                      ],
                    ),
                    Webicons(),
        
        
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


