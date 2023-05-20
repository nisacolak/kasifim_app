import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/profile/profile_view.dart';
import 'package:kasifim_app/app/views/profile/widget/media_tab.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: ColorName.white,
            ),
            child: DefaultTabController(
                length: 2,
                child: NestedScrollView(
                  headerSliverBuilder: (context, index) {
                    return [
                      SliverAppBar(
                        leading: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home-body');
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: ColorName.orange,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        pinned: false,
                        floating: false,
                        elevation: 0,
                        snap: false,
                        actions: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: ColorName.orange,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.settings,
                                color: ColorName.orange,
                              )),
                        ],
                        expandedHeight: 300,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: profileAvatar())),
                        ),
                        bottom: TabBar(
                            indicatorWeight: 1,
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
                                    Icon(
                                      Icons.grid_on_sharp,
                                      size: 20,
                                    ),
                                    AppText.medium('  Photos'),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ];
                  },
                  body: TabBarView(controller: pTabController, children: [
                    ProfileReviewTab(),
                    MediaTab(),
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}
