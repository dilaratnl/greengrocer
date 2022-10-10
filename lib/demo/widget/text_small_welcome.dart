import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';

class TextSmallWelcome extends StatelessWidget {
  const TextSmallWelcome({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: GreengrocerConst.color_darkgrey, fontSize: 18), 
        );
  }
}