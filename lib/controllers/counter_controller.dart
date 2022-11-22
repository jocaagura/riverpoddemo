import 'package:riverpoddemo/interfaces/interfarces.dart';

import '../models/model_counter.dart';

class CounterController implements InterfaceController {
  const CounterController({this.modelCounter = const ModelCounter(0)});
  final ModelCounter modelCounter;

  CounterController incrementCounter() {
    final tmp = modelCounter.copyWith(modelCounter.counter + 1);
    return CounterController(modelCounter: tmp);
  }

  String get counter => modelCounter.toString();

  @override
  CounterController copyWith([ModelCounter? modelCounterTmp]) {
    return CounterController(modelCounter: modelCounterTmp ?? modelCounter);
  }
}
