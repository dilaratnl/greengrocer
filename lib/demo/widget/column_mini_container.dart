import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';

class ColumnMiniContainer extends StatelessWidget {
  const ColumnMiniContainer({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 6.5,
                  height: MediaQuery.of(context).size.height / 14,
                  decoration: BoxDecoration(
                      borderRadius: GreengrocerConst.borderRadiusCircular10,
                      color: GreengrocerConst.color_white),
                  child: Image.asset(image,
                      fit: BoxFit.contain),
                ),
                GreengrocerConst.sizedBoxHeight5,
                Text(text,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: GreengrocerConst.color_darkgrey, fontSize: 13,fontWeight: FontWeight.bold),
                )
              ],
            );
  }
}