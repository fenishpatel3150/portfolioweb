
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolioweb/screen/constants.dart';

class Webicons extends StatelessWidget {
  const Webicons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      color: Color(0xff24242e),
      child: Row(
        children: [
          Spacer(),
          IconButton(onPressed: (){

          }, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(onPressed: (){

          }, icon: SvgPicture.asset('assets/icons/github.svg')),
          IconButton(onPressed: (){

          }, icon: SvgPicture.asset('assets/icons/twitter.svg')),
          IconButton(onPressed: (){

          }, icon: SvgPicture.asset('assets/icons/behance.svg')),
          Spacer(),
        ],
      ),
    );
  }
}