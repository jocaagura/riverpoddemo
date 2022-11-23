import 'package:flutter/material.dart';
import 'package:riverpoddemo/models/model_counter.dart';
import 'package:riverpoddemo/ui/widgets/counter_controller_widget.dart';

class DisplayCounterUnitWidget extends StatelessWidget {
  const DisplayCounterUnitWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ModelCounter>(
        stream: CounterControllerWidget.of(context)
            .counterController
            .streamModelCounter,
        builder: (context, snapshot) {
          final String counterNumber =
              CounterControllerWidget.of(context).counterController.counter;
          return Text(
            '$counterNumber - ${snapshot.data}',
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}
