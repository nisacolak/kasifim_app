import 'package:flutter/material.dart';

import 'package:kasifim_app/app/views/profile/widget/media_tab.dart';
import 'package:kasifim_app/app/views/profile/widget/profile_info.dart';
import 'package:kasifim_app/app/views/profile/widget/profile_review_tab.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ProfileTab extends StatefulWidget {
  ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with TickerProviderStateMixin {
  late final TabController pTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pTabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, bool innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: buildUserBio(context),
                ),
                SliverAppBar(
                  backgroundColor: Colors.white,
                  pinned: true,
                  elevation: 0.0,
                  titleSpacing: 0.0,
                  toolbarHeight: 10,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(38),
                    child: TabBar(
                        indicatorColor: ColorName.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelPadding: EdgeInsets.only(left: 50),
                        labelColor: ColorName.darkGrey,
                        unselectedLabelColor: ColorName.grey,
                        controller: pTabController,
                        tabs: [
                          Tab(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.comment,
                                  size: 20,
                                ),
                                AppText.medium('  Reviews'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                AppText.medium('Photos  '),
                                Icon(
                                  Icons.grid_on_sharp,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ];
            },
            body: TabBarView(controller: pTabController, children: [
              ProfileReviewTab(),
              MediaTab(),
            ]),
          ),
        ));
  }
}
