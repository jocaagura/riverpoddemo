import 'package:flutter/material.dart';

import '../../controllers/counter_controller.dart';

class MyAppControllerWidget extends InheritedWidget {
  const MyAppControllerWidget(
      {super.key, required super.child, required this.counterController});
  final CounterController counterController;
  static MyAppControllerWidget of(BuildContext context) {
    final MyAppControllerWidget? result =
        context.dependOnInheritedWidgetOfExactType<MyAppControllerWidget>();
    assert(result != null, 'No MyAppControllerWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MyAppControllerWidget oldWidget) =>
      counterController.counter != oldWidget.counterController.counter;
}
