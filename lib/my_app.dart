import 'package:flutter/material.dart';
import 'package:riverpoddemo/ui/widgets/counter_controller_widget.dart';

import 'controllers/counter_controller.dart';
import 'ui/screens/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CounterControllerWidget(
      counterController: CounterController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
