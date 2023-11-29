import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/santa_list_contoller.dart';
import '../model/child_model.dart';

class AddChildScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final SantaListController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Kid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: countryController,
              decoration: InputDecoration(labelText: 'Country'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty && countryController.text.isNotEmpty) {
                  var newChild = ChildModel(
                    name: nameController.text,
                    country: countryController.text,
                    isNice: true,
                  );
                  controller.addChild(newChild);
                  Get.back();
                }
              },
              child: Text('Add Kid'),
            ),
          ],
        ),
      ),
    );
  }
}
