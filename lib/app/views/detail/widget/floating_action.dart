import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class CustomFloatingAction extends StatelessWidget {
  const CustomFloatingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.white,
            context: context,
            builder: (BuildContext context) {
              return Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                  height: 200,
                  color: ColorName.green.withOpacity(0.1),
                )
              ]);
            });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.edit),
        ],
      ),
    );
  }
}
