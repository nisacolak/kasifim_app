import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onPressed;
  FilterButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
        onPressed: onPressed,
        child: Text(
          'Filter',
          style: TextStyle(
            color: ColorName.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
