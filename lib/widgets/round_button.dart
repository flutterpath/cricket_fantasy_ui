import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color buttonColor;
  final VoidCallback onPressed;
  final Widget child;

  const RoundButton({
    Key key,
    this.buttonColor,
    this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 10,
      onPressed: onPressed,
      color: buttonColor,
      child: child,
      padding: EdgeInsets.all(20),
      shape: CircleBorder(),
    );
  }
}
