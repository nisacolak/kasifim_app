import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class CustomActionChip extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color labelColor;
  final VoidCallback onPressed;

  const CustomActionChip({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.labelColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: AppText.medium(
        text,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: ColorName.darkGrey,
        ),
      ),
      backgroundColor: ColorName.lightGrey,
      elevation: 3.0,
      onPressed: onPressed,
    );
  }
}
