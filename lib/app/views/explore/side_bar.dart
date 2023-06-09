import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';
import 'package:kasifim_app/app/views/search/filter/widget/close_button.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
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
            FavoriteButton(size: 30),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share_outlined,
                  color: ColorName.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return DraggableScrollableSheet(
                          expand: false,
                          initialChildSize: 0.7,
                          maxChildSize: 0.9,
                          minChildSize: 0.3,
                          builder: (context, scrollController) {
                            return Container(
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Column(children: [
                                StadiumCloseButton(),
                                Expanded(
                                  child: ListView(
                                    controller: scrollController,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 300,
                                        color: ColorName.green,
                                      ),
                                    ],
                                  ),
                                ),
                                TextFormField(),
                              ]),
                            );
                          },
                        );
                      });
                },
                icon: Icon(
                  Icons.mode_comment_outlined,
                  color: ColorName.white,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
