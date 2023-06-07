import 'package:flutter/material.dart';

import 'package:kasifim_app/gen/colors.gen.dart';

class CustomCircleAvatar extends StatelessWidget {
  final Widget? child;
  CustomCircleAvatar({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * .14,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: ColorName.orange),
      ),
      child: CircleAvatar(
        child: child,
      ),
    );
  }
}
