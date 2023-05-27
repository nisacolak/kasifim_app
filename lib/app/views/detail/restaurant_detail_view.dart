import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:math' as math;
import 'package:kasifim_app/app/views/detail/widget/directions_tab.dart';
import 'package:kasifim_app/app/views/detail/widget/menu_tab.dart';
import 'package:kasifim_app/app/views/detail/widget/reviews_tab.dart';
import 'package:kasifim_app/app/views/home/widget/circle_container.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';

import 'package:kasifim_app/app/widgets/app_text.dart';

import 'package:kasifim_app/gen/colors.gen.dart';

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
                    leading: Padding(
                      padding: const EdgeInsets.only(
                        top: 2,
                        left: 0,
                      ),
                      child: CircleContainer(
                        color: ColorName.orangeShade,
                        widget: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home-body');
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: ColorName.orange,
                          ),
                        ),
                      ),
                    ),
                    elevation: 0,
                    floating: false,
                    snap: false,
                    pinned: false,
                    toolbarHeight: 40,
                    expandedHeight: 300,
                    actions: [
                      CircleContainer(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          color: ColorName.orangeShade,
                          widget: FavoriteButton())
                    ],
                    automaticallyImplyLeading: false,
                    flexibleSpace: FlexibleSpaceBar(
                        titlePadding: EdgeInsets.only(
                            top: 0, left: 55, right: 0, bottom: 27),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Viyana Kahvesi',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text('Coffee Shop',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white)),
                          ],
                        ),
                        background: Image.network(
                          'https://viyanakahvesi.com/wp-content/uploads/2021/07/viyana-kahvesi-narmanli.gif',
                          fit: BoxFit.cover,
                        )
                        // CarouselSlider(
                        //     items: [
                        //   Container(
                        //     color: Colors.blue,
                        //     child: Image.network(
                        //       'https://viyanakahvesi.com/wp-content/uploads/2021/07/viyana-kahvesi-narmanli.gif',
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        //   Container(
                        //     color: Colors.red,
                        //     child: Image.network(
                        //       'https://media-cdn.tripadvisor.com/media/photo-s/19/14/f4/fa/photo5jpg.jpg',
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        //   Container(
                        //     color: Colors.green,
                        //     child: Image.network(
                        //         'https://biyudum.com/images/slider/s21ameltbe.jpg'),
                        //   ),
                        // ],
                        //     options: CarouselOptions(
                        //         height:
                        //             MediaQuery.of(context).size.height * .60,
                        //         viewportFraction: .90,
                        //         reverse: false,
                        //         aspectRatio: 16 / 7)),
                        ),
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
                        minHeight: MediaQuery.of(context).size.height * .05,
                        maxHeight: MediaQuery.of(context).size.height * .05,
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
                                      AppText.medium('  Menu'),
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

class buildRestaurantInfo extends StatelessWidget {
  const buildRestaurantInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            // Icon(
            //   Icons.star_sharp,
            //   color: ColorName.orange,
            // ),
            RatingBar.builder(
              initialRating: 3.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 22,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: ColorName.orange,
              ),
              onRatingUpdate: (rating) {},
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '4.5',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.currency_lira,
              color: ColorName.orange,
            ),
            Text(
              ' 100 - 200  ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ]),
      SizedBox(
        height: 5,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: ColorName.orange,
            ),
            Text(' Üsküdar/İstanbul',
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.restaurant,
              color: ColorName.orange,
            ),
            Text(' Coffee, Dessert',
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
      ]),
    ]);
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
