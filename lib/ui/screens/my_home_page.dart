import 'package:flutter/material.dart';
import 'package:riverpoddemo/controllers/counter_controller.dart';
import 'package:riverpoddemo/ui/widgets/counter_inherited.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage(
      {super.key, required this.counterController, required this.title});

  final CounterController counterController;
  final String title;

  @override
  Widget build(BuildContext context) {
    final counterState = CountState.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Cuentame mas... igual no me importa",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                counterState.count.toString(),
                style: const TextStyle(
                  fontSize: 100,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_a_photo),
        onPressed: () {
          counterState.addCounter();
        },
      ),
    );
  }
}
