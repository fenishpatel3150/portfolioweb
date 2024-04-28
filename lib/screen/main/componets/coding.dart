import 'package:flutter/material.dart';
import 'package:portfolioweb/components/animated_progress_indicator.dart';
import 'package:portfolioweb/screen/constants.dart';

class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding),
            child: Text(
              'Coding',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),

          AnimationLinearProgressIndicator(
            percentage: 0.7,
            lable: "Dart",
          ),
          AnimationLinearProgressIndicator(
            percentage: 0.68,
            lable: "Python",
          ),
          AnimationLinearProgressIndicator(
            percentage: 0.9,
            lable: "C++",
          ),
          AnimationLinearProgressIndicator(
            percentage: 0.75,
            lable: "C",
          ),
          AnimationLinearProgressIndicator(
            percentage: 0.68,
            lable: "Java",
          ),
        ],
      ),
    );
  }
}
