import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/detail/widget/expandable_text.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';

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
              title: AppText.basic(
                'Slightly Smiling Face',
                color: ColorName.white,
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
              child: Column(
                children: [
                  ExpandableText(
                    text: readmore,
                    tags: '#tag1',
                    color: ColorName.white,
                  ),
                ],
              ))
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
        width: isFollowing ? 70 : 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorName.white,
          ),
        ),
        child: Center(
          child: AppText.basic(isFollowing ? 'Unfollow' : 'Follow',
              color: ColorName.white),
        ),
      ),
    );
  }
}
