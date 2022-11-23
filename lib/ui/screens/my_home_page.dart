import 'package:flutter/material.dart';
import 'package:riverpoddemo/controllers/counter_controller.dart';
import 'package:riverpoddemo/ui/widgets/counter_controller_widget.dart';

import '../widgets/display_counter_unit_widget.dart';
import '../widgets/my_app_widget.dart';

CounterController counterController = CounterController();

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterControllerWidget(
      counterController: counterController,
      child: Scaffold(
        appBar: const MyAppBarWidget(title: 'Demo contador'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  counterController.incrementCounter();
                },
                child: const Text(
                  'You have pushed the button this many times:',
                ),
              ),
              const DisplayCounterUnitWidget(),
              // MyButton(
              //   function: () {
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //       builder: (context) => const DeletePreviousStatePage(),
              //     ));
              //   },
              //   label: 'Kill me',
              // ),
              // MyButton(
              //     label: 'Clone me',
              //     function: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => const MyHomePage(),
              //       ));
              //     })
            ],
          ),
        ),
        //floatingActionButton: FloatingActionButton(
        //  onPressed: () {
        //    counterController.incrementCounter();
        //  },
        //  tooltip: 'Increment',
        //  child: const Icon(Icons.add),
        //), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
