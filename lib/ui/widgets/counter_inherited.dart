import 'package:flutter/material.dart';

class CountState extends InheritedWidget {
  final int count;
  final Widget child;
  final Function addCounter;

  const CountState({
    required this.count,
    required this.child,
    required this.addCounter,
    super.key,
  }) : super(child: child);

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
