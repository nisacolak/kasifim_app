import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ProfileAvatar extends StatefulWidget {
  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Opacity(
        opacity: isHovered ? 0.3 : 1.0,
        child: CircleAvatar(
          backgroundColor: ColorName.black,
          backgroundImage: AssetImage(Assets.images.account.path),
          radius: 50,
          child: isHovered
              ? Icon(
                  Icons.camera_alt,
                  color: ColorName.black,
                )
              : null,
        ),
      ),
    );
  }
}
