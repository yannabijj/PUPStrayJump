import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color; // Added color parameter

  const MyText(
    this.text, {
    super.key,
    this.fontSize = 20,
    this.color = const Color.fromARGB(255, 129, 57, 9), // Default color
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color, // Now supports custom colors
        fontWeight: FontWeight.w800,
        fontFamily: 'DaveysDoodleface',
      ),
    );
  }
}
