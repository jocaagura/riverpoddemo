import 'package:riverpoddemo/models/model_counter.dart';

class CounterController {
  ModelCounter _modelCounter = ModelCounter();

  ModelCounter get modelCounter => _modelCounter;
  void incrementCounter() {
    _modelCounter.setCounter(modelCounter.counter + 1);
  }

  String get counter => modelCounter.toString();
}
