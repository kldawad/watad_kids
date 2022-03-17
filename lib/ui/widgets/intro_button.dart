import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final String title;
  final double leftCardRadius;
  final Color color;
  final Function() onTap;

  const IntroButton({
    Key? key,
    required this.title,
    required this.leftCardRadius,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(leftCardRadius),
          right: Radius.circular(10),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
