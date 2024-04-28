
import 'package:flutter/material.dart';
import 'package:portfolioweb/components/animated_counter.dart';
import 'package:portfolioweb/screen/constants.dart';
import 'package:portfolioweb/screen/home/componets/high_light.dart';
import 'package:portfolioweb/screen/responsive.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)?
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HighLight(
                Counter: AnimatedCounter(
                  value: 119,
                  text: 'K+',
                ),
                label: "Subscribers",
              ),
              HighLight(
                Counter: AnimatedCounter(
                  value: 40,
                  text: '+',
                ),
                label: "Videos  ",
              ),
            ],
          ),
          SizedBox(height: defaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HighLight(
                Counter: AnimatedCounter(
                  value: 30,
                  text: '+',
                ),
                label: "Github Projects",
              ),
              HighLight(
                Counter: AnimatedCounter(
                  value: 13,
                  text: 'K+',
                ),
                label: "Star  ",
              ),
            ],
          )
        ],
      )
      :Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HighLight(
          Counter: AnimatedCounter(
            value: 119,
            text: "K+",
          ),
          label: "Subscribers",
        ),
          HighLight(
            Counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          HighLight(
            Counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "Github Projects",
          ),
          HighLight(
            Counter: AnimatedCounter(
              value: 13,
            ),
            label: "Star",
          ),
        ],
      ),
    );
  }
}