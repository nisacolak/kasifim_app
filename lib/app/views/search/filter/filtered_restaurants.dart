import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/profile/widget/profile_info.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_category.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_ratings.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_short.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // onEndDrawerChanged: (isOpened) {
      //   if (!isOpened) {
      //     setState(() {});
      //   }
      // },
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: Container(
          //color: ColorName.green,
          child: Row(
            children: [
              BackButton(
                color: ColorName.black,
              ),
              SizedBox(),
              Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .04,
                decoration: BoxDecoration(
                  color: ColorName.orange.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ActionChip(
                      onPressed: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                      backgroundColor: ColorName.orange,
                      avatar: Icon(
                        Icons.tune_sharp,
                        color: ColorName.white,
                        size: 18,
                      ),
                      labelPadding: EdgeInsets.only(right: 2),
                      label: Text(
                        'Filter',
                        style: TextStyle(color: ColorName.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Wrap(
          children: [],
        ),
      ),
      endDrawer: CustomEndDrawer(),
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
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Advanced Filter',
                  style: TextStyle(color: ColorName.orange),
                ),
                Wrap(
                  spacing: 5,
                  children: [
                    FilterShortEditor(),
                    FilterShortNearby(),
                    FilterShortPopular()
                  ],
                ),

                Text(
                  'Categories',
                  style: TextStyle(fontSize: 16),
                ),
                FilterCategory(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Distance',
                  style: TextStyle(fontSize: 16),
                ),

                FilterSliderDistance(),
                customDivider(),
                Text(
                  'Price Range',
                  style: TextStyle(fontSize: 16),
                ),
                FilterSliderPrice(),
                customDivider(),
                buildSpace(),
                Text('Rating', style: TextStyle(fontSize: 16)),
                FilterRatings(),
                customDivider(),
                Container(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width,
                  color: ColorName.green,
                )
                // ListTile(
                //   title: Text('Screen 1'),
                //   onTap: () {
                //     // Go to Screen 1
                //   },
                // ),
                // ListTile(
                //   title: Text('Screen 2'),
                //   onTap: () {
                //     // Go to Screen 2
                //   },
                // ),
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

class FilteredSearchBox extends StatelessWidget {
  FilteredSearchBox({super.key});
  TextEditingController homeSearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.orange,
    );
  }
}
