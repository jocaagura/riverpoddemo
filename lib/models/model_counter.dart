import '../interfaces/interfarces.dart';

class ModelCounter extends InterfaceModel {
  const ModelCounter(this.counter);

  final int counter;

  @override
  String toString() {
    return counter.toString();
  }

  @override
  ModelCounter copyWith([int? valueTmp]) {
    return ModelCounter(valueTmp ?? counter);
  }

  @override
  Map<String, dynamic> toJson() {
    return {'counter': counter};
  }

  factory ModelCounter.fromJson(Map<String, dynamic> json) {
    return ModelCounter(int.tryParse(json['counter'].toString()) ?? 0);
  }

  @override
  InterfaceModel fromJson(Map<String, dynamic> json) {
    return ModelCounter(int.tryParse(json['counter'].toString()) ?? 0);
  }
}
