import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/detail/widget/expandable_text.dart';

import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ExploreDescription extends StatelessWidget {
  const ExploreDescription({super.key});
  final String readmore =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis erat nec diam fringilla malesuada. Integer tristique, lacus ac rutrum auctor, nibh libero tincidunt lectus, et lobortis diam tellus sit amet arcu. Nullam facilisis odio quam.';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
              dense: true,
              minLeadingWidth: 0,
              horizontalTitleGap: 12,
              title: Text(
                'Slightly Smiling Face',
                style: TextStyle(
                  fontSize: 16,
                  color: ColorName.white,
                ),
              ),
              leading: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(Assets.images.account.path)),
              trailing: Padding(
                padding: EdgeInsets.only(right: 10, top: 10),
                child: FollowChip(),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: ExpandableText(
                text: readmore,
                color: ColorName.white,
              )
              // ReadMoreText(
              //   readmore,
              //   trimLines: 2,
              //   textScaleFactor: 1,
              //   trimMode: TrimMode.Line,
              //   style: TextStyle(color: Colors.white, fontSize: 16),
              // ),
              )
        ],
      ),
    );
  }
}

class FollowChip extends StatefulWidget {
  const FollowChip({
    Key? key,
  }) : super(key: key);

  @override
  State<FollowChip> createState() => _FollowChipState();
}

class _FollowChipState extends State<FollowChip> {
  bool isFollowing = false;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleFollow,
      child: Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorName.white,
          ),
        ),
        child: Center(
          child: Text(
            isFollowing ? 'Unfollow' : 'Follow',
            style: TextStyle(color: ColorName.white),
          ),
        ),
      ),
    );
  }
}
