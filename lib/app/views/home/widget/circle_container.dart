import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget? widget;
  final Color? color;
  const CircleContainer({
    Key? key,
    this.widget,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.10,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: widget);
  }
}
