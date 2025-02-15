import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const FilterButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        //color: ColorName.green,
        height: MediaQuery.of(context).size.height * .09,
        width: MediaQuery.of(context).size.width * .46,
        child: AppText.basic(
          text,
        ),
      ),
    );
  }
}
