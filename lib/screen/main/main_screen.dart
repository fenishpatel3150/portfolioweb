import 'package:flutter/material.dart';
import 'package:portfolioweb/screen/main/componets/side_menu.dart';
import 'package:portfolioweb/screen/constants.dart';
import 'package:portfolioweb/screen/responsive.dart';

class Main_Screen extends StatelessWidget {
  const Main_Screen({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isDesktop(context)? null : AppBar(
        backgroundColor: bgColor,
        leading: Builder(builder: (context) =>IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
        ),)
      ),
      drawer: Sidemenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                child: Sidemenu(),
              ),
              SizedBox(width: defaultPadding,),
              Expanded(
                  flex: 7,
                  child:SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}