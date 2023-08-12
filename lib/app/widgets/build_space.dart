import 'package:flutter/material.dart';

class buildSpace extends StatelessWidget {
  const buildSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }
}

class buildSpaceMedium extends StatelessWidget {
  const buildSpaceMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.009);
  }
}

class buildSpaceSmall extends StatelessWidget {
  const buildSpaceSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.01);
  }
}
