import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Expanded(
            child: FilledButton(
          onPressed: onPressed,
          child: Text(text),
        ))
      ]),
    );
  }
}
