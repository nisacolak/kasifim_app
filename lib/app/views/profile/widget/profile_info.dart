import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

Widget buildUserBio(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 0, right: 15, left: 20),
    height: MediaQuery.of(context).size.height * .30,
    width: MediaQuery.of(context).size.width * .90,
    color: ColorName.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorName.green,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home-body');
                }),
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: ColorName.green,
                ),
                onPressed: () {}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            profileAvatar(),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Name',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alid',
                  overflow: TextOverflow.fade,
                  maxLines: 3,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ]),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .06,
          width: MediaQuery.of(context).size.width * .7,
          child: buildProfileInfo(),
        ),
      ],
    ),
  );
}

class profileAvatar extends StatefulWidget {
  @override
  _profileAvatarState createState() => _profileAvatarState();
}

class _profileAvatarState extends State<profileAvatar> {
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
      child: CircleAvatar(
        backgroundImage: AssetImage(Assets.images.account.path),
        radius: 50,
        child: isHovered
            ? Icon(
                Icons.camera_alt,
                color: ColorName.white,
              )
            : null,
      ),
    );
  }
}

class buildProfileInfo extends StatelessWidget {
  const buildProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Posts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '20',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Followers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '324',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Follow',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '5',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}

class buildSpace extends StatelessWidget {
  const buildSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}
