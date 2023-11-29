// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:santa_demo_app/screen/santa_list_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //MaterialApp is now changed to GetMaterialApp because we are using GetX for state managment.
    return GetMaterialApp(
      title: 'Santa List App',
      home: SantaListScreen(),
    );
  }
}

