import 'package:flutter/material.dart';
import 'package:riverpoddemo/controllers/counter_controller.dart';

import 'my_home_page.dart';

class DeletePreviousStatePage extends StatelessWidget {
  const DeletePreviousStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Previous State'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(
                        counterController: CounterController(),
                        title: 'Came from delete state page'),
                  ));
            },
            child: const Text('Back')),
      ),
    );
  }
}
