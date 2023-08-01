import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasifim_app/app/views/profile/modules/user_bloc.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileViewBloc>().add(ProfileViewLoadingEvent());
    });

    return BlocBuilder<ProfileViewBloc, ProfileViewStates>(
      builder: (context, state) {
        if (state is ProfileViewLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProfileViewSuccessState) {
          return _mainWidget(context, state);
        } else {
          return Center(child: Text("error"));
        }
      },
    );
  }

  Scaffold _mainWidget(BuildContext context, ProfileViewSuccessState state) {
    return Scaffold(
      backgroundColor: ColorName.lightGrey,
      body: DefaultTabController(
          length: 2,
          child: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                      child: BuildUserBio(
                    userData: state.userData,
                  )),
                  SliverAppBar(
                    backgroundColor: ColorName.lightGrey,
                    pinned: true,
                    elevation: 0.0,
                    titleSpacing: 0.0,
                    toolbarHeight: 10,
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(42),
                      child: Container(
                        color: ColorName.lightGrey,
                        child: Column(
                          children: [
                            TabBar(
                                indicatorColor: Colors.transparent,
                                labelPadding: EdgeInsets.only(left: 50),
                                labelColor: ColorName.darkGrey,
                                unselectedLabelColor: ColorName.grey,
                                controller: pTabController,
                                tabs: [
                                  Tab(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.comment,
                                                size: 20,
                                              ),
                                              AppText.medium('  Reviews'),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                    height: 30,
                                                    child: VerticalDivider(
                                                      thickness: 2,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(controller: pTabController, children: [
                ProfileReviewTab(),
                MediaTab(),
              ]),
            ),
          )),
    );
  }
}
