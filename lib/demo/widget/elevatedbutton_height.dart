import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';

class ElevatedButtonHeight extends StatelessWidget {
  const ElevatedButtonHeight(
      {super.key,

      required this.onPressed,
      required this.text});

  
  final void Function() onPressed;
  final String text;
  final int _height15 = 15;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / _height15,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: GreengrocerConst.borderRadiusCircular30)),
          onPressed: onPressed,
          child: Center(
            child: Text(
              text,
            ),
          )),
    );
  }
}
