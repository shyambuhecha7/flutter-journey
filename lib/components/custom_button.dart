import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final Color color;
  final TextStyle? textStyle;
  final double borderRadius;
  final EdgeInsets padding;

  const Custombutton({
    super.key,
    required this.text,
    required this.onPress,
    this.color = Colors.blue,
    this.textStyle,
    this.borderRadius = 8.0,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
