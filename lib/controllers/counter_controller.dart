import 'package:riverpoddemo/interfaces/interfarces.dart';

import '../models/model_counter.dart';

class CounterController implements InterfaceController {
  CounterController();
  ModelCounter _modelCounter = const ModelCounter(0);

  ModelCounter get modelCounter => _modelCounter;
  void incrementCounter() {
    final tmp = _modelCounter.copyWith(_modelCounter.counter + 1);
    _modelCounter = tmp;
  }

  String get counter => modelCounter.toString();

  @override
  InterfaceController copyWith() {
    return this;
  }
}
