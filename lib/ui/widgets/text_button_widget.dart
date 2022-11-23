import 'package:flutter/material.dart';

import 'counter_controller_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CounterControllerWidget.of(context)
            .counterController
            .incrementCounter();
      },
      child: const Text(
        'You have pushed the button this many times:',
      ),
    );
  }
}
