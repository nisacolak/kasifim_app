import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class StadiumCloseButton extends StatelessWidget {
  const StadiumCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * .006,
        width: MediaQuery.of(context).size.width * .09,
        decoration: BoxDecoration(
            color: ColorName.customGrey,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
