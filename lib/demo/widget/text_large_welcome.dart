import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';

class TextLargeWelcome extends StatelessWidget {
  const TextLargeWelcome({super.key, required this.text});
  final String text;


  @override
  Widget build(BuildContext context) {
    return Text(text,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: GreengrocerConst.color_black,
                  fontWeight: FontWeight.bold,fontSize: 25),
            );
  }
}