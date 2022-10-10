import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';

class Container extends StatelessWidget {
  const Container({super.key, required this.image});
  
  final String image;
  final double _heightRow = 2.7;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: GreengrocerConst.borderRadiusCircular10,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / _heightRow,
      ),
    );
  }
}