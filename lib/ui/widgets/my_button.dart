import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:new_super_jumper/assets.dart';
import 'package:new_super_jumper/ui/widgets/my_text.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double fontSize;
  final double height;
  final double width;

  const MyButton(
    this.text, {
    super.key,
    required this.onPressed,
    this.fontSize = 20, // Default font size
    this.height = 45, // Default height
    this.width = 130, // Default width
  });

  @override
  Widget build(BuildContext context) {
    return SpriteButton.future(
      sprite: Future.value(Assets.button),
      pressedSprite: Future.value(Assets.button),
      onPressed: onPressed,
      height: height,
      width: width,
      label: MyText(
        text,
        fontSize: fontSize, // Apply custom font size
      ),
    );
  }
}
