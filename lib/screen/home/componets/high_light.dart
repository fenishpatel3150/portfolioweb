
import 'package:flutter/material.dart';
import 'package:portfolioweb/screen/constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    super.key, required this.Counter, this.label,
  });
  final Widget Counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Counter,
        SizedBox(width: defaultPadding/2,),
        Text(label!,style: Theme.of(context).textTheme.subtitle2,),
      ],
    );
  }
}