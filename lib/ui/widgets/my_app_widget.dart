import 'package:flutter/material.dart';

import 'display_counter_unit_widget.dart';

class MyAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const MyAppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), const DisplayCounterUnitWidget()],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 30.0);
}
