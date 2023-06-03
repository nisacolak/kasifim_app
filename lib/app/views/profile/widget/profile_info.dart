import 'package:flutter/material.dart';
import 'package:kasifim_app/app/routes/custom_page_route.dart';
import 'package:kasifim_app/app/views/search/filter/widget/close_button.dart';
import 'package:kasifim_app/app/views/settings/settings.dart';
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
              onPressed: () => Navigator.of(context)
                  .push(CustomPageRoute(child: ProfileSettings())),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProfileAvatar(),
            profileBio(),
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

class profileBio extends StatelessWidget {
  const profileBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
    ]);
  }
}

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
        GestureDetector(
          onTap: () {
            _showBottomSheet(context);
          },
          child: Column(
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

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              StadiumCloseButton(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Ayarlar seçildiğinde yapılacak işlemler
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Çıkış yap seçildiğinde yapılacak işlemler
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
