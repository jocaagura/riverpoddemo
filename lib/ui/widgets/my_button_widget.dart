import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.label, required this.function})
      : super(key: key);

  final String label;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: GestureDetector(
        onTap: function,
        child: Text(
          label,
        ),
      ),
    );
  }
}
