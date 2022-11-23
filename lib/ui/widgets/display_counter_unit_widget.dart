import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';
import '../../models/model_counter.dart';

class DisplayCounterUnitWidget extends ConsumerWidget {
  const DisplayCounterUnitWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // String value = ref.watch(helloWorldProvider).counter;
    // return Text(
    //   value,
    //   style: Theme.of(context).textTheme.headline4,
    // );
    final counterController = ref.watch(helloWorldProvider);
    return StreamBuilder<ModelCounter>(
        stream: counterController.streamModelCounter,
        builder: (context, snapshot) {
          final String counterNumber = counterController.counter;
          return Text(
            '$counterNumber - ${snapshot.data}',
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}
