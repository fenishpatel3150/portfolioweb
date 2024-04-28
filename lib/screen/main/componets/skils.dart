import 'package:flutter/material.dart';
import 'package:portfolioweb/components/animated_progress_indicator.dart';

import '../../constants.dart';

class Skils extends StatelessWidget {
  const Skils(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Skill",style: Theme.of(context).textTheme.titleSmall,),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: 'Flutter',
              ),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.72,
                label: 'Django',
              ),
            ),
            SizedBox(width: defaultPadding,),

            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.65,
                label: 'Firebase',
              ),
            ),
          ],
        )
      ],

    );
  }
}
