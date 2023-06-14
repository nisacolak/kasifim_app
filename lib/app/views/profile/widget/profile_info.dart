import 'package:flutter/material.dart';
import 'package:kasifim_app/app/routes/custom_page_route.dart';
import 'package:kasifim_app/app/views/search/filter/widget/close_button.dart';
import 'package:kasifim_app/app/views/search/search_box.dart';
import 'package:kasifim_app/app/views/settings/settings.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

Widget buildUserBio(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 0, right: 15, left: 15),
    height: MediaQuery.of(context).size.height * .36,
    width: MediaQuery.of(context).size.width * .90,
    decoration: BoxDecoration(
        color: ColorName.white, borderRadius: BorderRadius.circular(12)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 15,
          child: Row(
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
        ),
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(Assets.images.expressionless.path),
        ),
        //ProfileAvatar(),
        profileBio(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .07,
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
      Center(
        child: Text(
          'Muhammed Cundullah Bozdağ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .05,
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            "Lorem ipsum dolor sit amet orci aliquam",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      )
    ]);
  }
}

class buildProfileInfo extends StatelessWidget {
  final TextEditingController followerSearchController =
      TextEditingController();
  buildProfileInfo({
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
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return showProfileFollowStatus(
                      followerSearchController: followerSearchController);
                });
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
          width: 5,
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

class showProfileFollowStatus extends StatelessWidget {
  const showProfileFollowStatus({
    super.key,
    required this.followerSearchController,
  });

  final TextEditingController followerSearchController;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      maxChildSize: 0.9,
      minChildSize: 0.4,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              StadiumCloseButton(),
              Align(
                alignment: Alignment.topCenter,
                child: SearchContainer(
                    controller: followerSearchController,
                    hintText: 'search',
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .05),
              ),
              _showFollowers(
                scrollController: scrollController,
              ),
            ]),
          ),
        );
      },
    );
  }
}

class _showFollowers extends StatelessWidget {
  final ScrollController scrollController;
  const _showFollowers({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          controller: scrollController,
          itemCount: 30,
          itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(Assets.images.account.path),
                ),
                title: Text('John Doe'),
                trailing: IconButton(
                  icon: Icon(Icons.person_add),
                  onPressed: () {},
                ),
              )),
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
      height: MediaQuery.of(context).size.height * .02,
    );
  }
}
