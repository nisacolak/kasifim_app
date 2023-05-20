import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: AppText.medium(
          text,
          color: ColorName.orange,
        ));
  }
}
