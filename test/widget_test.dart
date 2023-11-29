// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import 'package:santa_demo_app/main.dart';
//
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(MyApp());
//
//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);
//
//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();
//
//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }


// test/controller_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:santa_demo_app/controller/santa_list_contoller.dart';
import 'package:santa_demo_app/model/child_model.dart';


void main() {

  //This test verifies that a new child is added in the list

  test('Adding a child to the list', () {
    SantaListController controller = SantaListController();

    expect(controller.childrenList.length, 0);

    ChildModel child = ChildModel(name: 'Waseem', country: 'Pak', isNice: true);
    controller.addChild(child);

    expect(controller.childrenList.length, 1);
    expect(controller.childrenList[0].name, 'Waseem');
  });


  //This test verifies if the toggle child status is working or not.
  //Note: it does not verify the state management
  test('Toggling child status', () {
    SantaListController controller = SantaListController();

    ChildModel child = ChildModel(name: 'Waseem', country: 'Pak', isNice: true);
    controller.addChild(child);

    expect(controller.childrenList[0].isNice.value, true);

    controller.toggleChildStatus(0);

    expect(controller.childrenList[0].isNice.value, false);

    controller.toggleChildStatus(0);

    expect(controller.childrenList[0].isNice.value, true);
  });
}
