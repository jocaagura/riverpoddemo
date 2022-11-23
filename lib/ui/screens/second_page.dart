import 'package:flutter/material.dart';

import '../widgets/display_counter_unit_widget.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: DisplayCounterUnitWidget(),
      ),
    );
  }
}
