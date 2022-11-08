import 'package:riverpoddemo/models/model_counter.dart';

class CounterController {
  // static final CounterController _instance = CounterController._internal();
  // factory CounterController() {
  //   return _instance;
  // }
  // CounterController._internal();
  final ModelCounter _modelCounter = ModelCounter();

  ModelCounter get modelCounter => _modelCounter;
  void incrementCounter() {
    _modelCounter.setCounter(modelCounter.counter + 1);
  }

  String get counter => modelCounter.toString();
}
