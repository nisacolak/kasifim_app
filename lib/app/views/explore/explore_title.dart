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
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.photo_camera_outlined,
          size: 30,
          color: ColorName.white,
        ),
      ),
    );
  }
}
