import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpoddemo/main.dart';

class TextButtonWidget extends ConsumerWidget {
  const TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(helloWorldProvider).incrementCounter();
      },
      child: const Text(
        'You have pushed the button this many times:',
      ),
    );
  }
}
