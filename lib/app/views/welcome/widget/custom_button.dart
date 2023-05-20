import 'package:flutter/material.dart';

import 'package:kasifim_app/app/widgets/app_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color backgroundColor;
  final Color? labelColor;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.labelColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          onPrimary: labelColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        onPressed: onPressed,
        child: AppText.medium(text),
      ),
    );
  }
}
