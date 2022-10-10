import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';
import 'package:flutter_application_1/demo/widget/text_small_welcome.dart';
import 'package:flutter_application_1/demo/view/class_greengrocer_info.dart';

class ClassGreengrocerWelcome extends StatelessWidget {
  const ClassGreengrocerWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: GreengrocerConst.paddingGeneral15,
          child: Container(
            color: GreengrocerConst.color_green100,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: GreengrocerConst.paddingGeneronlyLeftRightBottom20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2
                  ),
                  Expanded(
                      flex: 3,
                      child: Image.asset(GreengrocerConst.image_domates,fit: BoxFit.contain,)),
                  const Spacer(flex: 1),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            GreengrocerConst.info_text,textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: GreengrocerConst.color_black),
                          ),
                          TextSmallWelcome(text: GreengrocerConst.info_text_one)
                        ],
                      )),
                  const Spacer(flex: 1),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      GreengrocerConst.borderRadiusCircular30)),
                          onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClassGreengrocer()));},
                          child: Center(
                            child: Text(GreengrocerConst.info_text_button),
                          )))
                ],
              ),
            )),
          ));
  }
}
