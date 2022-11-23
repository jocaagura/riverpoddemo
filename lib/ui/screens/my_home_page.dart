import 'package:flutter/material.dart';

import '../widgets/display_counter_unit_widget.dart';
import '../widgets/my_app_widget.dart';
import '../widgets/text_button_widget.dart';
import 'second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(title: 'Demo contador'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextButtonWidget(),
            const DisplayCounterUnitWidget(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MySecondPage(),
                  ),
                );
              },
              child: Text('SecondPage'),
            )
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
    );
  }
}
