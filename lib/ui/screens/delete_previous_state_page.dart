import 'package:flutter/material.dart';

import '../../controllers/counter_controller.dart';
import 'my_home_page.dart';

class DeletePreviousStatePage extends StatelessWidget {
  const DeletePreviousStatePage({Key? key}) : super(key: key);
  // TODO: Make sure that the controller used is the same of initial myApp Controller

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
