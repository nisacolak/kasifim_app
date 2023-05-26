import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/detail/widget/directions_tab.dart';
import 'package:kasifim_app/app/views/detail/widget/menu_tab.dart';
import 'package:kasifim_app/app/views/detail/widget/reviews_tab.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
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
    // TODO: implement initState
    super.initState();
    rTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(child: _buildDetail(context)),
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    pinned: true,
                    toolbarHeight: 10,
                    titleSpacing: 0.0,
                    automaticallyImplyLeading: false,
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(38),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                    ),
                  ),
                ];
              },
              body: TabBarView(
                  controller: rTabController,
                  children: [MenuTab(), ReviewsTab(), DirectionsTab()]),
            ),
          ),
        ));
  }
}

Widget _buildDetail(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 0, bottom: 0, right: 15, left: 20),
    height: MediaQuery.of(context).size.height * .48,
    width: MediaQuery.of(context).size.width * .90,
    decoration: BoxDecoration(
        //color: ColorName.darkGrey,
        borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        SizedBox(height: 5),
        Container(
          height: MediaQuery.of(context).size.height * .05,
          decoration: BoxDecoration(
              color: ColorName.orange.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   height: MediaQuery.of(context).size.height * .09,
              //   width: MediaQuery.of(context).size.width * .09,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: ColorName.orangeShade,
              //   ),
              //   child:
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),

              // Container(
              //     height: MediaQuery.of(context).size.height * .09,
              //     width: MediaQuery.of(context).size.width * .09,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: ColorName.orangeShade,
              //     ),
              // child:
              FavoriteButton()
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Stack(children: [
          Container(
              height: MediaQuery.of(context).size.height * .35,
              //width: MediaQuery.of(context).size.width * .95,
              decoration: BoxDecoration(
                  //color: ColorName.green,
                  borderRadius: BorderRadius.circular(12)),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * .30,
                  viewportFraction: 0.9,
                  reverse: false,
                ),
                items: [
                  Container(
                    height: MediaQuery.of(context).size.height * .35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      Assets.images.breakfast.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Image.asset(Assets.images.dessert.path, fit: BoxFit.cover)
                ],
              )),
          Positioned(
            bottom: -1,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height * .08,
              width: MediaQuery.of(context).size.width * .80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorName.lightGrey.withOpacity(0.6),
              ),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_sharp,
                            color: ColorName.orange,
                          ),
                          AppText.small(' 4.3'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.restaurant,
                            color: ColorName.orange,
                          ),
                          AppText.small(' Coffee, Dessert'),
                        ],
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: ColorName.orange,
                          ),
                          AppText.small(' Üsküdar/İstanbul'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_lira,
                            color: ColorName.orange,
                          ),
                          AppText.small(' 100 - 200  '),
                        ],
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Viyana Kahvesi',
              style: TextStyle(
                  fontSize: 26,
                  color: ColorName.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.caveat),
            ),
          ],
        )

        //_buildRestaurantInfo(),
      ],
    ),
  );
}
