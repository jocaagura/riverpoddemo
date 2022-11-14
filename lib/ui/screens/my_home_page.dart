import 'package:flutter/material.dart';
import 'package:riverpoddemo/controllers/counter_controller.dart';
import 'package:riverpoddemo/ui/screens/delete_previous_state_page.dart';
import 'package:riverpoddemo/ui/widgets/counter_controller_widget.dart';

import '../widgets/display_counter_unit_widget.dart';
import '../widgets/my_app_widget.dart';
import '../widgets/my_button_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    this.title = "No title",
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CounterController counterController;
  @override
  void initState() {
    super.initState();
    counterController = CounterController();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return CounterControllerWidget(
      counterController: counterController,
      child: Scaffold(
        appBar: MyAppBarWidget(title: widget.title),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              DisplayCounterUnitWidget(),
              MyButton(
                function: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const DeletePreviousStatePage(),
                  ));
                },
                label: 'Kill me',
              ),
              MyButton(
                  label: 'Clone me',
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyHomePage(
                          title:
                              "I am the number ${counterController.counter}"),
                    ));
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counterController.incrementCounter();
            });
            // Navigator.of(context).pushReplacement(MaterialPageRoute(
            //   builder: (context) => MyHomePage(
            //       counterController: widget.counterController,
            //       title: "I am the number ${widget.counterController.counter}"),
            // ));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
