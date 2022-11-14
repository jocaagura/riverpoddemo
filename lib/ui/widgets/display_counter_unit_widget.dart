import 'package:flutter/material.dart';
import 'package:riverpoddemo/ui/widgets/counter_controller_widget.dart';

class DisplayCounterUnitWidget extends StatelessWidget {
  const DisplayCounterUnitWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String counterNumber =
        CounterControllerWidget.of(context).counterController.counter;
    return Text(
      counterNumber,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
