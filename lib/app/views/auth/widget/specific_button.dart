import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class SpecificButton extends StatelessWidget {
  final String labelText;
  final String imagePath;
  final Function()? onPressed;
  const SpecificButton(
      {Key? key,
      required this.labelText,
      required this.imagePath,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorName.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: onPressed,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Image.asset(
                    imagePath,
                    width: 30,
                  ),
                ),
                AppText.medium(labelText)
              ],
            ),
          )),
    );
  }
}
