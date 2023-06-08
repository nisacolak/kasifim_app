import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ExploreTitle extends StatelessWidget {
  const ExploreTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,
      horizontalTitleGap: 10,
      title: Text(
        'Restaurant Name',
        style: TextStyle(
          fontSize: 20,
          color: ColorName.white,
        ),
      ),
      // leading: Container(
      //   height: 30,
      //   width: 30,
      //   decoration: BoxDecoration(
      //       color: ColorName.yellow,
      //       borderRadius: BorderRadius.circular(8),
      //       border: Border.all(color: ColorName.white)),
      // ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.photo_camera_outlined,
          size: 24,
          color: ColorName.white,
        ),
      ),
    );
  }
}
