import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/view/class_greengrocer_info.dart';
import 'package:flutter_application_1/demo/view/class_greengrocer_detail.dart';
import 'package:flutter_application_1/demo/view/class_greengrocer_welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home:  ClassGreengrocerWelcome(), debugShowCheckedModeBanner: false,
    );
  }
}