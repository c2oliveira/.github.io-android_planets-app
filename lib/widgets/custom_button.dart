import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  CustomButton({required this.text, required this.onPressed, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
```
