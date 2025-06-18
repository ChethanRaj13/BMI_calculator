import 'package:flutter/material.dart';

class Reuse extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;

  const Reuse({
    Key? key,
    required this.colour,
    this.cardChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 165,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour, // ✅ use the colour passed from outside
        borderRadius: BorderRadius.circular(20),
      ),
      child: cardChild, // ✅ show the child if provided
    );
  }
}