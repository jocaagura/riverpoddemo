import 'dart:async';

import 'package:riverpoddemo/interfaces/interfarces.dart';

import '../models/model_counter.dart';

class CounterController implements InterfaceController {
  CounterController() {
    _streamController = StreamController<ModelCounter>.broadcast();
    _streamController.sink.add(_modelCounter);
  }
  ModelCounter _modelCounter = const ModelCounter(0);
  late StreamController<ModelCounter> _streamController;

  ModelCounter get modelCounter => _modelCounter;
  void incrementCounter() {
    final tmp = _modelCounter.copyWith(_modelCounter.counter + 1);
    _modelCounter = tmp;
    _streamController.sink.add(_modelCounter);
  }

  String get counter => modelCounter.toString();
  Stream<ModelCounter> get streamModelCounter => _streamController.stream;

  @override
  InterfaceController copyWith() {
    return this;
  }
}
