import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/profile/widget/profile_tab.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorName.white, body: ProfileTab()
        // body: CustomScrollView(slivers: [

        //   SliverToBoxAdapter(child: buildProfile(context))
        // SliverList(
        //     delegate: SliverChildListDelegate([

        //
        // ]))

        // SizedBox(
        //   height: 30,
        // ),

        // ProfileTab()
        );
  }
}

Widget buildProfile(BuildContext context) {
  return Column(
    children: [
      //buildUserBio(context),
      //buildSpace(),
      //buildProfileInfo(),
      buildSpace(),
      ProfileTab(),
    ],
  );
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
              'Title 1',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Subtitle 1',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Title 2',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Subtitle 2',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Title 2',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Subtitle 2',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}

Widget buildUserBio(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    // child: Container(
    //   width: MediaQuery.of(context).size.width * .90,
    //   height: MediaQuery.of(context).size.height * .3,
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(20),
    //       color: ColorName.orange.withOpacity(0.1)),
    child: Row(
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
              style: TextStyle(fontSize: 16),
            ),
          )
        ])
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
