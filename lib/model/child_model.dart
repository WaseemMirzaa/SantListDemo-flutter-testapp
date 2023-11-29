// ChildModel.dart
import 'package:get/get.dart';

class ChildModel {
  String name;
  String country;

  //Observable variables have RX as prefix in their names
  RxBool isNice;

  ChildModel({required this.name, required this.country, required bool isNice})
      : this.isNice = isNice.obs;}