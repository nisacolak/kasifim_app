import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/notification/notification_follows.dart';
import 'package:kasifim_app/app/views/notification/notification_restaurant.dart';

import 'package:kasifim_app/gen/colors.gen.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView>
    with TickerProviderStateMixin {
  late final TabController nTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nTabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
            color: ColorName.orange,
          ),
          backgroundColor: ColorName.white,
          title: Text(
            'Notifications',
            style: TextStyle(color: ColorName.orange),
          ),
        ),
        body: DefaultTabController(
            length: 2,
            child: SafeArea(
              child: NestedScrollView(
                headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                        backgroundColor: ColorName.white,
                        elevation: 3,
                        pinned: true,
                        titleSpacing: 0.0,
                        toolbarHeight: 10,
                        bottom: PreferredSize(
                            preferredSize: Size.fromHeight(55),
                            child: Container(
                                color: ColorName.white,
                                child: Column(children: [
                                  Divider(
                                    thickness: 1,
                                  ),
                                  TabBar(
                                      indicatorColor: Colors.transparent,
                                      labelPadding: EdgeInsets.only(left: 60),
                                      labelColor: ColorName.orange,
                                      unselectedLabelColor: ColorName.grey,
                                      controller: nTabController,
                                      tabs: [
                                        Tab(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '  Restaurant',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    SizedBox(
                                                      width: 55,
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                          height: 30,
                                                          child:
                                                              VerticalDivider(
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
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Follow',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ]))))
                  ];
                },
                body: TabBarView(controller: nTabController, children: [
                  NotificationRestaurant(),
                  NotificationFollow(),
                ]),
              ),
            )));
  }
}
