import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onTap;
  final double height;
  final double radius;
  final double width;

  const FilledButton({
    Key key,
    this.buttonText,
    this.buttonColor,
    this.textColor = Colors.black,
    this.onTap,
    this.height, this.radius, this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? null,
        width: width ?? null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 5),
          color: buttonColor ?? Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                buttonText,
                style:
                Theme.of(context).textTheme.button.copyWith(color: textColor ?? Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilledButtonL extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onTap;
  final double height;

  const FilledButtonL({
    Key key,
    this.buttonText,
    this.buttonColor,
    this.textColor = Colors.black,
    this.onTap,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.purple.withOpacity(.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text(
                buttonText,
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilledButtonC extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onTap;
  final Widget child;

  const FilledButtonC({
    Key key,
    this.buttonText,
    this.buttonColor,
    this.textColor = Colors.black,
    this.onTap,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.purple,
          ),
          child: child,
        ),
      ),
    );
  }
}
