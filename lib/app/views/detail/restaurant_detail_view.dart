import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:math' as math;

import 'package:kasifim_app/app/views/detail/widget/directions_tab.dart';
import 'package:kasifim_app/app/views/detail/widget/menu_tab.dart';

import 'package:kasifim_app/app/views/detail/widget/restaurant_info.dart';
import 'package:kasifim_app/app/views/detail/widget/reviews_tab.dart';

import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';

import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/app/widgets/glass_box.dart';
import 'package:kasifim_app/gen/assets.gen.dart';

import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/gen/fonts.gen.dart';

class RestaurantDetail extends StatefulWidget {
  const RestaurantDetail({Key? key}) : super(key: key);

  @override
  State<RestaurantDetail> createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail>
    with TickerProviderStateMixin {
  late final TabController rTabController;
  @override
  void initState() {
    super.initState();
    rTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    floating: false,
                    snap: false,
                    pinned: false,
                    toolbarHeight: 55,
                    expandedHeight: 300,
                    actions: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GlassBox(
                                    height: 40,
                                    width: 40,
                                    child: BackButton(
                                      color: ColorName.orange,
                                    )),
                                GlassBox(
                                    height: 40,
                                    width: 40,
                                    child: FavoriteButton(
                                      size: 25,
                                    )),
                              ]),
                        ),
                      )
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                        titlePadding: EdgeInsets.only(
                            top: 0, left: 62, right: 0, bottom: 27),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Text(
                                  'Viyana Kahvesi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: FontFamily.helveticaNeue,
                                    fontWeight: FontWeight.w400,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 5
                                      ..color = ColorName.black,
                                  ),
                                ),
                                const Text(
                                  'Viyana Kahvesi',
                                  style: TextStyle(
                                    fontFamily: FontFamily.helveticaNeue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: ColorName.white,
                                  ),
                                ),
                              ],
                            ),
                            Text('Coffee Shop',
                                style: TextStyle(
                                    fontFamily: FontFamily.helveticaNeue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Colors.white)),
                          ],
                        ),
                        background: Image.asset(
                          Assets.images.dessert.path,
                          fit: BoxFit.cover,
                        )),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(30),
                      child: Container(
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ))),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: false,
                    delegate: _SliverAppBarDelegate(
                      minHeight: MediaQuery.of(context).size.height * .11,
                      maxHeight: MediaQuery.of(context).size.height * .06,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: ColorName.white,
                        ),
                        child: buildRestaurantInfo(),
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverAppBarDelegate(
                        minHeight: MediaQuery.of(context).size.height * .07,
                        maxHeight: MediaQuery.of(context).size.height * .07,
                        child: Container(
                          color: ColorName.white,
                          child: TabBar(
                              indicatorColor: ColorName.orange,
                              indicatorSize: TabBarIndicatorSize.label,
                              labelColor: ColorName.orange,
                              // labelPadding: EdgeInsets.only(left: 50),
                              unselectedLabelColor: ColorName.grey,
                              controller: rTabController,
                              tabs: [
                                Tab(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.restaurant_menu,
                                        size: 20,
                                      ),
                                      AppText.medium('  Menu'), //16 olmalı
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.chat,
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
                                        Icons.location_on,
                                        size: 20,
                                      ),
                                      AppText.medium('Directions'),
                                    ],
                                  ),
                                ),
                              ]),
                        )),
                  ),
                ];
              },
              body: TabBarView(
                controller: rTabController,
                children: [MenuTab(), ReviewsTab(), DirectionsTab()],
              ))),
    ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;

  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
