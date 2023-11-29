// Controller.dart
import 'package:get/get.dart';
import '../model/child_model.dart';

class SantaListController extends GetxController {
  var childrenList = <ChildModel>[].obs;

  void addChild(ChildModel child) {
    childrenList.add(child);
  }

  void toggleChildStatus(int index) {
    childrenList[index].isNice.value = !childrenList[index].isNice.value;
  }
}