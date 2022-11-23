import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/counter_controller.dart';
import 'my_app.dart';

final helloWorldProvider = Provider((_) => CounterController());

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}
