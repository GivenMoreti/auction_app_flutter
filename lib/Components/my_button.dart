import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  // button params
  final String title;
  final void Function()? onTap;
  final Color background;
  final Color color;

// constructor
  const MyButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.background,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: color),
            ),
          ),
        ),
      ),
    );
  }
}
