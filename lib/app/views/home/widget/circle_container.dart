import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final Color? badgeColor;
  final EdgeInsetsGeometry? margin;

  const CircleContainer({
    Key? key,
    this.child,
    this.margin,
    this.color,
    this.badgeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.10,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
