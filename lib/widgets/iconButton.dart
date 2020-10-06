import 'package:flutter/material.dart';

class IconButton1 extends StatelessWidget {
  final Color buttonColor;
  final VoidCallback onPressed;
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  const IconButton1({
    Key key,
    this.buttonColor,
    this.onPressed,
    this.icon,
    this.iconSize, this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: buttonColor,
      onPressed: onPressed,
      icon: Icon(icon, size: iconSize ?? 24, color: iconColor,),
    );
  }
}