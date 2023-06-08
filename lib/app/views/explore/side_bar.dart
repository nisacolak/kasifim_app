import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ExploreSideBar extends StatelessWidget {
  const ExploreSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FavoriteButton(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share_outlined,
                  color: ColorName.white,
                  size: 24,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mode_comment_outlined,
                  color: ColorName.white,
                  size: 24,
                ))
          ],
        ),
      ),
    );
  }
}
