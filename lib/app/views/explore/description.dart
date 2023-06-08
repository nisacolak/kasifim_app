import 'package:flutter/material.dart';

import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:readmore/readmore.dart';

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
            child: ReadMoreText(
              readmore,
              trimLines: 2,
              textScaleFactor: 1,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class FollowChip extends StatelessWidget {
  const FollowChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 30,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: ColorName.white,
              )),
          child: Center(
            child: Text(
              'Takip et',
              style: TextStyle(color: ColorName.white),
            ),
          )),
    );
  }
}
