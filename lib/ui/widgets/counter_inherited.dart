import 'package:flutter/material.dart';

class CountState extends InheritedWidget {
  final int count;
  final Function addCounter;

  const CountState({
    required this.count,
    required super.child,
    required this.addCounter,
    super.key,
  });

  static CountState of(BuildContext context) {
    final CountState? countState =
        context.dependOnInheritedWidgetOfExactType<CountState>();
    assert(countState != null, "No encontre un contexto");
    return countState!;
  }

  @override
  bool updateShouldNotify(CountState oldWidget) {
    return count != oldWidget.count;
  }
}
