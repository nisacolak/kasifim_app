import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:kasifim_app/app/views/search/filter/filtered_restaurant_card.dart';

import 'package:kasifim_app/app/views/search/filter/widget/filter_category.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_ratings.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_short.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';

import 'package:kasifim_app/gen/colors.gen.dart';

import 'widget/filter_slider.dart';

class FilteredRestaurantsAdvanced extends StatefulWidget {
  const FilteredRestaurantsAdvanced({
    super.key,
  });

  @override
  State<FilteredRestaurantsAdvanced> createState() =>
      _FilteredRestaurantsAdvancedState();
}

class _FilteredRestaurantsAdvancedState
    extends State<FilteredRestaurantsAdvanced> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    Duration duration = Duration(milliseconds: 400);
    Timer(duration, () {
      scaffoldKey.currentState!.openEndDrawer();
    });
  }

  TextEditingController filterRestaurantController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorName.white,
          key: scaffoldKey,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: AppBar(
                  toolbarHeight: 100,
                  backgroundColor: ColorName.white,
                  automaticallyImplyLeading: true,
                  elevation: 2,
                  actions: [
                    Column(
                      children: [
                        Row(children: [
                          BackButton(
                            color: ColorName.orange,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .01,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                color: ColorName.orange.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: TextFormField(
                                controller: filterRestaurantController,
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 15),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: ColorName.orange, fontSize: 16),
                                  hintText: 'search',
                                  prefixIcon: Icon(
                                    Icons.search_sharp,
                                    color: ColorName.orange,
                                  ),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .01),
                        ]),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                          width: MediaQuery.of(context).size.width * .99,
                          child: Divider(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                          decoration: BoxDecoration(
                                              color: ColorName.white,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Wrap(
                                            children: [
                                              ListTile(
                                                onTap: () {},
                                                //leading: Icon(Icons.share),
                                                title: Text('Recommend'),
                                              ),
                                              ListTile(
                                                onTap: () {},
                                                //leading: Icon(Icons.copy),
                                                title: Text('Top Rated'),
                                              ),
                                              ListTile(
                                                onTap: () {},
                                                //leading: Icon(Icons.share),
                                                title: Text('Nearby'),
                                              ),
                                              ListTile(
                                                onTap: () {},
                                                //leading: Icon(Icons.edit),
                                                title:
                                                    Text('Price High to Low'),
                                              ),
                                              ListTile(
                                                onTap: () {},
                                                //leading: Icon(Icons.share),
                                                title:
                                                    Text('Price Low to High'),
                                              ),
                                            ],
                                          ));
                                    },
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height * .05,
                                  width:
                                      MediaQuery.of(context).size.width * .46,
                                  child: AppText.basic('Sort by',
                                      color: ColorName.orange,
                                      fontWeight: FontWeight.w500),
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    thickness: 1,
                                  )),
                            ),
                            GestureDetector(
                                onTap: () {
                                  scaffoldKey.currentState!.openEndDrawer();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height * .05,
                                  width:
                                      MediaQuery.of(context).size.width * .46,
                                  child: AppText.basic('Filter',
                                      color: ColorName.orange,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ])),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 10, top: 8),
              child: Wrap(
                children: [FilteredRestaurantCards()],
              ),
            ),
          ),
          endDrawer: CustomEndDrawer(),
        ),
      ),
    );
  }
}

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                AppText.regular(
                  'Advanced Filter',
                  color: ColorName.orange,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Wrap(
                  spacing: 3,
                  children: [
                    FilterSortEditor(),
                    FilterSortNearby(),
                    FilterSortPopular()
                  ],
                ),
                customDivider(),
                AppText.basic(
                  'Categories',
                ),
                FilterCategory(),
                customDivider(),
                AppText.basic(
                  'Distance',
                ),
                FilterSliderDistance(),
                customDivider(),
                AppText.basic(
                  'Price Range',
                ),
                FilterSliderPrice(),
                customDivider(),
                AppText.basic(
                  'Rating',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: FilterRatings(),
                ),
                customDivider(),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width,
                    child: AppText.basic('Filter',
                        fontWeight: FontWeight.w500, color: ColorName.orange),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class customDivider extends StatelessWidget {
  const customDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 20,
      endIndent: 20,
      thickness: 1,
    );
  }
}
