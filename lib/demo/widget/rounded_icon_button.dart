import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
      {super.key,
      required this.icon,
      required this.onPress,
      required this.iconSize});
  final IconData icon;
  final Function onPress;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {},
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
