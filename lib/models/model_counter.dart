class ModelCounter {
  int _counter = 0;

  void setCounter(int value) {
    print('Increment by one');
    _counter = value;
  }

  int get counter => _counter;

  @override
  String toString() {
    return _counter.toString();
  }
}
