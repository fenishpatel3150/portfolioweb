
import 'package:flutter/material.dart';
import 'package:portfolioweb/models/project.dart';
import 'package:portfolioweb/screen/constants.dart';
import 'package:portfolioweb/screen/home/componets/project_card.dart';
import 'package:portfolioweb/screen/responsive.dart';

class my_project extends StatelessWidget {
  const my_project({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(mobile: projectGrid(
          crossAxisCount: 1,
          childAspectRatio: 1.55,
        ),
            mobileLarge: projectGrid(crossAxisCount: 2),
            tablet: projectGrid(childAspectRatio: 1,),
            desktop: projectGrid())
      ],
    );
  }
}

class projectGrid extends StatelessWidget {
  const projectGrid({
    super.key, this.crossAxisCount=3, this.childAspectRatio=1.3,
  });
  final int crossAxisCount  ;
  final double childAspectRatio ;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_project.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(project: demo_project[index],),
    );
  }
}