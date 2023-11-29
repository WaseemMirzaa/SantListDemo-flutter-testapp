import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/santa_list_contoller.dart';
import 'add_child_screen.dart';

class SantaListScreen extends StatelessWidget {

  //Initialize the controller with Get.put
  final SantaListController controller = Get.put(SantaListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Santa List'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Get.to(AddChildScreen()),
            child: Text('Add New Kid'),
          ),
          Expanded(

            //Obx is the Observer in GetX. Every widget which is wrapped with Obx will observe the state of observable
            //variable and auto update the state of widget.
            //Here the observable variable is isNice, defined in ChildModel class.

            child: Obx(
                  () => ListView.builder(
                itemCount: controller.childrenList.length,
                itemBuilder: (context, index) {
                  var child = controller.childrenList[index];
                  return ListTile(
                    title: Text(child.name),
                    subtitle: Obx (() => Text('${child.country} - ${child.isNice.value ? "Nice" : "Naughty"}')),
                    onTap: () => controller.toggleChildStatus(index),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
