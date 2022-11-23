import 'package:flutter/material.dart';
import 'package:riverpoddemo/controllers/counter_controller.dart';

class CounterControllerWidget extends InheritedWidget {
  const CounterControllerWidget({
    super.key,
    required super.child,
    required this.counterController,
  });

  final CounterController counterController;

  static CounterControllerWidget of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<CounterControllerWidget>();
    assert(result != null, 'No CounterControllerWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant CounterControllerWidget oldWidget) =>
      oldWidget.counterController.modelCounter !=
      counterController.modelCounter;
}
